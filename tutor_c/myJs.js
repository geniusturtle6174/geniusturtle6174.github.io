function emailDisplay(){
	document.write(arguments[0]+"@");
	for(var i=1;i<arguments.length-1;i++){
		document.write(arguments[i]+".");
	}
	document.write(arguments[arguments.length-1]);
}
