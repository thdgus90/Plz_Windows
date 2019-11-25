<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	
	<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">


  </script>

	
	<body class="is-preload"  onload="javascript:All_copy();">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				
					
					<!-- Intro -->
					<!-- <div id="intro">
					</div> -->
	<div id="Context">
			<nav id="nav" style="margin: 3rem auto 0 auto;">
							<ul class="links">
							<li ><a href="javascript:a();">최신게임</a></li>
							<li><a href="javascript:b();">인기게임</a></li>
							<li class="active"><a href="javascript:c();">할인중인 게임</a></li>
						</ul>
						<!-- <ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul> -->
					</nav>
					
					<!-- Ajax를 이용한 페이지 새로고침 하지 않고 내용물 추가 -->
				
			</div>
				<div id="main">
					<!-- --------------------------------------------------------------------------------------------  -->
						<!-- Posts -->
							<section class="posts">
							
							<c:if test="${itemList.count==0}">
								<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
								   <tr>
								        <td align="center">할인중인 게임이 없습니다.</td>
								   </tr>
								</table>
								
							</c:if>
							
							<c:if test="${itemList.count > 0}">
								<c:forEach var="item" items="${itemList}">
							
									<article>
										<header>
											<span class="date">${item.pack_date}</span>
											<h2><a href="#">${item.pack_name}<br />
											${item.pack_detail1}</a></h2>
										</header>
										<a href="#" class="image fit"><img src="images/${item.pack_img1}" alt="" /></a>
										<p>${item.pack_detail2}</p>
										<ul class="actions special">
											<li><a href="ContentPage.jsp" class="button">-상세 보기-</a></li>
										</ul>
									</article>
								</c:forEach>
							</c:if>
							</section>

						<!-- Footer -->
							<footer>
								<div class="pagination">
								<!--<a href="#" class="previous">Prev</a>-->
									<!-- <a href="#" class="page active">1</a>
									<a href="#" class="page">2</a>
									<a href="#" class="page">3</a>
									<span class="extra">&hellip;</span>
									<a href="#" class="page">8</a>
									<a href="#" class="page">9</a>
									<a href="#" class="page">10</a>
									<a href="#" class="next">Next</a> --> 
								</div>
							</footer>

					</div>

				<!-- Footer -->
				

				<!-- Copyright -->
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/NonRefreshPageMove.js"></script>

	</body>
</html>