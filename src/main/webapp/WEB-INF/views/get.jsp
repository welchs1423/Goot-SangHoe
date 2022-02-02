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
	#wrap{
		margin:0 auto;
   		width:700px;
	}
	.getul{
		border: 1px solid black;
	}
	li{
		list-style: none;
		font-size:18px;
		
	}
	body {
	background-size: cover;
	background-repeat: no-repeat;
   /* font-family: Arial, sans-serif;
	font-weight: bold;
	font-size: 14px; */
}

 .wrap {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -86px;
	margin-left: -89px;
	text-align: center;
}
	a.cart {
	/* Font & Text */
	font-family: Tahoma, "Noto Sans Korean", "Malgun Gothic", "맑은 고딕", AppleSDGothicNeo, Helvetica, dotum, 돋움, sans-serif;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	letter-spacing: normal;
	line-height: 60px;
	text-decoration: none solid rgb(255, 255, 255);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: top;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgb(46, 141, 229);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(255, 255, 255);

	/* Box */
	height: 62px;
	width: 270px;
	border: 1px solid rgb(33, 127, 215);
	border-top: 1px solid rgb(33, 127, 215);
	border-right: 1px solid rgb(33, 127, 215);
	border-bottom: 1px solid rgb(33, 127, 215);
	border-left: 1px solid rgb(33, 127, 215);
	margin: 0px;
	padding: 0px;
	max-height: none;
	min-height: 0px;
	max-width: none;
	min-width: 0px;

	/* Positioning */
	position: static;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	float: none;
	display: inline-block;
	clear: none;
	z-index: auto;

	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: pointer;
	visibility: visible;

	/* Effects */
	transform: none;
	transition: all 0s ease 0s;
	outline-offset: 0px;
	box-sizing: border-box;
	resize: none;
	text-shadow: none;
	text-overflow: clip;
	word-wrap: normal;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px 0px;
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
}
a.purchase {
	/* Font & Text */
	font-family: Tahoma, "Noto Sans Korean", "Malgun Gothic", "맑은 고딕", AppleSDGothicNeo, Helvetica, dotum, 돋움, sans-serif;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	letter-spacing: normal;
	line-height: 60px;
	text-decoration: none solid rgb(255, 255, 255);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: top;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: #FFFFFF;
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(255, 255, 255);

	/* Box */
	height: 62px;
	width: 270px;
	border: 1px solid rgb(#D9D9D9);
	border-top: 1px solid rgb(33, 127, 215);
	border-right: 1px solid rgb(33, 127, 215);
	border-bottom: 1px solid rgb(33, 127, 215);
	border-left: 1px solid rgb(33, 127, 215);
	margin: 0px;
	padding: 0px;
	max-height: none;
	min-height: 0px;
	max-width: none;
	min-width: 0px;

	/* Positioning */
	position: static;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	float: right;
	display: inline-block;
	clear: none;
	z-index: auto;

	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: pointer;
	visibility: visible;

	/* Effects */
	transform: none;
	transition: all 0s ease 0s;
	outline-offset: 0px;
	box-sizing: border-box;
	resize: none;
	text-shadow: none;
	text-overflow: clip;
	word-wrap: normal;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px 0px;
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
}

a.purchase {
	color: rgba(30, 22, 54, 0.6);
	box-shadow: rgba(30, 22, 54, 0.4) 0 0px 0px 2px inset;
}

.minus {
	/* Font & Text */
	font-family: Tahoma, "Noto Sans Korean", "Malgun Gothic", "맑은 고딕", AppleSDGothicNeo, Helvetica, dotum, 돋움, sans-serif;
	font-size: 13.3333px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: normal;
	text-decoration: none solid rgb(103, 103, 103);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: baseline;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgba(0, 0, 0, 0);
	background-image: url("http://pics.gmarket.co.kr/pc/ko/item/vip/sp_vipgroup.png");
	background-position: -732px -158px;
	background-repeat: no-repeat;
	color: rgb(103, 103, 103);

	/* Box */
	height: 24px;
	width: 24px;
	border: 0px none rgb(103, 103, 103);
	border-top: 0px none rgb(103, 103, 103);
	border-right: 0px none rgb(103, 103, 103);
	border-bottom: 0px none rgb(103, 103, 103);
	border-left: 0px none rgb(103, 103, 103);
	margin: 0px;
	padding: 0px;
	max-height: none;
	min-height: 0px;
	max-width: none;
	min-width: 0px;

	/* Positioning */

	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: pointer;
	visibility: visible;

	/* Effects */
	transform: none;
	transition: all 0s ease 0s;
	outline-offset: 0px;
	box-sizing: border-box;
	resize: none;
	text-shadow: none;
	text-overflow: clip;
	word-wrap: normal;
	box-shadow: none;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}
.plus {
	/* Font & Text */
	font-family: Tahoma, "Noto Sans Korean", "Malgun Gothic", "맑은 고딕", AppleSDGothicNeo, Helvetica, dotum, 돋움, sans-serif;
	font-size: 13.3333px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: normal;
	text-decoration: none solid rgb(103, 103, 103);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: baseline;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgba(0, 0, 0, 0);
	background-image: url("http://pics.gmarket.co.kr/pc/ko/item/vip/sp_vipgroup.png");
	background-position: -788px -158px;
	background-repeat: no-repeat;
	color: rgb(103, 103, 103);

	/* Box */
	height: 24px;
	width: 24px;
	border: 0px none rgb(103, 103, 103);
	border-top: 0px none rgb(103, 103, 103);
	border-right: 0px none rgb(103, 103, 103);
	border-bottom: 0px none rgb(103, 103, 103);
	border-left: 0px none rgb(103, 103, 103);
	margin: 0px;
	padding: 0px;
	max-height: none;
	min-height: 0px;
	max-width: none;
	min-width: 0px;


	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: pointer;
	visibility: visible;
}
</style>

</head>
<body onload="init();">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<script type="text/javascript">


$(function(){
	
	$(".purchase").click(function(e){
		e.preventDefault();
		var amount = document.form.amount.value;
		var pno = "${productget.pno}";
		var sum = document.form.sum.value;
		location.href="/purchase?pno=" + pno + "&amount=" + amount + "&sum=" + sum;
	});
});

$(function(){
	
	$(".cart").click(function(e){
		e.preventDefault();
		var form = document.createElement("form");
		var hiddenField = document.createElement("input");
		var pno = "${productget.pno}";
		var pname = "${productget.pname}";
		
		form.setAttribute("charset","UTF-8");
		form.setAttribute("method","Post");
		form.setAttribute("action","/cartInsert?pno=" + pno);
		hiddenField.setAttribute("type","hidden");
		hiddenField.setAttribute("name","pno");
		hiddenField.setAttribute("value",pno);
		
		form.appendChild(hiddenField);
		document.body.appendChild(form);
		form.submit();
		
		alert("장바구니에 상품을 담았습니다.");
				
	});
});

var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  
</script>
<form name="form" method="post">
<div id="wrap">
	 <ul class="getul">
		<li><img src="resources/images/${productget.pname }.jpg" width="500" height="500"></li>
		<li>원산지 : ${productget.porgname }</li>
		<li>용량 : ${productget.pml }ml</li>
		<li>알콜도수 : ${productget.palcohol }%</li>
		<li>판매가격 : <fmt:formatNumber value="${productget.pprice }" pattern="#,###" />원</li>
		<li>상품설명 : ${productget.pdesc }</li>
		<li> <input type=hidden name="sell_price" value="${productget.pprice }"></li>
		<li>수량 :<input type="button" class="minus"  onclick="del();"><input type="text" name="amount" value="1" size="3" onchange="change();">
		<input type="button" class="plus"  onclick="add();"><br></li>

		<li>금액 : <input type="text" name="sum" size="11" readonly>원</li>
	</ul>
	
	
	<a href="#" class="cart">장바구니</a>
	<a href="#" class="purchase">상품구매</a>
</div>
</form>

</body>
</html>