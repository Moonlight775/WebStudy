package gb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import kr.jobtc.json.DBconn;

public class GuestBookDao {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Connection conn;
	public GuestBookDao() {
		conn = new DBconn().getConn();
	}
	public List<GuestBookVo> select(){
		List<GuestBookVo> list = new ArrayList<GuestBookVo>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select serial, mid, to_char(nal, 'rrrr-mm-dd') nal , doc, bgcolor from guestbook order by serial desc ";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				GuestBookVo vo = new GuestBookVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setMid(rs.getString("mid"));
				vo.setNal(rs.getString("nal"));
				vo.setDoc(rs.getString("doc"));
				vo.setBgcolor(rs.getString("bgcolor"));
				
				list.add(vo);
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	public int insert(GuestBookVo vo) {
		int r = 0;
		PreparedStatement ps = null;
		String sql = "insert into guestbook(serial, mid, nal, doc, bgcolor) "
				   + " values(seq_gb.nextval, ?, ?, ?, ? )";
		try {
			conn.setAutoCommit(false);
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getNal() );
			ps.setString(3,  vo.getDoc());
			ps.setString(4, vo.getBgcolor());
			
			r = ps.executeUpdate();
			if(r>0) {
				conn.commit();
			}else {
				conn.rollback();
			}
			ps.close();
			conn.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return r;
		
	}
	
	// serial을 기준으로 update(doc만 수정)
	public int update(GuestBookVo vo) {
		int r = 0;
		PreparedStatement ps = null;
		String sql = "update guestbook set doc=? , bgcolor=? where serial=?";
		try {
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getDoc());
			ps.setString(2, vo.getBgcolor());
			ps.setInt(3, vo.getSerial());
			
			r = ps.executeUpdate();
			if(r>0) {
				conn.commit();
			}else {
				conn.rollback();
			}
			
			ps.close();
			conn.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return r;
		
		
	}
	public int delete(GuestBookVo vo) {
		int r = 0;
		PreparedStatement ps = null;
		String sql = "delete from guestbook where serial=? ";
		try {
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getSerial());
			r = ps.executeUpdate();
			
			if(r>0) {
				conn.commit();
			}else {
				conn.rollback();
			}
			
			ps.close();
			conn.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return r;
		
	}
	
}
