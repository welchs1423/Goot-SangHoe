<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style type="text/css">
	#mb_login {clear:both;margin:0 auto;padding:30px 0;width:100%}
#mb_login h1 {margin:0 0 20px;font-size:2em;text-align:center;}
#mb_login h2 {margin:0}
#mb_login p {padding:10px 0;line-height:1.5em}
#mb_login #login_fs {position:relative;width:70%;margin:0 auto;padding:30px;border:1px solid #e3e3e3;background:#fff}
#mb_login #login_fs legend {position:absolute;margin:0;padding:0;font-size:0;line-height:0;text-indent:-9999em;overflow:hidden}
#mb_login #login_fs #login_id {padding:10px 0 !important;width:100% !important;border-radius:5px;height:30px;}
#mb_login #login_fs #login_pw {padding:10px 0 !important;width:100% !important;border-radius:5px;height:30px;}
#mb_login #login_fs .frm_input {display:block;width:162px}
#mb_login #login_fs .btn_submit {display:block;width:100%;height:53px;margin:20px 0 0 0;border-radius:5px;background:yellow;}
#mb_login #login_info {margin:0 0 30px;padding:20px;}
#mb_login #login_info div {text-align:center}

.mbskin {padding:30px 0;border:1px solid #e3e3e3;}
.mbskin h1 {margin:0 0 20px;font-size:2em;text-align:center;}

#mb_login_notmb {position:relative;margin:0 0 20px;padding:20px;border:1px solid #cfded8;background:#fff}
#mb_login_notmb #guest_privacy {margin:0 0 10px;padding:10px;height:150px;border:1px solid #e9e9e9;overflow:auto}
#mb_login_notmb .btn_confirm {padding:10px 0 0}

#mb_login_od {position:relative;margin:0;padding:20px 20px 20px 95px;border:1px solid #cfded8;border-bottom:0;background:#fff}
#mb_login_od legend {position:absolute;font-size:0;line-height:0;overflow:hidden}
#mb_login_od label {letter-spacing:-0.1em}
#mb_login_od .od_id {position:absolute;top:26px;left:95px}
#mb_login_od .od_pwd {position:absolute;top:52px;left:95px}
#mb_login_od .frm_input {display:block;margin:0 0 5px 80px}
#mb_login_od .btn_submit {position:absolute;top:20px;left:335px;width:52px;height:49px;}
#mb_login_odinfo {margin:0 0 30px;padding:20px;border:1px solid #cfded8;background:#f5f6fa}
#mb_login_odinfo div {text-align:right}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div id="wrapper">
    
    		
<!-- 로그인 시작 { -->
<div id="mb_login" class="mbskin">
    <h1>LOGIN</h1>

    <form name="flogin" action="/login" method="post">
    <input type="hidden" name="url" value="">

    <fieldset id="login_fs">
        <legend>회원로그인</legend>
        <p>회원아이디</p>
        <input type="text" name="username" id="login_id" class="frm_input required">
        <p>비밀번호</p>
        <input type="password" name="password" id="login_pw" class="frm_input required">
        
        <input type="submit" value="로그인" class="btn_submit">
        <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
        <!-- <input type="checkbox" name="auto_login" id="login_auto_login">
        <label for="login_auto_login">자동로그인</label> -->
    </fieldset>

    <aside id="login_info">
        <div>
            <a href="" target="_blank" id="login_password_lost" class="btn02">아이디 비밀번호 찾기</a>
        </div>
    </aside>

    </form>

        
        <!-- 주문하기, 신청하기 -->
        
        
    <!--div class="btn_confirm">
        <a href="http://www.liquorstore21.co.kr/">메인으로 돌아가기</a>
    </div-->

</div>

<script>
/* $(function(){
    $("#login_auto_login").click(function(){
        if (this.checked) {
            this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
        }
    });
});

function flogin_submit(f)
{
    return true;
} */
</script>
<!-- } 로그인 끝 -->
		</div>
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>