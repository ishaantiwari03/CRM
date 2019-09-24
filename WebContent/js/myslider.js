// JavaScript Document
$(document).ready(function(e) {
		alert('aa1');
	var pos=0;
	var w=$('#slider>div:first').width();
	var c=$('#slider>div').length;
	console.log(w);
	console.log(c);
	var tw=w*c;
	$('#slider').width(tw);
	
	var flag=true;	
	setInterval(function() { 
	alert('aa');
		if(flag){
			pos=pos-w;
			$('#slider').animate({left:pos},1000);
		}
		if(!flag){
			pos=pos+w;
		$('#slider').animate({left:pos},1000);
			}
			
			if(pos==-1*(w*(c-1))){
				flag=false;
				}
			if(pos==0){
				flag=true;
			}
		},5000);
});