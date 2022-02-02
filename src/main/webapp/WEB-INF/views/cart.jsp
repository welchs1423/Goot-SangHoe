<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap{
		margin:0 auto;
		width:1200px;
	}
	#cart_order{position: static;float: left;display: inline-block;top: unset;left: unset; height:391px;width:360px;border:solid black 1px}
	#cart_order.fixed {position: fixed;top: 121px; }
	#cart_order.fixed.bottom { position: absolute;bottom: 116px;top: auto;float: none; }
	li{
		height:26px;
	}
	strong{
		float:right;
	}
	.button {
	font-size: 24px;
	font-weight: 700;
	text-align: center;
	background-color: rgb(46, 141, 229);
	color: white;
	height: 98px;
	width: 320px;
	display: inline-block;
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
	color: #a7c9b8;

	/* Box */
	height: 24px;
	width: 24px;
	border: 0px none rgb(103, 103, 103);
	border-top: 0px none rgb(103, 103, 103);
	border-right: 0px none rgb(103, 103, 103);
	border-bottom: 0px none rgb(103, 103, 103);
	border-left: 0px none rgb(103, 103, 103);


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
	color: #a7c9b8;

	/* Box */
	height: 24px;
	width: 24px;
	border: 0px none #a7c9b8;
	border-top: 0px none #a7c9b8;
	border-right: 0px none rgb(103, 103, 103);
	border-bottom: 0px none rgb(103, 103, 103);
	border-left: 0px none rgb(103, 103, 103);

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
} */
</style>
</head>
<body>
<script type="text/javascript">



/* $(function(){
	
	$(".button2").click(function(e){
		e.preventDefault();
		var amount = document.form.amount.value;
		var pno = "${productget.pno}";
		var sum = document.form.sum.value;
		location.href="/purchase?pno=" + pno + "&amount=" + amount + "&sum=" + sum;
	});
}); */

var sell_price;
var amount;


 function init(idx) {
	var sell_price = $(".cl-sell-price")[idx];
	var sell_priceVal = sell_price.value;
	var amount = $(".cl-amount")[idx];
	var amountVal = amount.value;
	var sum = $(".cl-sum")[idx];
	var sumVal = sum.value;
	sum.setAttribute('value',sell_priceVal);
	change(idx);
}  

function add(idx) {
	var amount = $(".cl-amount")[idx];
	var amountVal = amount.value;

	var sum = $(".cl-sum")[idx];
	var sumVal = sum.value;
	var sell_price = $(".cl-sell-price")[idx];
	var sell_priceVal = sell_price.value;
	
	amountVal++;
	sumVal = parseInt(amountVal) * sell_priceVal;
	amount.setAttribute('value',parseInt(amountVal));
	sum.setAttribute('value',sumVal);
	total();
}

function del(idx) {
	var amount = $(".cl-amount")[idx];
	var amountVal = amount.value;
	var sum = $(".cl-sum")[idx];
	var sumVal = sum.value;
	var sell_price = $(".cl-sell-price")[idx];
	var sell_priceVal = sell_price.value;
	
	
		if (amountVal > 1) {
			amountVal--;
		}else{
			alert("수량은 1개 이상이어야 합니다.");
		}
		sumVal = parseInt(amountVal) * sell_priceVal;
		amount.setAttribute('value',parseInt(amountVal));
		sum.setAttribute('value',sumVal);
		total();
}

	function total(){
		let totalPrice = 0;
		let finatotalPrice = 0;
		
		$(".cl-tr").each(function(index, element){
			
			totalPrice += parseInt($(element).find(".cl-sum").val());
			
		});
		
		finaltotalPrice = totalPrice + 2500;
		
		const cn1 = totalPrice.toString()
		  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		const cn2 = finaltotalPrice.toString()
		  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		
		$(".cl-total").text(cn1);
		$(".cl-final").text(cn2);
	}
	
	/* function change(idx) {
	var amount = $(".cl-amount")[idx];
	var amountVal = amount.value;
	var sum = $(".cl-sum")[idx];
	var sumVal = sum.value;
	var sell_price = $(".cl-sell-price")[idx].value;

		if (amountVal < 0) {
			amountVal = 0;
		}
		sumVal = parseInt(amountVal) * sell_price;
		
		sum.setAttribute('value',sumVal);
} */
	
	
</script>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<form name="form" method="get">
	<div id="wrap">
		<div style="float:left;">
			<h3>장바구니</h3>
			<c:forEach var="cart" items="${cartList }" varStatus="status">
				<div style="border: 1px solid black; padding: 10px; word-break:break-all;word-wrap:break-word; width:750px;margin:0px 0px 10px 0px;" onload="init(${status.index});">
					<table style="width:700px;">
						<tr class ="cl-tr">
							<td style="width:100px"><img src="resources/images/${cart.pname }.jpg" width="80" height="80"></td>
							<td style="font-size:14px;font-weight:bold;width:350px;">${cart.pname }</td>
							<td style="width: 200px;"><input type="button" class="plus" value="+" onclick="add(${status.index});" style="margin-top:0px">
							<input type="text" name="amount" value="0" size="3" onchange="change(${status.index});" class="cl-amount" readonly>
							<input type="button" class="minus" value="-" onclick="del(${status.index});" style="margin-top:0px"></td>
							<td><input type=hidden name="sell_price" value="${cart.pprice}" class="cl-sell-price"></td>
							<td style="width:200px;"><input style="font-size:18px;font-weight:700" value="0" type="text" name="sum" size="11" readonly class="cl-sum">원</td>
							<td></td>
							<td><a href="/cartRemove?cno=${cart.cno }&mno=1"><img src="resources/images/휴지통.png" width="20" height="20"></a></td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
		
		<div style="float:right;width:360px;height:391px;border:1px solid black;background-color:white">
			<div style="margin:20px;width:320px;height:351px">
				<span style="font-size:16px;font-weight:700">전체 합계</span>
				<div style="border-bottom: 1px solid #333333;width:316px;height:128px;border-top: 1px solid #333333;">
					<ul style="list-style:none;padding:0px 0px 0px 0px;">
						<li style="margin:13px 0px 0px 0px;padding:none;"><span style="float:left;">상품수</span><strong>${cartTotal}개</strong></li>
						<li><span>상품금액</span><strong>원</strong><strong class="cl-total"></strong></li><!-- <class="cl-total"> -->
						<li><span>할인금액</span><strong>0원</strong></li>
						<li><span>배송비</span><strong>2,500원</strong></li>
					</ul>
				</div>
				<div style="border-bottom: 1px solid #333333;height:60px;">
					<p style="font-size:16px;font-weight:bold;margin:40px 0px 0px 0px;">전체 주문금액<strong>원</strong><strong class="cl-final" style="float:right;font-size:16px">0</strong></p>
				</div>
				<div><a href="#" class="button"><span style="line-height: 100px;">구매하기</span></a></div>
			</div>
		</div>
		</div>
		</form>
	
</body>
</html>