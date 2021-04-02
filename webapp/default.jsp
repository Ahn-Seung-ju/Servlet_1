<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet 요청하기</title>
</head>
<body>
	<h3>servlet 요청</h3>
	<h3>getContextPath</h3>
	<%= request.getContextPath() %><hr>
	<!-- request.getContextPath() 사이트 주소를 적는 것과 같다 -->
	<a href="<%= request.getContextPath() %>/simple">simple_요청하기</a><br>
	<a href="<%= request.getContextPath() %>/simple?type=data">날짜_요청하기</a><br>
	<a href="<%= request.getContextPath() %>/simple?type=abcd">비정상_요청하기</a><br>
	<hr>
	<h3>FrontServletController</h3>
	<a href="<%= request.getContextPath() %>/action.do?cmd=greeting">요청하기</a><br>
	<h3>FrontBoardController</h3>
	<a href="<%= request.getContextPath() %>/board?cmd=boardlist">게시판 요청하기</a><br>
	<a href="<%= request.getContextPath() %>/board?cmd=boardwrite">글쓰기 요청하기</a><br>
	<a href="<%= request.getContextPath() %>/board">cmd null Error 유도하기</a><br>
	<a href="<%= request.getContextPath() %>/board?cmd=boarddelete">글쓰기 삭제하기</a><br>
	<a href="${pageContext.request.contextPath}/board?cmd=login">보안페이지 로그인 페이지 이동하기</a><br>
	<!-- EL 사용하기: ${pageContext.request.contextPath} -->
</body>
</html>