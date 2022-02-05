<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/list" method="get" id="startForm">
		<!-- <input type="hidden" name="amount" value="10">
		<input type="hidden" name="pageNum" value="1"> -->
	</form>
	<script type="text/javascript">
		onload  = function(){
			document.getElementById("startForm").submit();
		}
	</script>
</body>
</html>