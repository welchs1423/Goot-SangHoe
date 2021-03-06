<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bo_v {margin-bottom:20px;padding-bottom:20px}

#bo_v_table {display:none}

#bo_v_title {
padding: 10px 10px;
text-align: left;
font-size: 1.2em;
border-top: 2px solid #333;
border-bottom: 1px solid #979797;
font-weight: 600;}

#bo_v_info {padding:10px 0 10px 10px;border-bottom:1px solid #ddd}
#bo_v_info h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_v_info strong {display:inline-block;margin:0 15px 0 5px;font-weight:normal}
#bo_v_info .sv_member,
#bo_v_info .sv_guest,
#bo_v_info .member,
#bo_v_info .guest {font-weight:bold}

#bo_v_file {padding:10px 0 10px 10px;border-bottom:1px solid #ddd}
#bo_v_file h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_v_file ul {margin:0;padding:0;list-style:none}
#bo_v_file li {padding:0 10px;}
#bo_v_file a {display:inline-block;padding:8px 0 7px;color:#000;word-wrap:break-word}
#bo_v_file a:focus, #bo_v_file a:hover, #bo_v_file a:active {text-decoration:none}
#bo_v_file img {float:left;margin:0 10px 0 0}
.bo_v_file_cnt {display:inline-block;margin:0 0 3px 16px}

#bo_v_link {padding:10px 0 10px 10px;border-bottom:1px solid #ddd}
#bo_v_link h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_v_link ul {margin:0;padding:0;list-style:none}
#bo_v_link li {padding:0 10px;}
#bo_v_link a {display:inline-block;padding:8px 0 7px;color:#000;word-wrap:break-word}
#bo_v_link a:focus, #bo_v_link a:hover, #bo_v_link a:active {text-decoration:none}
.bo_v_link_cnt {display:inline-block;margin:0 0 3px 16px}

#bo_v_top {margin:0 0 10px;padding:10px 0;zoom:1}
#bo_v_top:after {display:block;visibility:hidden;clear:both;content:""}
#bo_v_top h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_v_top ul {margin:0;padding:0;list-style:none}

#bo_v_bot {zoom:1}
#bo_v_bot:after {display:block;visibility:hidden;clear:both;content:""}
#bo_v_bot h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_v_bot ul {margin:0;padding:0;list-style:none}

.bo_v_nb {float:left}
.bo_v_nb li {float:left;margin-right:5px}
.bo_v_com {float:right}
.bo_v_com li {float:left;margin-left:5px}

#bo_v_atc {min-height:200px;height:auto !important;height:200px}
#bo_v_atc_title {position:absolute;font-size:0;line-height:0;overflow:hidden}

#bo_v_img {margin:0 0 10px;width:100%;overflow:hidden;zoom:1}
#bo_v_img:after {display:block;visibility:hidden;clear:both;content:""}
#bo_v_img img {margin-bottom:20px;max-width:100%;height:auto}

#bo_v_con {margin-bottom:30px;width:100%;line-height:1.7em;word-break:break-all;overflow:hidden}
#bo_v_con a {color:#000;text-decoration:underline}
#bo_v_con img {max-width:100%;height:auto}

#bo_v_act {margin-bottom:30px;text-align:center}
#bo_v_act .bo_v_act_gng {position:relative}
#bo_v_act a {margin-right:5px;vertical-align:middle}
#bo_v_act strong {color:#ff3061}
#bo_v_act_good, #bo_v_act_nogood {display:none;position:absolute;top:30px;left:0;padding:10px 0;width:165px;background:#ff3061;color:#fff;text-align:center}

#bo_v_sns {margin:0 0 20px;padding:0;list-style:none;zoom:1}
#bo_v_sns:after {display:block;visibility:hidden;clear:both;content:""}
#bo_v_sns li {float:left;margin:0 5px 0 0}

/* ????????? ?????? */
#bo_vc {margin:0 0 20px;padding:20px 20px 10px;border:1px solid #e5e8ec;background:#f5f8f9}
#bo_vc h2 {margin-bottom:10px}
#bo_vc article {padding:0 0 10px;border-top:1px dotted #ccc}
#bo_vc header {position:relative;padding:15px 0 5px}
#bo_vc header .icon_reply {position:absolute;top:15px;left:-20px}
#bo_vc .sv_wrap {margin-right:15px}
#bo_vc .member, #bo_vc .guest, #bo_vc .sv_member, #bo_vc .sv_guest {font-weight:bold}
.bo_vc_hdinfo {display:inline-block;margin:0 15px 0 5px}
#bo_vc h1 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_vc a {color:#000;text-decoration:none}
#bo_vc p {padding:0 0 5px;line-height:1.8em}
#bo_vc p a {text-decoration:underline}
#bo_vc_empty {margin:0;padding:20px !important;text-align:center}
#bo_vc #bo_vc_winfo {float:left}
#bo_vc bfooter {zoom:1}
#bo_vc bfooter:after {display:block;visibility:hidden;clear:both;content:""}

.bo_vc_act {float:right;margin:0;list-style:none;zoom:1}
.bo_vc_act:after {display:block;visibility:hidden;clear:both;content:""}
.bo_vc_act li {float:left;margin-left:5px}

#bo_vc_w {position:relative;margin:0 0 10px;padding:0 0 20px;border-bottom:1px solid #cfded8}
#bo_vc_w h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
#bo_vc_w #char_cnt {display:block;margin:0 0 5px}
#bo_vc_w .btn_submit {color: #fff;
font-size: 1em;
display: inline-block;
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
border-radius: 3px;
border: 1px solid #3d3d3d;
padding: .30em 1em;
text-decoration: none;
background-color: #565656;
cursor: pointer;}

#bo_vc_sns {margin:0;padding:0;list-style:none;zoom:1}
#bo_vc_sns:after {display:block;visibility:hidden;clear:both;content:""}
#bo_vc_sns li {float:left;margin:0 20px 0 0}
#bo_vc_sns input {margin:0 0 0 5px}

.text-center{text-align:center}
#subContent{width:950px;margin:55px auto 0px auto}
textarea{width: 100%;
    height: 6.25em;
    border: none;
    resize: none}
.registerbutton{float:right;}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div id="subContent">
            
			
			
	<!-- Contents -->
	<div class="contents">
		<div class="tit-sec">
			<h3>????????????</h3>
		</div>
        		
 <script src="http://liquorstore21.co.kr/js/viewimageresize.js"></script>

<!-- ????????? ?????? ?????? { -->

<form action="/board/modifyinquiry" method="post" role="form">
<article id="bo_v" style="width:100%">
	<input type="hidden" name="bno" value="${getinquiry.bno}">
    <header>
        <h1 id="bo_v_title">?????? : <input type="text" name="title" value="${getinquiry.title }"></h1>
    </header>

    <section id="bo_v_info">
        <h2>????????? ??????</h2>
        ????????? <strong><span class="sv_member"><input type="text" name="writer" value="${getinquiry.writer }" readonly></span></strong>
    </section>

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">??????</h2>

        <div id="bo_v_img"></div>


        
        <!-- ?????? ?????? ?????? { -->
        <div id="bo_v_con">
        <p><b><span style="font-size:18pt;"><textarea name="content">${getinquiry.content}</textarea></span></b></p></div>
                <!-- } ?????? ?????? ??? -->
		 <input type="submit" id="remove" value="????????????" class="registerbutton">
        <input type="submit" value="????????????" class="registerbutton">
        <input type="reset" value="?????????" class="registerbutton">
    </section>
    
   

  
</article>
</form>
<!-- } ????????? ?????? ??? -->

<script>
$("#remove").click(function () {
    $("form").attr("action", "/board/removeinquiry");
});
</script>
<!-- } ????????? ?????? ??? -->
		        </div>
        
        
        </div>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>