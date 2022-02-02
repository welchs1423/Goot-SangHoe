<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#stv {z-index:1001;position:relative;float:right;width:120px}
	#stv_list {position:absolute;width:120px;background:transparent;}
	#stv_ul {margin:0;padding:0;list-style:none;}
	#stv_ul li {border-left:1px solid #492324;border-bottom:1px solid #dbd3d3;background:#fff;padding:10px;}
	#stv_ul li:last-child {border-left:0px;border-bottom:0px;background: url(http://www.kajawine.kr/theme/basic/img/quick-today-bg2.png) 0 bottom no-repeat;}
	#stv_list p {padding:20px 0;text-align:center;background: url(http://www.kajawine.kr/theme/basic/img/quick-today-bg2.png) 0 bottom no-repeat;}
	.m_title    { BACKGROUND-COLOR: #F7F7F7; PADDING-LEFT: 15px; PADDING-top: 5px; PADDING-BOTTOM: 5px; }
	.m_padding  { PADDING-LEFT: 15px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; }
	.m_padding2 { PADDING-LEFT: 0px; PADDING-top: 5px; PADDING-BOTTOM: 0px; }
	.m_padding3 { PADDING-LEFT: 0px; PADDING-top: 5px; PADDING-BOTTOM: 5px; }
	.mbskin table {border-collapse: collapse;}
	.mbskin table th.m_title {text-align:left;}
	.mbskin table th.m_title,
	.mbskin table td.m_padding {border:1px solid; border-color:#cccccc;}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div>

<script src="http://www.kajawine.kr/js/scroll_oldie.js"></script>
<!-- } 오늘 본 상품 끝 -->    <!-- 콘텐츠 시작 { -->
    <div id="container" style="width:1150px;margin:50px auto">
<!-- 회원정보 입력/수정 시작 { -->
<div class="mbskin">

    <script src="http://www.kajawine.kr/js/jquery.register_form.js"></script>
    
    <form id="fregisterform" name="fregisterform" action="/registerForm" onsubmit="return fregisterform_submit(this);" method="post">  
	   <table width="660" cellspacing="0" cellpadding="0" align="center">
        <tbody>
		

        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_id">아이디</label></th>
            <td class="m_padding">
                <input type="text" name="mid" value="" id="reg_mb_id" placeholder="필수 정보 입니다." class="ed required " minlength="3" maxlength="20">
                <p class="frm_info" style="color:#66a2c8">※ 영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.	</p>
				<span id="msg_mb_id" style="color:blue" ;=""></span>
            </td>
        </tr>
        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_password">패스워드</label></th>
            <td class="m_padding"><input type="password" name="mpw" id="reg_mb_password" placeholder="필수 정보 입니다." class="ed required" minlength="3" maxlength="20"></td>
        </tr>
        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_password_re">패스워드 확인</label></th>
            <td class="m_padding"><input type="password" name="mpw_re" id="reg_mb_password_re" placeholder="필수 정보 입니다." class="ed required" minlength="3" maxlength="20"></td>
        </tr>
        <!-- </tbody>
		</table>
		<table width="100%" cellspacing="0" cellpadding="0"><tbody><tr><td height="1" bgcolor="#ffffff"></td></tr></tbody></table>
		<table width="660" cellspacing="0" cellpadding="0" align="center">
        <tbody> -->
        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_name">이름</label></th>
            <td class="m_padding">
                                <input type="text" id="reg_mb_name" name="mname" value="" placeholder="필수 정보 입니다." class="ed required " size="20">
                                            </td>
        </tr>
        
        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_email">E-mail</label></th>
            <td class="m_padding">
                                <input type="hidden" name="old_email" value="">
                <input type="text" name="memail" value="" placeholder="필수 정보 입니다." id="reg_mb_email" class="ed email required" size="50" maxlength="100">
            </td>
        </tr>

        
        
                <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_hp">휴대폰번호</label></th>
            <td class="m_padding">
                <input type="text" name="mphone" value="" placeholder="필수 정보 입니다." id="reg_mb_hp" class="ed required" maxlength="20">
                            </td>
        </tr>
        
                <tr>
            <th scope="row" width="160" class="m_title">
                주소
                            </th>
            <td class="m_padding">
                <input type="text" id="sample4_postcode" name="postno" placeholder="우편번호" size="5" maxlength="6">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
				<div><input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="width:380px;margin:5px 0px 0px;"></div>
				<div><input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="width:380px;margin:5px 0px 0px;"></div>
				<div><span id="guide" style="color:#999;display:none"></span></div>
				<div><input type="text" id="sample4_detailAddress" placeholder="상세주소" style="width:380px;margin:5px 0px 0px;"></div>
				<div><input type="text" id="sample4_extraAddress" placeholder="참고항목" style="width:380px;margin:5px 0px 0px;"></div>
            </td>
        </tr>
                </tbody>
		<!-- </table>
		<table width="100%" cellspacing="0" cellpadding="0"><tbody><tr><td height="1" bgcolor="#ffffff"></td></tr></tbody></table>
		<table width="660" cellspacing="0" cellpadding="0" align="center">
        <tbody> -->
        
        
        <!---->

        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_mailling">이메일수신</label></th>
            <td class="m_padding">
                <input type="checkbox" name="mb_mailling" value="1" id="reg_mb_mailling" checked="">
                거래 및 정보 메일을 받겠습니다.
            </td>
        </tr>

                <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_sms">SMS 수신여부</label></th>
            <td class="m_padding">
                <input type="checkbox" name="mb_sms" value="1" id="reg_mb_sms" checked="">
                휴대폰 문자메세지를 받겠습니다.
            </td>
        </tr>
        
        <!--        <tr>
            <th scope="row" width="160" class="m_title"><label for="reg_mb_open">정보공개</label></th>
            <td class="m_padding">
                <span class="frm_info">
                    정보공개를 바꾸시면 앞으로 0일 이내에는 변경이 안됩니다.
                </span>
                <input type="hidden" name="mb_open_default" value="">
                <input type="checkbox" name="mb_open" value="1" checked id="reg_mb_open">
                다른분들이 나의 정보를 볼 수 있도록 합니다.
            </td>
        </tr>
        -->
        </tbody>
		</table>
		<table width="660" cellspacing="0" cellpadding="0" align="center">
			<tbody>
				<tr>
					<td align="center" style="padding:30px 0 0;"><input type="submit" value="회원가입" id="btn_submit" class="" accesskey="s" src="resources/images/join_ok_btn.gif"></td>
				</tr>
			</tbody>
		</table>
    </form>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    // submit 최종 폼체크
    function fregisterform_submit(f)
    {
        // 회원아이디 검사
        if (f.w.value == "") {
            var msg = reg_mb_id_check();
            if (msg) {
                alert(msg);
                f.mb_id.select();
                return false;
            }
        }

        if (f.w.value == "") {
            if (f.mb_password.value.length < 3) {
                alert("비밀번호를 3글자 이상 입력하십시오.");
                f.mb_password.focus();
                return false;
            }
        }

        if (f.mb_password.value != f.mb_password_re.value) {
            alert("비밀번호가 같지 않습니다.");
            f.mb_password_re.focus();
            return false;
        }

        if (f.mb_password.value.length > 0) {
            if (f.mb_password_re.value.length < 3) {
                alert("비밀번호를 3글자 이상 입력하십시오.");
                f.mb_password_re.focus();
                return false;
            }
        }

        // 이름 검사
        if (f.w.value=="") {
            if (f.mb_name.value.length < 1) {
                alert("이름을 입력하십시오.");
                f.mb_name.focus();
                return false;
            }

            /*
            var pattern = /([^가-힣\x20])/i;
            if (pattern.test(f.mb_name.value)) {
                alert("이름은 한글로 입력하십시오.");
                f.mb_name.select();
                return false;
            }
            */
        }

        
        // 닉네임 검사


        // E-mail 검사
         if ((f.w.value == "") || (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
            var msg = reg_mb_email_check();
            if (msg) {
                alert(msg);
                f.reg_mb_email.select();
                return false;
            }
        } 

                // 휴대폰번호 체크
        var msg = reg_mb_hp_check();
        if (msg) {
            alert(msg);
            f.reg_mb_hp.select();
            return false;
        }
        
        if (typeof f.mb_icon != "undefined") {
            if (f.mb_icon.value) {
                if (!f.mb_icon.value.toLowerCase().match(/.(gif)$/i)) {
                    alert("회원아이콘이 gif 파일이 아닙니다.");
                    f.mb_icon.focus();
                    return false;
                }
            }
        }

        if (typeof(f.mb_recommend) != "undefined" && f.mb_recommend.value) {
            if (f.mb_id.value == f.mb_recommend.value) {
                alert("본인을 추천할 수 없습니다.");
                f.mb_recommend.focus();
                return false;
            }

            var msg = reg_mb_recommend_check();
            if (msg) {
                alert(msg);
                f.mb_recommend.select();
                return false;
            }
        }

    }
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    </script>

</div>
<!-- } 회원정보 입력/수정 끝 -->
    </div>
    <!-- } 콘텐츠 끝 -->

<!-- 하단 시작 { -->
</div>
</body>
</html>