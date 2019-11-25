<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>문의하기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/QnA.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/css/notice.css" rel="stylesheet">
		<link href="assets/css/questionwrite.css" rel="stylesheet">
		
		<link rel="stylesheet" href="PlzWindowShop/assets/css/QnA.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/notice.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/questionwrite.css" />
	
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="/Plz_Windows/PlzWindowShop/main.jsp" class="logo">문의하기</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="/Plz_Windows/PlzWindowShop/main.jsp">메인페이지</a></li>
							<li><a href="/Plz_Windows/PlzWindowShop/MainShop.jsp">상점</a></li>
							<li><a href="/Plz_Windows/PlzWindowShop/FreeBoard.jsp">자유게시판</a></li>
							<li class="active"><a href="/Plz_Windows/PlzWindowShop/Notice.jsp">고객지원</a></li>
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<section id="searchboard">
							<header class="major">
								<h3 style="padding-top:27px;">문의하기</h3>
								<form class="navbar-form navbar-right" id="boardsearchform" role="search" method="post" action="/Plz_Windows/question.do">
								<select id="search" name="keyField">
								      <option value="quest_title">제목</option>
								      <option value="quest_content">내용</option>
								      <option value="quest_writer">작성자</option>
								      <option value="all">전체</option>
								   </select>
									<div class="form-group">
										<input type="text" class="form-control" name="keyWord" id="boardsearch" placeholder="       검색어 입력">
										<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
									</div>
									
								</form>
							</header>
						</section>

<!--side Lists -->
<!-- <div class="row">
	<div class="col-md-3" id="gesilink">
		<li class="gogek">고객지원</li>
		<hr>
		<ul id="gesilink">

			<li><a href="#">공지사항</a></li>
			<li><a href="#">자주묻는질문</a></li>
			<li><a href="#">1:1문의하기</a></li>
		</ul>
	</div> -->

	
		
		<div class="row">
		<div class="col-md-3 panel panel-info " id="gesilink">
			<div class="panel-heading">
				<h3 class="panel-title">고객지원</h3>
			</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="/Plz_Windows/PlzWindowShop/Notice.jsp">공지사항</a></li>
				<li class="list-group-item"><a href="/Plz_Windows/PlzWindowShop/QnA.jsp">자주묻는질문</a></li>
				<li class="list-group-item"><a href="/Plz_Windows/question.do">1:1문의하기</a></li>
			</ul>
		</div>

					<!-- 본문메뉴 -->
			<div class="col-md-9">
					<ul class="nav nav-tabs nav-justified" id="gesilink">
						  <li><a href="/Plz_Windows/PlzWindowShop/Notice.jsp">공지사항</a></li>
						  <li><a href="/Plz_Windows/PlzWindowShop/QnA.jsp">자주묻는질문</a></li>
						  <li class="active"><a href="/Plz_Windows/question.do">1:1문의하기</a></li>
					</ul>
		<br>
		
		
		<!-- Q&A -->

		<div class="panel-group" id="accordion">

			<b>글목록(전체 글:${count})</b>
			
			<!-- 데이터의 유무  -->
<c:if test="${count==0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center">
   <tr>
        <td align="center">게시판에 저장된 글이 없습니다.</td>
   </tr>
</table>
</c:if>

<c:if test="${count > 0}">
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center" class="questiontable"> 
    <tr height="30" bgcolor="#b0e0e6"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td>
    </tr>
    
    <!-- 실질적으로 레코드를 출력시켜주는 부분 -->
    <c:forEach var="article" items="${list}">
   <tr height="30"  onmouseover="this.style.backgroundColor='#e0ffff'"  
                            onmouseout="this.style.backgroundColor='white'"><!-- 하나씩 감소하면서 출력하는 게시물번호 -->
    <td align="center"  width="50" >
          <c:out value="${article.quest_number}" />
    </td>
    
    
    
<!-- 답변글인 경우 먼저 답변이미지를 부착시키는 코드  -->
	<td  width="250"  align=center>
	<c:if test="${article.re_level != 0}">
	  <img src="images/level.gif" width="${7*article.re_level}" height="16" alt=""/>
	  <img src="images/re.jpg" alt=""/>
    </c:if>
    <c:if test="${article.re_level==0}">
	  <img src="images/level.gif" width="${7*article.re_level}" height="16" alt=""/>
	    <!-- num(게시물번호),pageNum(페이지번호)  -->
	   </c:if>     
      <a href="/Plz_Windows/questioncontent.do?num=${article.quest_number}&pageNum=${pgList.currentPage}">
           ${article.quest_title}
           </a> 
         
         <c:if test="${article.readcount >=20}">
         <img src="images/hot.gif" border="0"  height="16">
         </c:if>
          </td>
    <td align="center"  width="100"> 
       <a href="#">${article.quest_writer}</a></td>
    <td align="center"  width="150">
        
		<fmt:formatDate value="${article.quest_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
    </td>
    <td align="center"  width="50">${article.readcount}</td>
  </tr>
   </c:forEach>
</table>
</c:if>
    
    
    <!-- 페이징 처리  -->
<center>
<div class="pagination">
<c:if test="${pgList.startPage > pgList.blockSize}">
	<a class="previous" href="/Plz_Windows/question.do?pageNum=${pgList.startPage-pgList.blockSize}&keyField=${keyField}&keyWord=${keyWord}">[이전]</a>
</c:if>

<c:forEach var="i" begin="${pgList.startPage}" end="${pgList.endPage}">
	<a class="page active" href="/Plz_Windows/question.do?pageNum=${i}&keyField=${keyField}&keyWord=${keyWord}">
	   <c:if test="${pgList.currentPage==i}">
	          <font color="red"><b>[${i}]</b></font>
	   </c:if>
	   <c:if test="${pgList.currentPage!=i}">
	          ${i}
	   </c:if>
	</a>
</c:forEach>

<c:if test="${pgList.endPage < pgList.pageCount}">
	<a class="next" href="/Plz_Windows/question.do?pageNum=${pgList.startPage+pgList.blockSize}&keyField=${keyField}&keyWord=${keyWord}">[다음]</a> 
</c:if>
    </div>
    </center>
<!--    <tr height="30"> -->
<!--     <td align="center"  width="50" >1</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            상품관련 문의합니다.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">홍길동</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >2</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다2.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >3</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다3.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >4</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다4.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >5</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다5.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >6</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다6.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >7</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다7.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >8</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다8.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >9</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다9.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!--   <tr height="30"> -->
<!--     <td align="center"  width="50" >10</td> -->
<!--     <td  width="250" >           -->
<!--       <a href="Questioncontent.jsp?num=3&pageNum=1"> -->
<!--            문의합니다10.</a>  -->
<!--      </td> -->
<!--     <td align="center"  width="100">  -->
<!--        <a href="mailto:nup49rok1@empal.com">java</a></td> -->
<!--     <td align="center"  width="150">2007/11/22</td> -->
<!--     <td align="center"  width="50">5</td> -->
<!--   </tr> -->
<!-- </table> -->




<div class="btnWrite">
	<button id="btn_write" onclick="location.href='/Plz_Windows/writeForm.do'">글쓰기</button>
</div>
<%-- 						<center> --%>
<!-- 								<div class="pagination"> -->
<!-- 								<a href="#" class="previous">Prev</a> -->
<!-- 									<a href="#" class="page active">1</a> -->
<!-- 									<a href="#" class="page">2</a> -->
<!-- 									<a href="#" class="page">3</a> -->
<!-- 									<span class="extra">&hellip;</span> -->
<!-- 									<a href="#" class="page">8</a> -->
<!-- 									<a href="#" class="page">9</a> -->
<!-- 									<a href="#" class="page">10</a> -->
<!-- 									<a href="#" class="next">Next</a>  -->
<!-- 								</div> -->
<%-- 							</center> --%>

<!-- Q&A마무리 -->			

				
			</div>	
		</div>
	
	</div>
	</div>
	
	<div id="copyright">
						<ul><li>&copy; plzWindow</li><li>Design: <a href="#">plzWindow</a></li></ul>
			
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

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="assets/js/bootstrap.min.js"></script>
    </div>
	</body>
</html>