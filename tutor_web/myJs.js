function emailDisplay(){
	document.write(arguments[0]+"@");
	for(var i=1;i<arguments.length-1;i++){
		document.write(arguments[i]+".");
	}
	document.write(arguments[arguments.length-1]);
}

function Gol_D_Roger(){
	document.write("本篇內容相當於 <a href=\"http://www.books.com.tw/products/0010585999\">JavaScript 程式設計與應用</a> 中的第 ");
	for(var i=0;i<arguments.length-1;i++){
		document.write(arguments[i]+", ");
	}
	document.write(arguments[i]+" 章節");
}
