<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("환영합니다 관리자님.");
	document.location.href="/list";
</script>
	<%-- <h1>/sample/admin page</h1>
	
	<p> principal : <sec:authentication property="principal"/>	</p><br>
	<p> MemberVO : <sec:authentication property="principal.member"/>	</p><br>
	<p> 사용자이름 : <sec:authentication property="principal.member.mname"/>	</p><br>
	<p> 사용자 아이디 : <sec:authentication property="principal.member.username"/>	</p><br>
	<p> 사용자 권한 리스트 : <sec:authentication property="principal.member.authList"/>	</p><br>

	
	<a href="/customLogout">Logout</a> --%>
	
	
</body>
</html>