<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>

    
<style type="text/css">
	/* .body {
		margin: 0;
		padding: 0;
	} */
	.header {
		width: 100%;
		/* padding: 50px 0; */
		text-align: center;
		background: black;
		color:white;
		z-index: 999999;
		margin: 0 auto;
	}
	.headerul {
		/* width: 100%; */
		/* top: 100px; */
		background-color: #8E1235;
		list-style-type: none;
		/* overflow: hidden; */
		text-align:center;
	}

	.headerli {
		display: inline;
		text-align: center;
		
		
	}
	#headera:hover {
		background: #820B2D;
		color: white;
		font-size:15px;
	}
	#headera{
		display:inline-block;
		width: 150px;
		font-size: medium;
		padding: 20px;
		text-decoration: none;
		color: white;
		font-size:15px;
	}
	#tnb {float:right;margin:0;list-style:none;zoom:1;vertical-align:top;}
	#tnb:after {display:block;visibility:hidden;clear:both;content:""}
	#tnb a {display:inline-block;padding: 0 20px;font-size: 11px;line-height:30px;color:white;vertical-align:top;}
	#tnb a:focus, #tnb a:hover, #tnb a:active {text-decoration:none}
	
</style>

</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
 	  function logoutfunction(formName){
 		  formName.submit();
 	  };
 	  
 	  $(function(){
		
		$(".whiskey").click(function(e){
			e.preventDefault();
			var cat = $(this).attr("href");
			
			location.href="/categorylist?amount=18&pageNum=1&pcategory=" + cat;
			});
		}); 

	  $(function(){
		  
	  $(".wine").click(function(e){
			e.preventDefault();
			var cat = $(this).attr("href");
			
			location.href="/categorylist?amount=18&pageNum=1&pcategory=" + cat;
			});
	  }); 
	  
	  $(function(){
		  
		  $(".brandy").click(function(e){
				e.preventDefault();
				var cat = $(this).attr("href");
				
				location.href="/brandyList?amount=18&pageNum=1&pcategory=" + cat;
				});
		  });
	  
	  $(function(){
		  
		  $(".liquor").click(function(e){
				e.preventDefault();
				var cat = $(this).attr("href");
				
				location.href="/liquorList?amount=18&pageNum=1&pcategory=" + cat;
				});
		  });
	  
	  $(function(){
		  
		  $(".beer").click(function(e){
				e.preventDefault();
				var cat = $(this).attr("href");
				
				location.href="/vodkaList?amount=18&pageNum=1&pcategory=" + cat;
				});
		  });
</script>
	<div class="body">
	<div class="header">
	<div>
		
	</div>
		<a href="/list"><img src="/resources/images/로고.jpg" style="width:400x;height:200px;margin:0px 0px 0px 510px"></a>
		<div id="tnb">
			<sec:authorize access="isAuthenticated()"><a href="#" onclick="javascript:logoutfunction(logoutform);">로그아웃</a></sec:authorize>
			<sec:authorize access="isAnonymous()"><a href="/customLogin">로그인</a></sec:authorize>
			<a href="#"><%-- <sec:authentication property="principal.member.mname"/> --%>내 정보</a>
			<a href="/registerCheck">회원가입</a>
			<a href="/cart?mno=1">장바구니</a>
			<a href="/board/notice?amount=20&pageNum=1">공지사항</a>
			<a style="margin:0px 200px 0px 0px"href="/board/inquiry?amount=20&pageNum=1">상품문의</a>
	    </div>
	</div>
	
	<ul class="headerul">
		<li class="headerli"><a href="10" id="headera" class="whiskey">위스키</a></li>
		<li class="headerli"><a href="20" id="headera" class="wine">와인 / 전통주</a></li>
		<li class="headerli"><a href="30" id="headera" class="brandy">브랜디</a></li>
		<li class="headerli"><a href="40" id="headera" class="liquor">리큐어</a></li>
		<li class="headerli"><a href="50" id="headera" class="beer">보드카</a></li>
	</ul>
	<form name="logoutform" action="/customLogout" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
	</form>
	</div>
</body>

</html>