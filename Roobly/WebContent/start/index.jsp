<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>ROOBLY</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
	.submit_login{width: 750px;}
	
</style>

</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo">
				<span class="icon fa-diamond"></span>
			</div>
			<div class="content">
				<div class="inner">
					<h1>ROOBLY</h1>
					<p>
						Create your blog right now.
					</p>
				</div>
			</div>
			<nav>
				<ul>
					<li><a href="#intro">소개</a></li>
					<li><a href="../main/index.html">홈페이지</a></li>
					<li><a href="#login">로그인</a></li>
					<li><a href="#" class="searchBtn" id="searchBtn"><i class="fa fa-search"></i></a></li>
					<!--<li><a href="#elements">Elements</a></li>-->
				</ul>
				<div class="search-box" id="search-box">
			<input type="text">
		</div>
			</nav>
			
		</header>
		
		

		<!-- Main -->
		<div id="main">

			<!-- Intro -->
			<article id="intro">
				<h2 class="major">Intro</h2>
				<span class="image main"><img src="images/pic01.jpg" alt="" /></span>
				<p>
					Aenean ornare velit lacus, ac varius enim ullamcorper eu. Proin
					aliquam facilisis ante interdum congue. Integer mollis, nisl amet
					convallis, porttitor magna ullamcorper, amet egestas mauris. Ut
					magna finibus nisi nec lacinia. Nam maximus erat id euismod
					egestas. By the way, check out my <a href="#work">awesome work</a>.
				</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
					dapibus rutrum facilisis. Class aptent taciti sociosqu ad litora
					torquent per conubia nostra, per inceptos himenaeos. Etiam
					tristique libero eu nibh porttitor fermentum. Nullam venenatis erat
					id vehicula viverra. Nunc ultrices eros ut ultricies condimentum.
					Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae
					dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in
					lectus. Pellentesque habitant morbi tristique senectus et netus et
					malesuada fames ac turpis egestas. In non lorem sit amet elit
					placerat maximus. Pellentesque aliquam maximus risus, vel sed
					vehicula.</p>
			</article>			

			<!-- 로그인 -->
			<article id="login">
				<h2 class="major">Login</h2>
				<form method="post" action="#">
						<div class="field half">
							<label for="demo-id">ID</label>
							<input type="text" name="demo-id" id="demo-id" value="" placeholder="아이디" />
						</div>
						<br/>
						<div class="field half">
							<label for="demo-password">Password</label>
							<input type="password" name="demo-password" id="demo-password" value="" placeholder="비밀번호" />
						</div>
					<br />
					<ul class="actions">
						<li><input type="submit" value="Login" class="primary submit_login" /></li>
					</ul>
					<br/>
					<header>
					<nav>
						<a href="#find">아이디/비밀번호 찾기</a>
						<a href="#join" class="pull-right">회원가입</a>
					</nav>
					</header>
				</form>
			</article>
			
			<!-- 아이디 비밀번호 찾기 -->
			<article id="find">
				<h2 class="major">아이디 or 비밀번호 찾기</h2>
					<a href="#find_id"><input type="button" value="아이디 찾기" class="primary submit_login" /></a><p><br>
					<a href="#find_pw"><input type="button" value="비밀번호 찾기" class="primary submit_login" /></a>
			</article>
			
			<article id="find_id">
				<h2 class="major">아이디 찾기</h2>
				<form method="post" action="#">
					<label>이메일</label>
					<input type="email"/><br>
					<input type="button" value="찾기" class="primary submit_login" />
				</form>
			</article>
			
			<article id="find_pw">
				<h2 class="major">비밀번호 찾기</h2>
				<form method="post" action="#">
					<label>아이디</label>
					<input type="text"/><br>
					<label>이메일</label>
					<input type="email"/><br>
					<input type="button" value="찾기" class="primary submit_login" />
				</form>
			</article>
			
			<!-- 회원가입 -->
		<article id="join">
				<h2 class="major">회원가입</h2>
				<form name="regForm" method="post" action="#regComplete">
					<table width="700" height="600" cellpadding="0"
						style="border-collapse: collapse; font-size: 9pt;">
						<tr class="register" height="30">
							<td width="15%"><label for="demo-id">아이디</label></td>
							<td><input type="text" name="wUserID" placeholder="아이디"/>&nbsp;<label for="demo-id-check"><a
								href="javascript:idCheck(this.form.wUserID.value)">[아이디 중복 검사]</a></label>
								<label id="ducheck"></label>
								<input type="hidden" name="wIdConfirm" value="0"/></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-password">비밀번호</label></td>
							<td><input type="password" name="wUserPW" id="pw"
								onchange="isSame()" placeholder="비밀번호" /></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-password">비밀번호 확인</label></td>
							<td><input type="password" name="wUserPWConfirm"
								id="pwCheck" onchange="isSame()" placeholder="비밀번호 확인"/>&nbsp;&nbsp;<span id="same"></span></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-name">이 름</label></td>
							<td><input type="text" name="wUserName" placeholder="이름"/></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-gender">성 별</label></td> 
							<td><input type="radio" id="demo-priority-man" name="demo-priority" value="1" />
									<label for="demo-priority-man">남 성</label>&nbsp;
									<input type="radio" id="demo-priority-women" name="demo-priority" value="2" />
									<label for="demo-priority-women">여 성</label>
							</td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-nick">별 명 (Nickname)</label></td>
							<td><input type="text" name="wUserNick" placeholder="닉네임"/></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-email">이메일</label></td>
							<td><input type="email" name="wUserEmail" placeholder="jane@untitled.tld"/></td>
						</tr>
						<tr class="register" height="30">
							<td width="15%"><label for="demo-phone">휴대전화 ( -(하이픈) 없이 기입)</label></td>
							<td><input type="tel" name="wUserCellPhone" placeholder="phone"/></td>
						</tr>
						<tr>
							<td width="15%"><label for="demo-addr">주 소</label></td>
							<td><input type="text" size="10" name="wPostCode"
								id="postcode" placeholder="우편번호" readonly="readonly"
								onClick="zipCheck()"> <input type="button"
								onClick="zipCheck()" value="우편번호 찾기" class="primary"><br>
							<br /> <input type="text" size="30" name="wRoadAddress"
								id="roadAddress" placeholder="주소" readonly="readonly"
								onclick="DaumPostcode()"> <input type="text" size="30"
								name="wJibunAddress" id="jibunAddress" placeholder="지번주소"
								readonly="readonly" onclick="DaumPostcode()"> <br />
							<span id="guide" style="color: #999; font-size: 10px;"></span> <br />
							<br />
							<input type="text" name="wRestAddress" placeholder="나머지 주소"
								size="70" /></td>
						</tr>
						<tr>
							<td width="15%"><label for="demo-email">질문</label></td>
							<td>
								<select name="wQuestion">
									<option value="1">기억에 남는 추억의 장소는?</option>
									<option value="2">자신의 인생 좌우명은?</option>
									<option value="3">자신의 보물 제1호는?</option>
									<option value="4">가장 기억에 남는 선생님 성함은?</option>
									<option value="5">타인이 모르는 자신만의 신체비밀이 있다면?</option>
									<option value="6">유년시절 가장 생각나는 친구 이름은?</option>
									<option value="7">인상 깊게 읽은 책 이름은?</option>
									<option value="8">자신이 두번째로 존경하는 인물은?</option>
									<option value="9">다시 태어나면 되고 싶은 것은?</option>
								</select><br/>
								<input type="text" name="wAnswer" placeholder="답변"/></td>
							</td>
						</tr>

					</table>
					<br />
					<ul class="actions">
						<li><input type="button" value="회원가입" class="primary" onClick="inputCheck()"/></li>
					</ul>
				</form>
			</article>

			<article id="regComplete">
				<h2 class="major">회원가입을 축하드립니다.</h2>
			</article>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<p class="copyright">
				&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
			</p>
		</footer>

	</div>

	<!-- BG -->
	<div id="bg"></div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
<script>
	$(function(){
		$("#searchBtn").click(function(){
			$("#search-box").toggle();
			$("input[type='text']").focus();
		})
	})
</script>
</html>
