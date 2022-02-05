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
   		width:800px;
	}
	.a {
	/* Font & Text */
	font-family: dotum, 돋움, -apple-system, BlinkMacSystemFont, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: normal;
	text-decoration: none solid rgb(103, 103, 103);
	text-align: left;
	text-indent: 0px;
	text-transform: none;
	vertical-align: baseline;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgba(0, 0, 0, 0);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(103, 103, 103);

	/* Box */
	height: 267px;
	width: 540px;
	border: ;
	border-top: 0px none rgb(103, 103, 103);
	border-right: 0px none rgb(103, 103, 103);
	border-bottom: 1px solid rgb(217, 217, 217);
	border-left: 0px none rgb(103, 103, 103);
	margin: 0px 0px 18px;
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
	display: block;
	clear: none;
	z-index: auto;

	/* List */
	list-style-image: none;
	list-style-type: none;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: auto;
	visibility: visible;

	/* Effects */
	transform: none;
	transition: all 0s ease 0s;
	outline-offset: 0px;
	box-sizing: content-box;
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
.b {
	/* Font & Text */
	font-family: 돋움, Dotum, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: 12px;
	text-decoration: none solid rgb(194, 194, 194);
	text-align: start;
	text-indent: 0px;
	text-transform: none;
	vertical-align: middle;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgb(255, 255, 255);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(194, 194, 194);

	/* Box */
	height: 22px;
	width: 174px;
	border: 1px solid rgb(204, 204, 204);
	border-top: 1px solid rgb(204, 204, 204);
	border-right: 1px solid rgb(204, 204, 204);
	border-bottom: 1px solid rgb(204, 204, 204);
	border-left: 1px solid rgb(204, 204, 204);
	margin: 5px 10px 5px 0px;
	padding: 0px 7px;
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
	list-style-type: none;
	list-style-position: outside;

	/* Table */
	border-collapse: separate;
	border-spacing: 0px 0px;
	caption-side: top;
	empty-cells: show;
	table-layout: auto;

	/* Miscellaneous */
	overflow: visible;
	cursor: text;
	visibility: visible;

	/* Effects */
	transform: none;
	transition: all 0s ease 0s;
	outline-offset: 0px;
	box-sizing: content-box;
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
.c {
	/* Font & Text */
	font-family: 돋움, Dotum, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: normal;
	text-decoration: none solid rgb(17, 121, 234);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: baseline;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: #027FE9;
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(17, 121, 234);

	/* Box */
	height: 78px;
	width: 332px;
	margin: 0px;
	padding: 0px;
	max-height: none;
	min-height: 0px;
	max-width: none;
	min-width: 0px;

	/* Positioning */
	position: relative;
	top: 0px;
	bottom: 0px;
	right: 0px;
	left: 0px;
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
	box-sizing: content-box;
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
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<form name="frm" onSubmit="return Checkform()" method="post">
	<div id="wrap">
	<h1>주문결제</h1>
	
	<hr>
	<div style="float:left" class="a">
	
	<h3>배송지 선택</h3>
		<table>
			<tr>
				<td>이름 : </td><td><input type="text" name="name" class="b" style="color:black;"></td>
			</tr>
			<tr>
				<td>주소 : </td><td><input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기" class="b"></td><td><input type="text" id="sample6_postcode" style="color:black;" name="address" placeholder="우편번호" class="b"></td>
			</tr>
			<tr>
				<td></td><td><input type="text" id="sample6_address" style="color:black;" placeholder="주소" readonly class="b"></td>
			</tr>
			<tr>
				<td></td><td><input type="text" id="sample6_extraAddress" style="color:black;" placeholder="참고항목" readonly class="b"></td>
			</tr>
			<tr>
				<td></td><td><input type="text" id="sample6_detailAddress" style="color:black;" placeholder="상세주소" name="detailaddr" class="b"></td>
			</tr>
			<tr>
				<td>연락처 : </td><td><input type="tel" name="phone" placeholder="-없이 입력"  style="color:black;" name="tel" pattern="[0-9]{3}[0-9]{4}[0-9]{4}" required class="b"></td>
			</tr>
		</table>
		
	
	</div>
		
	<div style="float:left;">
		<h3>주문상품 정보</h3>
			<div style="border: 1px solid black; padding: 10px; word-break:break-all;word-wrap:break-word; width:600px;">
				<img src="resources/images/${purchaseProduct.pname }.jpg" width="60" height="60"> ${purchaseProduct.pname }
				<fmt:formatNumber value="${pinfo.sum }" pattern="#,###" />원 / ${pinfo.amount }개
			</div>
			<br>
				<c:forEach var="cart" items="${cartList }">
			<div style="border: 1px solid black; padding: 10px; word-break:break-all;word-wrap:break-word; width:600px;">
				<img src="resources/images/${cart.pname }.jpg" width="60" height="60"> ${cart.pname }
				<fmt:formatNumber value="${pinfo.sum }" pattern="#,###" />원 / ${pinfo.amount }개
			</div> 
				<br>
				</c:forEach>
			
	</div>
	
		
	
	</div>
	<h6>최종결제 정보</h6>
	<ul style="font-size : 20px;list-style:none;">
		<li>상품 금액 : <fmt:formatNumber value="${pinfo.sum }" pattern="#,###" />원</li>
		<li>할인 금액 : 0원</li>
		<li>배송비 : 2,500원</li>
		<br>
		<li>최종 결제 금액 : <fmt:formatNumber value="${pinfo.sum + 2500}" pattern="#,###" /> 원</li>
	</ul>
	<input type="submit" class="c" value="전송" style="font-size:30px;font-weight : bold;color:white;">
	</form>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    
    function Checkform(){
    	if(frm.name.value == ""){
    		
    		frm.name.focus();
    		alert("이름을 입력해 주세요.");
    		
    		return false;
    	}
    	
    	if(frm.address.value == ""){
    		frm.address.focus();
    		alert("우편 번호를 조회해 주세요.");
    		
    		return false;
    	}
    	
    	if(frm.detailaddr.value == ""){
    		frm.detailaddr.focus();
    		alert("상세 주소를 입력해 주세요.");
    	}
    	
    	if(frm.tel.value == ""){
    		frm.tel.focus();
    		alert("전화 번호를 입력해 주세요.");
    	}
    }
</script>
</body>
</html>