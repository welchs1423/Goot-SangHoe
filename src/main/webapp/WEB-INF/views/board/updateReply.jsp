<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>댓글 수정 창</h3>
	
	<form action="/board/updateReply" method="post" role="form">
		<div><input type="hidden" name="rno" value="${getReply.rno}"></div>
		<div><input type="hidden" name="bno" value="${getReply.bno}"></div>
		<div>작성자<input type="text" name="mname" value="${getReply.mname}" readonly="readonly"></div>
		<div>댓글 내용<input type="text" name="rtext"></div>
		<input type="submit" value="수정하기">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>