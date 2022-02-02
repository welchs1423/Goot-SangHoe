<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.container {
		text-align:center;
		padding:10px 10px;
		display: block;
		z-index: auto;	
	}
	#liquor{
 		height: 597px;
		width: 950px;
 	}
	td {
		border: 1px solid black;
		text-align:center;
		height: 180px;
		width: 169px;
 	}
</style>
<script type="text/javascript">
	
	
</script>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="container" style="width:950px;margin:55px auto 0px auto">
 	
 	<img src="resources/images/위스키 로고.jpg" width="920" height="200">
	<div id="Liquor">
	<table class="whiskeytable">
		<tr class="listtable">
		
		 <c:forEach var="product" items="${listwhiskey}">
				<td class="product td"><a href="/get?pno=${product.pno }"><img src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }"></a><br>
				<a href="/get?pno=${product.pno }">${product.pname}</a><br>
				<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
				</td>
		</c:forEach>

		</tr>
	</table>
	<img src="resources/images/와인 배너.jpg" width="920" height="200">
	<table class="winetable">
		<tr class="listtable">
		
		 <c:forEach var="product" items="${listwine}">
				<td class="product td"><a href="/get?pno=${product.pno }"><img src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }"></a><br>
				<a href="/get?pno=${product.pno }">${product.pname}</a><br>
				<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
				</td>
		</c:forEach>

		</tr>
	</table>
	
	<img src="resources/images/브랜디 배너.jpg" width="920" height="200">
	<table class="winetable">
		<tr class="listtable">
		 <c:forEach var="product" items="${listliquor}">
				<td class="product td"><a href="/get?pno=${product.pno }"><img src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }"></a><br>
				<a href="/get?pno=${product.pno }">${product.pname}</a><br>
				<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
				</td>
		</c:forEach>

		</tr>
	</table>
	
	<img src="resources/images/리큐어 배너.jpg" width="920" height="250">
	<table class="winetable">
		<tr class="listtable">
		
		 <c:forEach var="product" items="${listbrandy}">
				<td class="product td"><a href="/get?pno=${product.pno }"><img src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }"></a><br>
				<a href="/get?pno=${product.pno }">${product.pname}</a><br>
				<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
				</td>
		</c:forEach>

		</tr>
	</table>
	
	<img src="resources/images/보드카 배너.jpg" width="920" height="250">
	<table class="beertable">
		<tr class="listtable">
		
		 <c:forEach var="product" items="${listbeer}">
				<td class="product td"><a href="/product/get?pno="${product.pno }><img src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }"></a><br>
				<a href="">${product.pname}</a><br>
				<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
				</td>
		</c:forEach>

		</tr>
	</table>
		 
</div>




</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>