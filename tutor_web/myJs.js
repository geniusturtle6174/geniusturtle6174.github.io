function emailDisplay(){
	document.write(arguments[0]+"@");
	for(var i=1;i<arguments.length-1;i++){
		document.write(arguments[i]+".");
	}
	document.write(arguments[arguments.length-1]);
}

function showWarning(msg){
	document.write('<p align="center" style="background:#ffa;padding:5px">' + msg + '</p>');
}

function Gol_D_Roger(chapters, isPartial=false){
	msg = '本篇';
	if(isPartial){
		msg += '部分';
	}
	msg += '內容相當於 <a href=\"http://www.books.com.tw/products/0010585999\">JavaScript 程式設計與應用</a> 中的第 ';
	for(var i=0;i<chapters.length-1;i++){
		msg += chapters[i] + ', ';
	}
	msg += chapters[i] + ' 章節</p>';
	showWarning(msg);
}
