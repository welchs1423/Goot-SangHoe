<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* 카테고리 */
	#bo_cate h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
	#bo_cate ul {margin-bottom:20px;padding-left:1px;width:100%;zoom:1;border-bottom:1px solid #ddd;list-style:none}
	#bo_cate ul:after {display:block;visibility:hidden;clear:both;content:"";}
	#bo_cate li {float:left;margin-bottom:-1px}
	#bo_cate a {font-size:14px;display:block;position:relative;margin-left:-1px;padding:3px 10px 3px 10px;border:1px solid #ddd;background:#fff;color:#888;font-weight:600;text-align:center;line-height:2em;cursor:pointer}
	#bo_cate a:focus, #bo_cate a:hover, #bo_cate a:active {text-decoration:none}
	#bo_cate #bo_cate_on {z-index:2;border:1px solid #8e1235;background:#8e1235;color:#fff;font-weight:bold}
	#container h2{margin:0;padding:0;width:1px;height:1px;font-size:0;line-height:0;overflow:hidden}
	#gall_ul {margin:10px 0 0;padding:0;list-style:none;zoom:1}
	#gall_ul:after{display:block;visibility:hidden;clear:both;content:""}
	/* 상품 정보 */
	#bo_gall #gall_ul {margin:10px 0 0;padding:0;list-style:none;zoom:1}
	#bo_gall #gall_ul:after {display:block;visibility:hidden;clear:both;content:""}
	#bo_gall .gall_li {float:left;margin:0 20px 30px 0; }
	#bo_gall .gall_con {margin-right:60px;padding:0;list-style:none; height:265px; width: 120px; text-align:center;}
	#bo_gall .gall_con li {margin:0 0 0px;}
	#bo_gall .gall_con .gall_subject {display:inline-block;width:50px}
	#bo_gall .gall_now .gall_text_href a {color:#ff3061;}
	#bo_gall .gall_href {border:1px solid #ccc;width:120px;height:165px;overflow:hidden}
	#bo_gall .gall_href a:link, #bo_gall .gall_href a:focus, #bo_gall .gall_href a:hover {text-decoration:none; text-align:center;}
	#bo_gall .gall_href strong, #bo_gall .gall_href span {display:inline-block;background:#f7f7f7;text-align:center;line-height:10em}
	#bo_gall .gall_text_href a {font-weight:bold}
	#bo_gall .gall_text_href span {display:inline}
	/* 페이징 */
	.pg_wrap {clear:both;margin:0 0 20px;padding:20px 0 0;text-align:center}
	.pg {}
	.pg_page, .pg_current {display:inline-block;padding:0 8px;height:25px;color:#000;letter-spacing:0;line-height:2.2em;vertical-align:middle}
	.pg a:focus, .pg a:hover {text-decoration:none}
	.pg_page {background:#e4eaec;text-decoration:none}
	.pg_start, .pg_prev {/* 이전 */}
	.pg_end, .pg_next {/* 다음 */}
	.pg_current {display:inline-block;margin:0 4px 0 0;background:#333;color:#fff;font-weight:normal}
</style>

<body>
	
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	
	
	<div id="bo_gall" style="width:1200px;margin:55px auto 0px auto">
	<h2>브랜디</h2><br>
	
		<nav id="bo_cate">
	        <ul id="bo_cate_ul">
	            <li><a href="/categorylist?amount=18&pageNum=1&pcategory=30" id="bo_cate_on" class="categoryall">전체</a></li>
			</ul>
	    </nav>
	    
	    Total <%-- ${winepage.total} --%>건 <%-- <c:out value="${winepage.cri.pageNum}"/> --%>페이지
		<ul id="gall_ul">
		
        	
			<c:forEach var="product" items="${Categorywine}">
			<li class="gall_li ">
            	<ul class="gall_con">
                	<li class="gall_href">
                    	<a href="/get?pno=${product.pno }" >
                    		<img style="display: block; margin: 0px auto;"src="resources/images/${product.pname }.jpg" width="120" height="165" alt="${product.pname }" title="${product.pname }">
                    	</a>
                	</li>
                	<li class="gall_text_href">                
                    	<a href="/get?pno=${product.pno }" style="color:#222222;margin-top:5px;display:block;font-size:14px;text-align:center;">
							${product.pname }                      
                    	</a>
                    		<fmt:formatNumber value="${product.pprice}" pattern="#,###" />원
                	</li>
            	</ul>
        	</li>
        	</c:forEach>
  
			 
		
     	</ul>
     		
     	 	<!-- <div class="container">
			<div class="row">
				<div class="col">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>
		</div>  -->
		
		<div class="pull-right">
						<ul class="pagination">
							<c:if test="${winepage.prev }">
								<li class="paginate_button previous">
									<a href="${winepage.startPage-1 }">&lt;</a>
								</li>
							</c:if>
							<c:forEach var="num" begin="${winepage.startPage }" end="${winepage.endPage }" step="1">
								<li class="paginate_button ${winepage.cri.pageNum == num ? 'active':''}">
									<a href="${num }">${num }</a>
								</li>
							</c:forEach>
							<c:if test="${winepage.next }">
								<li class="paginate_button">
									<a href="${winepage.endPage+1 }">&gt;</a>
								</li>
							</c:if>
						</ul>
					</div>
						 
					

		<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
			</div>
			<script type="text/javascript">
			
			$(function(){
				$(".categorymove").click(function(e){
						e.preventDefault();
						var porigin = $(this).attr("href");
						var pcategory = "${winepage.cri.pcategory}";
						location.href="/cateorglist?amount=18&pageNum=1&pcategory=" + pcategory + "&porigin=" + porigin;
					});
			});
			
        $(function(){
    		var result = "${result}";
    		var amount = "${winepage.cri.amount}";
			var pageNum = "${winepage.cri.pageNum}";
			var pcategory = "${winepage.cri.pcategory}";
        	
        	if(result != ''){
        		checkModal(result);
        	}
        
        	 $("#regBtn").click(function(){	//	새 게시글 등록 버튼
        		location.href="/board/register?pageNum=" + pageNum +
        				"&amount=" + amount;
        	}); 
        	
        	
        	$(".paginate_button a").click(function(e){	// 이전 버튼
        		// <a> 클릭시 페이지 이동이 이루어지지 않게 하기 위해
        		// 기존에 설정된 이벤트 해제
        		e.preventDefault();
        		var nextPageNum = $(this).attr("href");
        		location.href="/categorylist?amount=" + amount + "&pageNum=" + nextPageNum + "&pcategory=" + pcategory;
        	});
        	
        	/*  $(".move").click(function(e){	// bno 게시글 이동 버튼
        		e.preventDefault();
        		var bno = $(this).attr("href");
    			
        		location.href="/board/getinquiry?amount=" + amount + 
        				"&pageNum=" + pageNum +
        				"&bno=" + bno;
        	});  */
        	
    	});
        </script>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>