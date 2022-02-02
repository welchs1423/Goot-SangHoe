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

/* 게시판 댓글 */
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
#replyregistertable {
	/* Font & Text */
	font-family: "Nanum Gothic", 돋움, dotum, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	letter-spacing: normal;
	line-height: 18px;
	text-decoration: none solid rgb(102, 102, 102);
	text-align: left;
	text-indent: 0px;
	text-transform: none;
	vertical-align: middle;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgb(247, 247, 247);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(102, 102, 102);

	/* Box */
	height: 107px;
	width: 100px;
	margin: 0px;
	padding: 7px 13px;
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
	display: table-cell;
	clear: none;
	z-index: auto;

	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
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
}
#replyregistercontent {
	/* Font & Text */
	font-family: "Nanum Gothic", 돋움, dotum, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: normal;
	line-height: 14.4px;
	text-decoration: none solid rgb(102, 102, 102);
	text-align: start;
	text-indent: 0px;
	text-transform: none;
	vertical-align: middle;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgba(0, 0, 0, 0);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(102, 102, 102);

	/* Box */
	height: 107px;
	width: 1003px;
	margin: 0px;
	padding: 7px 10px;
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
	display: table-cell;
	clear: none;
	z-index: auto;

	/* List */
	list-style-image: none;
	list-style-type: disc;
	list-style-position: outside;

	/* Table */
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
}
.textarea{
	height: 100px;
	width: 850px;
}
</style>

</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div id="subContent">
	<div class="contents">
		<div class="tit-sec">
			<h3>상품문의</h3>
		</div>
        		
 <script src="http://liquorstore21.co.kr/js/viewimageresize.js"></script>

<!-- 게시물 읽기 시작 { -->


<article id="bo_v" style="width:100%">
<form>
    <header>
        <h1 id="bo_v_title">
            ${getinquiry.title }        </h1>
    </header>

    <section id="bo_v_info">
        <h2>페이지 정보</h2>
        작성자 <strong><span class="sv_member">${getinquiry.writer }</span></strong>
        <span class="sound_only">작성일</span><strong>${getinquiry.regdate }</strong>
        조회<strong>${getinquiry.viewcnt }</strong>
    </section>

    
    
    
    <!-- 게시물 상단 버튼 시작 { -->
   <!--  <div id="bo_v_top">
                      
        
        <ul class="bo_v_com">
                                                                        <li><a href="./board.php?bo_table=community1&amp;page=" class="btn_design2">목록</a></li>
                                </ul>
            </div> -->
    <!-- } 게시물 상단 버튼 끝 -->

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

        <div id="bo_v_img">
</div>

		<!-- 입력폼 추가 부분 
        <div id="bo_v_con">
        <div class="tbl_frm01 tbl_wrap">
        <table>
        	<tbody>
				<tr style="border-top:2px solid #6472b2;">
                	<th>년도</th>
                    <td colspan="3"></td>
                </tr>
					
                
                <tr>
                	<th>업체명</th>
                    <td colspan="3">개인이 가지고 있는 주류는 매입하지 않습니다.</td>
                </tr>

                <tr>
                	<th>기간</th>
                    <td colspan="3"></td>
                </tr>
					
                
        
        
        	</tbody>
        </table>
        </div>
        </div>-->
        
        
        
        <!-- 본문 내용 시작 { -->
        <div id="bo_v_con"><p><font color="#666666" face="Nanum Gothic, 돋움, dotum, sans-serif"><b><span style="font-size:18pt;">
        ${getinquiry.content }</span></b></font></p>
		</div>
                <!-- } 본문 내용 끝 -->
	<hr>
	<!-- 댓글 출력 -->
	<section id="bo_vc">
    <h3>댓글목록</h3>
    <c:forEach var="reply" items="${replyList}">
    	<article id="c_87">
			<header style="z-index:3">
            	<span class="member">${reply.mname }</span>                                   
                        작성일
            <span class="bo_vc_hdinfo"><time datetime="2013-04-30T17:48:00+09:00">${reply.replyDate}</time></span>
                    </header>

        <p>${reply.rtext}</p>
		<a href="/board/updateReply?rno=${reply.rno }" id="replyupdate"><input type="button" value="수정"></a>
		<a href="/board/deleteReply?rno=${reply.rno }" id="replydelete"><input type="button" value="삭제"></a>
        <textarea  style="display:none"> ${reply.rtext} </textarea>
		</article>
	</c:forEach>
            
            
            
    	<!-- 대댓글 -->
    	<!-- <article id="c_88" style="margin-left:20px;border-top-color:#e0e0e0">
        <header style="z-index:2">
            <h1>운영자님의 댓글</h1>
            <span class="member">관리자</span>            <a><img src="http://www.kajawine.kr/theme/basic/skin/board/basic/img/icon_reply.gif" class="icon_reply" alt="댓글의 댓글"></a>
                        작성일
            <span class="bo_vc_hdinfo"><time datetime="2013-04-30T17:58:00+09:00">13-04-30 17:58</time></span>
                    </header>

        대댓글 출력
        <p>앞에 주차 가능합니다^^</p>

        <input type="hidden" value="" id="secret_comment_88">
        <textarea id="save_comment_88" style="display:none">앞에 주차 가능합니다^^</textarea><input type="button" value="수정">
        <hr>

            </article> -->
            <!-- 대댓글 마무리 -->
            <!-- 댓글 작성 -->
</section>
    
    </section>
    <a id="modifyBtn" href=""><button type="button" class="btn btn-primary" data-oper="modify" style="float:right;">게시글 수정</button></a>
    </form>
     <%-- <form action="/board/removeinquiry" method="post" role="form">
	        		<input type="hidden" name="pageNum" value="${cri.pageNum }">
	        		<input type="hidden" name="amount" value="${cri.amount }">
	        		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
	        		<input type="hidden" name="bno" value="${getinquiry.bno}">
	        		<a id="removeBtn" href=""><button type="button" class="btn btn-danger" data-oper="remove" style="float:right;">게시글 삭제</button></a>
	        	</form> --%>
		<form action="/board/create" method="post" role="form">
				<input type="hidden" id="bno" name="bno" value="${getinquiry.bno}"/>
				<input type="hidden" id="mname" name="mname" value="박덕규"/>
				<table style="border: 1px solid; border-collapse: collapse;">
					<tr>
						<th id="replyregistertable" style="border: 1px solid; border-collapse: collapse;">내용</th>
						<th id="replyregistercontent" style="border: 1px solid; border-collapse: collapse;">
						<textarea class="textarea" name="rtext" style="resize: none;"></textarea>
						<input type="submit" class="btn btn-success btn-sm" value="댓글 작성" style="float:right;"></th>
					</tr>
				<!-- 댓글 작성 마무리 -->
				</table>
			</form>
			<c:out value=""></c:out>
</article>
<!-- } 게시판 읽기 끝 -->


<!-- } 게시글 읽기 끝 -->

		        </div>
        
        
        </div>
	
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
        <script type="text/javascript">
$(function(){
	var bno = "${getinquiry.bno}";
	var amount = "${cri.amount}";
	
	
	$("#modifyBtn").click(function(e){
		e.preventDefault();
		location.href="/board/modifyinquiry?bno=" + bno;
	});
	
	$("#removeBtn").click(function(e){
		e.preventDefault();
		$("form").submit();
	});
	
	/* $("#replydelete").click(function(e){
		var rno = $(this).attr("href");
		e.preventDefault();
		location.href="/board/deleteReply?rno=" + rno;
	}); */
});
</script>
</body>
</html>