<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Webeporjct.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/slidernav.js"></script>
<script type="text/javascript" src="js/ui-slider.js"></script>
<script type="text/javascript" src="slides.min.jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/slides.min.jquery.js"></script>
<script type="text/javascript" src="js/jquery.backgroundPosition.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>

<!--[if lte IE 6]>
	<script type="text/javascript" src="supersleight-min.js"></script>
    <link href="css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

</head>

<body>
<div id="main"><!-- Main starts here -->
<div id="header"><!-- Header starts here -->
<%--	<img src="images/topImg.png" alt="" />--%>

                <!-- header slider -->
            <div class="header_slider">        	
        	<div class="slides_container">
            	<div class="slide">
					<div class="slide_image"><img src="images/temp/slider_img_1.png" width="442" height="327" alt=""></div>
					<div class="slide_text">
                    	<p class="slide_title"><strong>Delicious sweets & cake couture</strong></p>
                        <p>Indulge your tastebuds with some of the best sweets in town! From cupcakes to strawberry mousse, we have them all! <a href="menus.html" class="link-more">FIND OUT MORE!</a></p>
                  </div>
			  	</div>
                
                <div class="slide">
					<div class="slide_image"><img src="images/temp/slider_img_2.png" width="442" height="327" alt=""></div>
					<div class="slide_text">
                    	<p class="slide_title"><strong>Fresh grinded coffee & hot drinks</strong></p>
                        <p>Gourmet coffee grinded from only the most tasty beans on earth, selected for a great mixture of fresh and exotic taste! <a href="menus.html" class="link-more">FIND OUT MORE!</a></p>
                  </div>
			  	</div>
                
                <div class="slide">
					<div class="slide_image"><img src="images/temp/slider_img_3.png" width="442" height="327" alt=""></div>
					<div class="slide_text">
                    	<p class="slide_title"><strong>Cocktails & alcoholic drinks</strong></p>
                        <p>We’ve also got a wide range of large alcoholic cocktails and strong drinks, served cold as ice! For more details, <a href="menus.html" class="link-more">FIND OUT MORE!</a></p>
                  </div>
			  	</div>
                
                <div class="slide">
					<div class="slide_image"><img src="images/temp/slider_img_4.png" width="442" height="327" alt=""></div>
					<div class="slide_text">
                    	<p class="slide_title"><strong>World famous Club Sandwich</strong></p>
                        <p>Tasty snack that will make you wonder how it was made. Make no mistake: <br>
this is not your regular Club Sandwich! <a href="#" class="link-more">FIND OUT MORE!</a></p>
                  </div>
			  	</div>
                
                <div class="slide">
					<div class="slide_image"><img src="images/temp/slider_img_5.png" width="442" height="327" alt=""></div>
					<div class="slide_text">
                    	<p class="slide_title"><strong>Soft Drinks & Sweet Cocktails</strong></p>
                        <p>We’ve also got a wide range of non-alcoholic cocktails and strong drinks, served cold as ice! For more details, <a href="menus.html" class="link-more">FIND OUT MORE!</a></p>
                  </div>
			  	</div>
                                
          	</div>
            
            <script type="text/javascript">
                jQuery(document).ready(function ($) {
                    $('.header_slider').slides({
                        play: 4000,
                        pause: 3500,
                        hoverPause: true,
                        generateNextPrev: true,
                        slideSpeed: 700,
                        slideEasing: 'easeOutCubic'
                    });
                    $('.header_slider .pagination li a').text(function (i, txt) { var c = parseInt(txt, 10); return (c < 10) ? "0" + c : c; });
                });
			</script>
          
        </div>
        <!--/ header slider -->
</div><!-- Header ends here -->
<div id="navigation">
<ul>
	<li class="first"><a href="#" title="">Home</a></li>
	<li><a href="#" title="">ABOUT</a></li>
	<li><a href="#" title="" >CONTACT</a></li>
	<li><a href="#" title="">LOGIN</a></li>
	<li><a href="#" title="">REGISTER </a></li>
	<li><a href="#" title="">SERVICE</a></li>
</ul>
</div>
<div id="contentHolder"><!-- Content Holder starts here -->
<div id="content"><!-- Content starts here -->
<div id="back">


<div class="clear"></div>

<div id="leftpart">
	<div class="container">
    <h1>MENU</h1>
    <ul>
    	<li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
        <li><a href="#">LINK 1</a></li>
    </ul>
    <div class="button"><input type="button" value="learn more" class="learnmore" /></div>
    </div>
</div>

<div id="middlepart">  <%--noi dung chinh--%>
	<img src="images/img01.jpg" alt="" />
    <p>noi dung chinh se viet vao day</p>
</div>

<div id="rightpart">
	<div class="container">
    <h1>quang cao hay cai gi do</h1>
	<div class="wind1"><input type="button" value="learn more" class="learnmore" /></div>
</div>

<div class="space"></div>

	<div class="container">
    <h1>cot ben phai</h1>

    <div class="wind2"><input type="button" value="learn more" class="learnmore" /></div>
    </div>

</div>

<div class="clear"></div>
<!--<div class="bottomImg"><img src="images/bottomBg.png" alt="" /></div>-->
</div>
</div><!-- Content ends here -->
</div><!-- Content Holder ends here -->
<div class="bottomImg"><img src="images/02.png" alt="" /></div>



<div id="footer"><!-- Footer starts here -->
<div lang="copy">Copyright 2013</div>
<div class="design">Mario Bean</div>
<div class="clear"></div>
</div><!-- Footer ends here -->
</div><!-- Main ends here -->
</body>
</html>

anh sua phat nua nhea
ASDFG
ZXCVBNM
