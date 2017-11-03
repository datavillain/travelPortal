<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RollingPage</title>
<style>
	* {
		margin:0;
		padding:0;
	}
	
	img{
		border:none;
	}

	/* Hover styles */
	
	#phoneCarousel .arrow:hover {
		background-position:left bottom;
	}
	
	#phoneCarousel .next:hover {
		background-position:right bottom;
	}
	
	#stage {
		position:absolute;
		width:600px;
		height:300px;;
	}
	
	#stage img{
		display:none;
		border:3px silver solid; 
		border-radius:10px;
		box-shadow: 10px 10px 10px #8b8687;
	}
	
	#stage .default{
		display:block;
		left:50%;
		margin: 0 auto;
		position:absolute;
	}
	
	#stage .animationReady {
		/* This class is assigned to the images on load */
		display:block;
		position:absolute;
		top:0;
		left:0;
	}
	
	a, a:visited {
		text-decoration:none;
		outline:none;
	}
	
	a:hover{
		text-decoration:underline;
	}
	a img{
		border:none;
	}
	
	#imgCarousel .arrow {
		width: 44px;
		height: 44px;
		background: url('img/arrows.png') no-repeat;
		position: absolute;
		top: 80%;
		margin-top: -22px;
		left: 0;
		cursor: pointer;
		box-shadow: 5px 5px 5px #8b8687;
		border-radius: 100%;
	}
	#imgCarousel .next { 
		background-position: right top;
		left: auto;
		right: 0;
	}
	#imgCarousel .arrow:hover {
		background-position: left bottom;
	}
	#imgCarousel .next:hover {
		background-position:right bottom;
	}
	
	#imgCarousel {
		width: 600px;
		height: 300px;
	}
	
	
	
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	var deg=0;
	var	auto=true;    
	var opacity=0.5;  
	var yy=20;       
	var xx=500;      

	var images	= $('#stage img').removeClass('default').addClass('animationReady');
	var dim		= { width:images.width(),height:images.height()};
	var cnt = images.length;
	var centerX = $('#stage').width()/2;
	var centerY = $('#stage').height()/2 - dim.height/2;

	function rotate(step,total){
		deg+=step;
		var eSin,eCos,newWidth,newHeight,q;
		
		for(var i=0;i<cnt;i++){
			q = ((360/cnt)*i+deg)*Math.PI/180;
			eSin		= Math.sin(q);
			eCos		= Math.cos(q);
			q = (0.6+eSin*0.4);
			newWidth	= q*dim.width;
			newHeight	= q*dim.height;
			
			images.eq(i).css({
				top			: centerY+yy*eSin,
				left		: centerX+230*eCos,
				opacity		: 0.8+eSin*opacity,
				marginLeft	: -newWidth/2,
				zIndex		: Math.round(40+eSin*20)
			}).width(newWidth).height(newHeight);
		}

		total-=Math.abs(step);
		if(total<=0) return false;
		
		setTimeout(function(){rotate(step,total)},40);
	}
	
	rotate(-10,360/cnt);

	var turnLeft = function(){
		if(auto) autoStop();
		rotate(-10,360/cnt);
		if(auto) autoPlay();
	};
	var turnRight = function(){
		if(auto) autoStop();
		rotate(10,360/cnt);
		if(auto) autoPlay();
	};


	$('#imgCarousel .previous').click( turnRight );
	$('#imgCarousel .next').click( turnLeft );

	var autoPlay = function(){
	  _itv = window.setInterval(turnLeft, 1500);  
	};
	var autoStop = function(){
		window.clearInterval(_itv);
	};

	if(auto) autoPlay();
});



</script>

</head>

<body>

    <div id="imgCarousel">
    
        <div id="stage">
    	<div class="previous arrow"></div>
        <div class="next arrow"></div>
            <a href="#"><img id="img01" class="default" src="img/thumbs.jpg" width="217" height="217" alt="추천상품" /></a>
            <a href="#"><img id="img02" src="img/couple.JPG" width="217" height="217" alt="커플상품" /></a>
            <a href="#"><img id="img03" src="img/fam.JPG" width="217" height="217" alt="가족상품" /></a>
            <a href="#"><img id="img04" src="img/pack.JPG" width="217" height="217" alt="베낭여행상품" /></a>
            <a href="#"><img id="img05" src="img/gives.JPG" width="217" height="217" alt="기념품/특산물" /></a>
			<a href="#"><img id="img06" src="img/festa.JPG" width="217" height="217" alt="축제/기념" /></a>
 		</div>
    </div>


</body>
</html>