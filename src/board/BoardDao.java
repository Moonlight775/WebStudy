package board;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybaFactory;

public class BoardDao {
	SqlSession sqlSession;
	
	public BoardDao() {
		try {
			sqlSession = MybaFactory.getFactory().openSession();
			
			if(sqlSession == null) {
				System.out.println("SqlSession 생성 중 오류 발생..");
			}else {
				System.out.println("SqlSession이 정상적으로 생성되었습니다...");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
	}
	
	public List<BoardVo> select(Page page){
		List<BoardVo> list = null;
		
		try {
			int totList = sqlSession.selectOne("board.totList", page.getFindStr());
			//System.out.println("totList : " + totList);
			page.setTotList(totList);
			page.compute();
			
			list = sqlSession.selectList("board.search", page);
			sqlSession.close();
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return list;
	}
	
	public String insert(BoardVo vo) {
		String msg = "OK";
		try {
			int serial = sqlSession.selectOne("board.brd_getSerial");
			vo.setSerial(serial);
			int r = sqlSession.insert("board.brd_insert", vo);
			if(r>0){
				int chkCnt = 0; //첨부파일의 수만큼 실행된 쿼리의 수
				for(BoardAttVo v : vo.getAttList()) {
					v.setPserial(serial);
					chkCnt += sqlSession.insert("board.brdAtt_insert", v);
				}
				if(chkCnt == vo.getAttList().size()) {
					sqlSession.commit();
				}else {
					throw new Exception();
				}
			}else {
				throw new Exception();
			}
			
		}catch(Exception ex) {
			msg = ex.toString();
			ex.printStackTrace();
			sqlSession.rollback();
			
			for(BoardAttVo delVo : vo.getAttList()) {
				File f = new File(BoardFileUpload.saveDir + delVo.getSysAtt());
				if(f.exists()) f.delete();
			}
		}
			sqlSession.close();
			return msg;
	}
	
	
	public String update(BoardVo vo) {
		String msg = "OK";
		try {
			
		}catch(Exception ex) {
			msg = ex.toString();
			ex.printStackTrace();
		}finally{
			sqlSession.close();
			return msg;
		}
	}
	
	public String repl(BoardVo vo) {
		String msg = "OK";
		try {
			
		}catch(Exception ex) {
			msg = ex.toString();
			ex.printStackTrace();
		}finally{
			sqlSession.close();
			return msg;
		}
	}
	
	public static void main(String[] args) {
		new BoardDao();
	}
}
