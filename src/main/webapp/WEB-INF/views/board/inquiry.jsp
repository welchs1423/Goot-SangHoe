<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#subContent{width:1200px;margin:0 auto;}
	/* 기본테이블 */
.tbl_wrap table {width:100%;border-collapse:collapse;border-spacing:0}
.tbl_wrap caption {padding:10px 0;font-weight:bold;text-align:left}

.tbl_head01 {margin:0 0 10px}
.tbl_head01 caption {padding:0;font-size:0;line-height:0;overflow:hidden}
.tbl_head01 thead th {padding:12px 0;border-top:1px solid #d1dee2;border-bottom:1px solid #d1dee2;background:#e5ecef;color:#383838;font-size:0.95em;text-align:center;letter-spacing:-0.1em}
.tbl_head01 thead a {color:#383838}
.tbl_head01 thead th input {vertical-align:top} /* middle 로 하면 게시판 읽기에서 목록 사용시 체크박스 라인 깨짐 */
.tbl_head01 tfoot th, .tbl_head01 tfoot td {padding:10px 0;border-top:1px solid #c1d1d5;border-bottom:1px solid #c1d1d5;background:#d7e0e2;text-align:center}
.tbl_head01 tbody th {padding:8px 0;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9}
.tbl_head01 td {padding:8px 5px;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9;line-height:1.5em;word-break:break-all}
.tbl_head01 a {}

.tbl_head02 {margin:0 0 10px}
.tbl_head02 caption {padding:0;font-size:0;line-height:0;overflow:hidden}
.tbl_head02 thead th {padding:5px 0;border-top:1px solid #d1dee2;border-bottom:1px solid #d1dee2;background:#e5ecef;color:#383838;font-size:0.95em;text-align:center;letter-spacing:-0.1em}
.tbl_head02 thead a {color:#383838}
.tbl_head02 thead th input {vertical-align:top} /* middle 로 하면 게시판 읽기에서 목록 사용시 체크박스 라인 깨짐 */
.tbl_head02 tfoot th, .tbl_head02 tfoot td {padding:10px 0;border-top:1px solid #c1d1d5;border-bottom:1px solid #c1d1d5;background:#d7e0e2;text-align:center}
.tbl_head02 tbody th {padding:5px 0;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9}
.tbl_head02 td {padding:5px 3px;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9;line-height:1.4em;word-break:break-all}
.tbl_head02 a {}

/* 폼 테이블 */
.tbl_frm01 {margin:0 0 20px}
.tbl_frm01 table {width:100%;border-collapse:collapse;border-spacing:0}
.tbl_frm01 th {width:70px;padding:7px 13px;border:1px solid #e9e9e9;border-left:0;background:#f5f8f9;text-align:left}
.tbl_frm01 td {padding:7px 10px;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9;background:transparent}
.tbl_frm01 textarea, .frm_input {border:1px solid #e4eaec;background:#f7f7f7;color:#000;vertical-align:middle;line-height:2em}
.tbl_frm01 textarea {padding:2px 2px 3px}
.frm_input {height:22px}
.tbl_frm01 textarea {width:98%;height:100px}
.tbl_frm01 a {text-decoration:none}
.tbl_frm01 .frm_file {display:block;margin-bottom:5px}
.tbl_frm01 .frm_info {display:block;padding:0 0 5px;line-height:1.4em}
/* 게시판 목록 공통 */
.bo_fx {margin-bottom:5px;zoom:1}
.bo_fx:after {display:block;visibility:hidden;clear:both;content:""}
.bo_fx ul {margin:0;padding:0;list-style:none}
.bo_fx a {float:right}
#bo_list_total {padding-top:5px}
.btn_bo_user {float:right;margin:0;padding:0;list-style:none}
.btn_bo_user li {float:left;margin-left:5px}
.btn_bo_adm {float:left}
.btn_bo_adm li {float:left;margin-right:5px}

.bo_tr :hover{background:#efefef}
.bo_notice td {background:#f5f6fa}
.bo_notice td a {font-weight:bold}
.td_num strong {color:#000}
.bo_cate_link {display:inline-block;margin:0 3px 0 0;padding:0 6px 0 0;color:#6471b2 !important;font-weight:bold;text-decoration:none;font-size:14px !important;} /* 글제목줄 분류스타일 */
.bo_current {color:#e8180c}
#bo_list .cnt_cmt {display:inline-block;margin:0 0 0 3px;font-weight:bold}

#bo_sch {width:100%;margin-bottom:5px;padding-top:5px;text-align:center}
#bo_sch legend {position:absolute;margin:0;padding:0;font-size:0;line-height:0;text-indent:-9999em;overflow:hidden}
/* 페이징 */
	.pg_wrap {clear:both;margin:0 0 20px;padding:20px 0 0;text-align:center}
	.pg {}
	.pg_page, .pg_current {display:inline-block;padding:0 8px;height:25px;color:#000;letter-spacing:0;line-height:2.2em;vertical-align:middle}
	.pg a:focus, .pg a:hover {text-decoration:none}
	.pg_page {background:#e4eaec;text-decoration:none}
	.pg_start, .pg_prev {/* 이전 */}
	.pg_end, .pg_next {/* 다음 */}
	.pg_current {display:inline-block;margin:0 4px 0 0;background:#333;color:#fff;font-weight:normal}


.write-wrap { width:100%; overflow:hidden; }
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div id="subContent">
			<!-- Contents -->
			<div class="contents">
                    <div class="tit-sec">
						<h3>상품문의</h3>
					</div>
					
<!-- 게시판 목록 시작 { -->
<div id="bo_list" style="width:100%">

<!-- 게시판 검색 시작 { -->
<fieldset id="bo_sch">
    <legend>게시물 검색</legend>

    <form name="fsearch" method="get">
    <input type="hidden" name="bo_table" value="community1">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="sop" value="and">
    <label for="sfl" class="sound_only">검색대상</label>   
    <input type="text" style="width:200px; height:25px; border:2px solid #4b545e;" name="stx" value="" id="stx" class="frm_input required" size="15" maxlength="15">
    <input type="submit" value="검색" class="btn_design3" style="font-size:14px;		display: inline-block;		margin: 15px 0px;		padding: 0 15px;		border: 1px solid #3b3c3f;		border-radius: 3px;		background: #4b545e;
		line-height: 27px;		color: #ffffff !important;">
    </form>
</fieldset>
<!-- } 게시판 검색 끝 -->


    <!-- 게시판 카테고리 시작 { -->
        <!-- } 게시판 카테고리 끝 -->

    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
    <div class="bo_fx">
        <div id="bo_list_total">
            <span>Total ${inquirymaker.total }건</span>
            ${inquirymaker.cri.pageNum} 페이지<a href="" style="text-align:right;"><input type="button" id="regBtn" value="게시글 작성"></a>
        </div>

            </div>
    <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    <!-- <form name="fboardlist" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="community1">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value=""> -->

    <div class="tbl_head01 tbl_wrap">
        <table>
        <!--thead>
        <tr>
            <th scope="col" class="boardNo"><span style="font-size:15px">번호</span></th>
                        <th scope="col"><span style="font-size:15px">제목</span></th>
			<th scope="col" class="boardNo"><span style="font-size:15px">글쓴이</span></th>
            <th scope="col"><span style="font-size:15px">날짜</span></th>
            <th scope="col" class="boardNo"><span style="font-size:15px">조회</span></th>
                                </tr>
        </thead-->
       <tbody>
       	 <c:forEach var="inq" items="${inquirylist}">
            <tr class="">
            	<td class="td_num boardNo">${inq.bno }</td>
					<td class="td_subject">
                		<span style="font-size:16px;font-weight:bold;">
							<a href="${inq.bno }" style="color:#000;" class="move">${inq.title }</a>[${inq.replycnt }]

                </span>
                 <br><span style="font-size:12px"><span class="sv_member">${inq.writer }</span></span><span style="padding:0 10px;font-size:12px;color:#dbdbdb;"> | </span><span style="font-size:12px">${inq.regdate }</span>
               
            	</td>
        	</tr>
        </c:forEach>
				</tbody>
        	</table>
		</div>
	<!-- </form> -->
</div>



  <!-- page -->

					<div class="pull-right">
						<ul class="pagination">
							<c:if test="${inquirymaker.prev }">
								<li class="paginate_button previous">
									<a href="${inquirymaker.startPage-1 }">&lt;</a>
								</li>
							</c:if>
							<c:forEach var="num" begin="${inquirymaker.startPage }" end="${inquirymaker.endPage }" step="1">
								<li class="paginate_button ${inquirymaker.cri.pageNum == num ? 'active':''}">
									<a href="${num }">${num }</a>
								</li>
							</c:forEach>
							<c:if test="${inquirymaker.next }">
								<li class="paginate_button">
									<a href="${inquirymaker.endPage+1 }">&gt;</a>
								</li>
							</c:if>
						</ul>
					</div>


<!-- } 게시판 목록 끝 -->

		        </div>
        
        
        </div>
        <script type="text/javascript">
        $(function(){
        	
    		var amount = "${inquirymaker.cri.amount}";
        	
        	$("#regBtn").click(function(e){	//	새 게시글 등록 버튼
        		e.preventDefault();
        		location.href="/board/iregister?pageNum=1&amount=" + amount;
        	});
        	
        	
        	 $(".paginate_button a").click(function(e){	// 이전 버튼
        		// <a> 클릭시 페이지 이동이 이루어지지 않게 하기 위해
        		// 기존에 설정된 이벤트 해제
        		e.preventDefault();
        		var nextPageNum = $(this).attr("href");
        		location.href="/board/inquiry?amount=" + amount + "&pageNum=" + nextPageNum;
        	}); 
        	
        	$(".move").click(function(e){	// bno 게시글 이동 버튼
        		e.preventDefault();
        		var bno = $(this).attr("href");
    			
        		location.href="/board/getinquiry?amount=" + amount + 
        				"&bno=" + bno;
        	});
        	
    	});
        </script>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>