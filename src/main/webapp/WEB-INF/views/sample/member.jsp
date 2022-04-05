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
	
	 <p id="username"><sec:authentication property="principal.member.mname"/></p>
	 <script type="text/javascript">
		var username = document.getElementById("username").innerText;
 		alert("환영합니다 " + username + " 님");
		document.location.href="/list";
	</script>
</body>
</html>