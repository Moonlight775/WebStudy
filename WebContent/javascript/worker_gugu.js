/**
 * worker를 사용한 구구단
 */

var str='';
var dan = 5;
for(var i=1; i<10; i++){
	str += dan + '*' + i + ' = ' + (dna*i) + '<br/>';
	for(var j=0; j<999999; j++){}
	postMessage(str);
}
