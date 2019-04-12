<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="Roobly.*, java.util.*, java.text.SimpleDateFormat" %>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>${title }</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader">
        <div class="yummy-load"></div>
    </div>

    <!-- Background Pattern Swither -->
    <div id="pattern-switcher">
        배경
    </div>
    <div id="patter-close">
        <i class="fa fa-times" aria-hidden="true"></i>
    </div>

    <!-- ****** Top Header Area Start ****** -->
    <div class="top_header_area">
        <div class="container">
            <div class="row">
                <div class="col-5 col-sm-6">
                    <!--  Top Social bar start -->
                    <!-- <div class="top_social_bar">
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    </div> -->
                </div>
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <div class="login_register_area d-flex">
                            <div class="login">
                                <a href="register.html">Sing in</a>
                            </div>
                            <div class="register">
                                <a href="register.html">Sing up</a>
                            </div>
                        </div>
                        <!-- Search Button Area -->
                        <div class="search_button">
                            <a class="searchBtn" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                        <!-- Search Form -->
                        <div class="search-hidden-form">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search-anything" placeholder="Search Anything...">
                                <input type="submit" value="" class="d-none">
                                <span class="searchBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Top Header Area End ****** -->

    <!-- ****** Header Area Start ****** -->
    <header class="header_area">
        <div class="container">
            <div class="row">
                <!-- Logo Area Start -->
                <div class="col-12">
                    <div class="logo_area text-center">
                        <a href="index.html" class="yummy-logo">${title }</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-nav" aria-controls="yummyfood-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                        <!-- Menu Area Start -->
                        <div class="collapse navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                </li>
                               
                                	<c:forEach var="article" items="${articleList}"></c:forEach>
							    		 <li class="nav-item">
                                   			<a class="nav-link" href="./board.jsp?b_num=${article.getB_num()}&url=${url}">${article.getB_title() }</a> <!-- index.jsp 대신 데베에 저장된 게시판 jsp를 가져옴 -->
                           		 		</li>
					
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ****** Header Area End ****** -->

    <!-- ****** Welcome Post Area Start [슬라이드] ****** -->
    <section class="welcome-post-sliders owl-carousel" style="padding-bottom:50px;">
    
    	<%
	    	for(int i = 0; i < 2; i++){ //szie대신에 navList.size()만들어서 추가
	    %>
    	<!-- 작성된 게시글이 없을 때-->
         <div class="welcome-single-slide empty">
         	<!--작성된 게시글이 없습니다. -->
            <img src="http://placehold.it/601x902">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">게시날짜</a>
                    <a href="#">댓글수</a>
                </div>
                <a href="#">
                    <h5>게시글 제목</h5>
                </a>
            </div>
        </div>
		<%}%>
        <!-- Single Slide -->
        <!-- <div class="welcome-single-slide">
            Post Thumb
            <img src="img/bg-img/slide-2.jpg" alt="">
            Overlay Text
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div> -->

        <!-- Single Slide -->
        <!-- <div class="welcome-single-slide">
            Post Thumb
            <img src="img/bg-img/slide-3.jpg" alt="">
            Overlay Text
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div> -->

        <!-- Single Slide -->
        <!-- <div class="welcome-single-slide">
            Post Thumb
            <img src="img/bg-img/slide-4.jpg" alt="">
            Overlay Text
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div> -->

        <!-- Single Slide -->
        <!-- <div class="welcome-single-slide">
            Post Thumb
            <img src="img/bg-img/slide-4.jpg" alt="">
            Overlay Text
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">May 19, 2017</a>
                    <a href="#">5 Comment</a>
                </div>
                <a href="#">
                    <h5>“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street</h5>
                </a>
            </div>
        </div> -->

    </section>
    <!-- ****** Welcome Area End ****** -->

    <!-- ****** Categories Area Start ****** -->
    <!-- <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
                        <img src="img/catagory-img/1.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Food</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
                        <img src="img/catagory-img/2.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Cooking</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
                        <img src="img/catagory-img/3.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>Life Style</h5>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- ****** Categories Area End ****** -->

    <!-- ****** Blog Area Start ****** -->
    <section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">

                        <!-- 작성된 게시글이 없을 때 -->
                        
             
                        <div class="col-12">
                            <div class="single-post wow fadeInUp" data-wow-delay=".2s">
                                    <a href="#">
                                        <h2 class="post-headline">작성된 게시글이 없습니다.</h2>
                                    </a>
                                    <a href="#" class="read-more-sample">글쓰기</a>
                            </div>
                        </div>
                       
						<div class="col-12">
                            <div class="single-post wow fadeInUp" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="http://placehold.it/1350x900">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#">작성자</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#">게시날짜</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h2 class="post-headline">Boil The Kettle And Make A Cup Of Tea Folks, This Is Going To Be A Big One!</h2>
                                    </a>
                                    <p>Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat.</p>
                                    <a href="#" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>
						
					
                       <!-- 작성된 게시글이 없을 때  -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".4s">
                               <!--  Post Thumb
                                <div class="post-thumb">
                                    <img src="http://placehold.it/451x301">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">작성자</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">게시날짜</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- <a href="#"> -->
                                        <h4 class="post-headline">작성된 게시글이 없습니다.</h4>
                                        <a href="#" class="read-more-sample">글쓰기</a>
                                   <!--  </a> -->
                                <!-- </div> -->
                            </div>
                        </div>

                        <!--Single Post
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".6s">
                                Post Thumb
                                <div class="post-thumb">
                                    <img src="http://placehold.it/451x301">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">작성자</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">게시날짜</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">게시글 제목</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        Single Post
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".8s">
                                Post Thumb
                                <div class="post-thumb">
                                   <img src="http://placehold.it/451x301">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">작성자</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">게시날짜</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">게시글 제목</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

                        Single Post
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay="1s">
                                Post Thumb
                                <div class="post-thumb">
                                    <img src="http://placehold.it/451x301">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">작성자</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">게시날짜</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">게시글 제목</h4>
                                    </a>
                                </div>
                            </div>
                        </div> -->
                        
                        </div>
                        </div>
                        
                        <!-- ****** Blog Sidebar ****** -->
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="blog-sidebar mt-5 mt-lg-0">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>블로그 이름</h6>
                            </div>
                            <div class="about-me-widget-thumb">
                                <img src="img/about-img/1.jpg" alt="">
                            </div>
                            <h4 class="font-shadow-into-light">블로거 닉네임</h4>
                            <p>간단한 소개</p>
                        </div>

                        <!-- Single Widget Area -->
                        <!-- <div class="single-widget-area subscribe_widget text-center">
                            <div class="widget-title">
                                <h6>Subscribe &amp; Follow</h6>
                            </div>
                            <div class="subscribe-link">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                            </div>
                        </div> -->

                        <!-- Single Widget Area -->
                        <div class="single-widget-area popular-post-widget">
                            <div class="widget-title text-center">
                                <h6>인기 포스트</h6>
                            </div>
                            
                            <!-- 작성된 게시글이 없을 때--> 
                            <div class="single-populer-post d-flex">
                                <!-- <img src="img/sidebar-img/2.jpg" alt=""> -->
                                <div class="post-content">
                                    <!-- <a href="#"> -->
                                        <h6>작성된 게시글이 없습니다.</h6>
                                    <!-- </a> -->
                                    <!-- <p>Tuesday, October 3, 2017</p> -->
                                </div>
                            </div>
                            
                           <!-- Single Popular Post
                            <div class="single-populer-post d-flex">
                                <img src="img/sidebar-img/3.jpg" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>Zermatt Unplugged the best festival</h6>
                                    </a>
                                    <p>Tuesday, October 3, 2017</p>
                                </div>
                            </div>
                             Single Popular Post 
                            <div class="single-populer-post d-flex">
                                <img src="img/sidebar-img/4.jpg" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>Harrogate's Top 10 Independent Eats</h6>
                                    </a>
                                    <p>Tuesday, October 3, 2017</p>
                                </div>
                            </div>
                            Single Popular Post 
                            <div class="single-populer-post d-flex">
                                <img src="img/sidebar-img/5.jpg" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>Eating Out On A Budget In Oxford</h6>
                                    </a>
                                    <p>Tuesday, October 3, 2017</p>
                                </div>
                            </div>
                            Single Popular Post
                            <div class="single-populer-post d-flex">
                                <img src="img/sidebar-img/5.jpg" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>Eating Out On A Budget In Oxford</h6>
                                    </a>
                                    <p>Tuesday, October 3, 2017</p>
                                </div>
                            </div>
                             Single Popular Post
                            <div class="single-populer-post d-flex">
                                <img src="img/sidebar-img/5.jpg" alt="">
                                <div class="post-content">
                                    <a href="#">
                                        <h6>Eating Out On A Budget In Oxford</h6>
                                    </a>
                                    <p>Tuesday, October 3, 2017</p>
                                </div>
                            </div> -->
                            
                        </div>

                        <!-- Single Widget Area -->
                        <!-- <div class="single-widget-area add-widget text-center">
                            <div class="add-widget-area">
                                <img src="img/sidebar-img/6.jpg" alt="">
                                <div class="add-text">
                                    <div class="yummy-table">
                                        <div class="yummy-table-cell">
                                            <h2>Cooking Book</h2>
                                            <p>Buy Book Online Now!</p>
                                            <a href="#" class="add-btn">Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                        <!-- Single Widget Area -->
                       <!--  <div class="single-widget-area newsletter-widget">
                            <div class="widget-title text-center">
                                <h6>Newsletter</h6>
                            </div>
                            <p>Subscribe our newsletter gor get notification about new updates, information discount, etc.</p>
                            <div class="newsletter-form">
                                <form action="#" method="post">
                                    <input type="email" name="newsletter-email" id="email" placeholder="Your email">
                                    <button type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                </form>
                            </div>
                        </div> -->
                        
                        
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- ****** Blog Area End ****** -->

                        <!-- ******* List Blog Area Start (제목+내용) 가로로 ******* -->

						<section class="blog_area section_padding_0_80">
					        <div class="container">
					            <div class="row justify-content-center">
					                <div class="col-12 col-lg-12">
					                    <div class="row">

                        <!-- 작성된 게시글이 없을 때 -->
                        <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <!-- <div class="post-thumb">
                                    <img src="img/blog-img/6.jpg" alt="">
                                </div> -->
                                <!-- Post Content -->
                                <div class="post-content">
                                    <!-- <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">By Marian</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- <a href="#"> -->
                                        <h4 class="post-headline">작성된 게시글이 없습니다.</h4>
                                    <!-- </a> -->
                                    <!-- <p>Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p> -->
                                    <a href="#" class="read-more-sample">글쓰기</a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Post -->
                        <!-- <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".4s">
                                Post Thumb
                                <div class="post-thumb">
                                    <img src="img/blog-img/7.jpg" alt="">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">By Marian</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">How To Get a Narcissist to Feel Empathy</h4>
                                    </a>
                                    <p>Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                                    <a href="#" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>

                        Single Post
                        <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".6s">
                                Post Thumb
                                <div class="post-thumb">
                                    <img src="img/blog-img/8.jpg" alt="">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">By Marian</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">Bristol's 10 Amazing Weekend Brunches And Late Breakfasts</h4>
                                    </a>
                                    <p>Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                                    <a href="#" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>

                        Single Post
                        <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".8s">
                                Post Thumb
                                <div class="post-thumb">
                                    <img src="img/blog-img/9.jpg" alt="">
                                </div>
                                Post Content
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            Post Author
                                            <div class="post-author">
                                                <a href="#">By Marian</a>
                                            </div>
                                            Post Date
                                            <div class="post-date">
                                                <a href="#">May 19, 2017</a>
                                            </div>
                                        </div>
                                        Post Comment & Share Area
                                        <div class="post-comment-share-area d-flex">
                                            Post Favourite
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            Post Comments
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            Post Share
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                        <h4 class="post-headline">10 Of The Best Places To Eat In Liverpool, England</h4>
                                    </a>
                                    <p>Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                                    <a href="#" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div> -->

                    </div>
                   </div>
                   </div>
                   </div>
                   </section>


    <!-- ****** Instagram Area Start ****** -->
    <!-- <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/1.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/2.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/3.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/4.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/5.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/6.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/1.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        Instagram Item
        <div class="instagram_gallery_item">
            Instagram Thumb
            <img src="img/instagram-img/2.jpg" alt="">
            Hover
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div> -->
    <!-- ****** Our Creative Portfolio Area End ****** -->

    <!-- ****** Footer Social Icon Area Start ****** -->
    <!-- <div class="social_icon_area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-social-area d-flex">
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>facebook</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>GOOGLE+</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i><span>linkedin</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i><span>VIMEO</span></a>
                        </div>
                        <div class="single-icon">
                            <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i><span>YOUTUBE</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- ****** Footer Social Icon Area End ****** -->

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <div class="footer-logo-area text-center">
                            <a href="index.html" class="yummy-logo">Yummy Blog</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="#">Features</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Categories</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Archive</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contact</a>
                                    </li> -->
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Copywrite Text -->
                    <div class="copy_right_text text-center">
                        <p>Copyright @2018 All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- ****** Footer Menu Area End ****** -->

    <!-- Jquery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>
</body>
