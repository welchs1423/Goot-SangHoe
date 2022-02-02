<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tbl_head01 tbl_wrap{width:1198px;margin:auto;}
input .btn_submit {
	/* Font & Text */
	font-family: "Nanum Gothic", 나눔고딕, dotum, 돋움, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: -1.2px;
	line-height: normal;
	text-decoration: none solid rgb(255, 255, 255);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: middle;
	white-space: pre;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgb(255, 48, 97);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(255, 255, 255);

	/* Box */
	height: 30px;
	width: 56.3281px;
	border: 0px none rgb(255, 255, 255);
	border-top: 0px none rgb(255, 255, 255);
	border-right: 0px none rgb(255, 255, 255);
	border-bottom: 0px none rgb(255, 255, 255);
	border-left: 0px none rgb(255, 255, 255);
	margin: 0px;
	padding: 8px;
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
div .btn_confirm {
	/* Font & Text */
	font-family: "Nanum Gothic", 나눔고딕, dotum, 돋움, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: -0.5px;
	line-height: normal;
	text-decoration: none solid rgb(102, 102, 102);
	text-align: center;
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
	color: rgb(102, 102, 102);

	/* Box */
	height: 30px;
	width: 1198px;
	border: 0px none rgb(102, 102, 102);
	border-top: 0px none rgb(102, 102, 102);
	border-right: 0px none rgb(102, 102, 102);
	border-bottom: 0px none rgb(102, 102, 102);
	border-left: 0px none rgb(102, 102, 102);
	margin: 0px 0px 20px;
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
	cursor: auto;
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
#fregister_term {width:90%;margin:0 auto !important;}
#fregister_private {width:90%;margin:0 auto !important;}
#fregisterform {width:90%;margin:0 auto !important;}
.mobileview {display:none;}
@media (max-width: 991px) {
	#fregisterform .tbl_frm01 tbody th {display:none;}
	#fregisterform .tbl_frm01 tbody td p {color:#000;font-weight:600;}
	#fregisterform .tbl_frm01 tbody td {color:#888;}
	#fregisterform .tbl_frm01 tbody td input {width:100%;}
	.mobileview {display:block;}
}
@media (min-width: 480px) and (max-width: 767px) {
	#fregisterform .tbl_frm01 tbody th {display:none;}
	#fregisterform .tbl_frm01 tbody td p {color:#000;font-weight:600;}
	#fregisterform .tbl_frm01 tbody td {color:#888;}
	#fregisterform .tbl_frm01 tbody td input {width:100%;}
	.mobileview {display:block;}
}
@media (max-width: 479px) {
	#fregisterform .tbl_frm01 tbody th {display:none;}
	#fregisterform .tbl_frm01 tbody td p {color:#000;font-weight:600;}
	#fregisterform .tbl_frm01 tbody td {color:#888;}
	#fregisterform .tbl_frm01 tbody td input {width:100%;}
	.mobileview {display:block;}
}

/* 회원가입 약관 */
#fregister section {margin:0 0 20px;padding:20px 0}
#fregister h3 {margin:0 0 20px;text-align:center}
#fregister textarea {display:block;margin-bottom:10px;padding:5px;width:98%;height:150px;border:1px solid #e9e9e9;background:#f7f7f7}
#fregister .fregister_agree {padding:10px 0 0;text-align:right}
#fregister .fregister_agree label {display:inline-block;margin-right:5px}
#fregister p {color:#e8180c;text-align:center}
#fregister .btn_confirm {margin-bottom:20px}
#fregister_private .tbl_head01 th{font-family: "Nanum Gothic", 나눔고딕, dotum, 돋움, sans-serif;
	font-size: 13.3px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	letter-spacing: -1.33px;
	line-height: normal;
	text-decoration: none solid rgb(56, 56, 56);
	text-align: center;
	text-indent: 0px;
	text-transform: none;
	vertical-align: middle;
	white-space: normal;
	word-spacing: 0px;

	/* Color & Background */
	background-attachment: scroll;
	background-color: rgb(229, 236, 239);
	background-image: none;
	background-position: 0% 0%;
	background-repeat: repeat;
	color: rgb(56, 56, 56);

	/* Box */
	height: 40px;
	width: 359.062px;
	border: 1px solid rgb(209, 222, 226);
	border-top: 1px solid rgb(209, 222, 226);
	border-right: 1px solid rgb(209, 222, 226);
	border-bottom: 1px solid rgb(209, 222, 226);
	border-left: 1px solid rgb(209, 222, 226);
	margin: 0px;
	padding: 12px 0px;
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
	border-collapse: collapse;
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
	box-sizing: border-box;
	resize: none;
	text-shadow: none;
	text-overflow: clip;
	word-wrap: normal;
	box-shadow: none;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;}
#fregister_private .tbl_head01 td {
	/* Font & Text */
	font-family: "Nanum Gothic", 나눔고딕, dotum, 돋움, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	letter-spacing: -0.5px;
	line-height: 21px;
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
	height: 38px;
	width: 359.062px;
	border: 1px solid rgb(233, 233, 233);
	border-top: 1px solid rgb(233, 233, 233);
	border-right: 1px solid rgb(233, 233, 233);
	border-bottom: 1px solid rgb(233, 233, 233);
	border-left: 1px solid rgb(233, 233, 233);
	margin: 0px;
	padding: 8px 5px;
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
	border-collapse: collapse;
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
}}
#fregister_private .tbl_head01 caption{position:absolute;font-size:0;line-height:0;overflow:hidden}

/* 회원가입 입력 */
#fregisterform textarea {height:50px}

#fregisterform #msg_certify {margin:5px 0 0;padding:5px;border:1px solid #dbecff;background:#eaf4ff;text-align:center}

#fregisterform .frm_address {margin:5px 0 0}
#fregisterform #mb_addr3 {display:inline-block;margin:5px 0 0;vertical-align:middle}
#fregisterform #mb_addr_jibeon {display:block;margin:5px 0 0}

/* 회원가입 완료 */
#reg_result {padding:50px 0 0}
#reg_result #result_email {margin:20px 0;padding:10px 50px;border-top:1px solid #e9e9e9;border-bottom:1px solid #dde4e9;background:#fff;line-height:2em}
#reg_result #result_email span {display:inline-block;width:150px}
#reg_result #result_email strong {color:#e8180c;font-size:1.2em}
#reg_result #result_coupon {margin:20px 0;padding:10px 50px;border-top:1px solid #e9e9e9;border-bottom:1px solid #dde4e9;background:#fff;line-height:2em}
#reg_result #result_coupon strong {color:#ff3061;font-weight:normal}
#reg_result p {line-height:1.8em}
#reg_result .btn_confirm {margin:50px 0}

/* 아이디/비밀번호 찾기 */
#find_info #mb_hp_label {display:inline-block;margin-left:10px}
#find_info #info_fs {margin:0 20px 20px;padding:0;background:#fff}
#find_info #info_fs .frm_input {width:70%}
#find_info p {margin:0 0 10px;line-height:1.8em}
#find_info #captcha {margin:0 20px}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="container" style="width:1198px;margin:55px auto 0px auto">
	<div id="wrapper">
    
    		<div class="inner">
<!-- 회원가입약관 동의 시작 { -->
<div class="mbskin">
	<h2 style="text-align:center;" >회원가입</h2>
    <form name="fregister" id="fregister" action="/registerForm" onsubmit="return fregister_submit(this);" autocomplete="off">

    <p>회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.</p>

    <section id="fregister_term">
        <h3>회원가입약관</h3>
        <textarea readonly>  회원 가입시 이용 약관 


제 1조 목 적
본 규약의 목적은 세계주류백화점(이하 "회사")에서 운영하는 서비스를 이용함에 있어 회사와 회원간의 상호권리와 의무를 규정하는 데 있습니다.


제 2조 발 효
본 규약은 회원가입과 동시에 발효되며, 회사는 사정상 중요한 사유가 발생될 경우 사전 고지 없이 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 전자우편, 기타의 방법으로 회원에게 통지함으로써 효력이 발생합니다.


제 3조 약관 외 준칙
이 약관에 명시되지 않은 사항은 전기통신기본법,전기통신사업법, 정보통신망이용촉진등에 관한 법률 및 기타 관련법령의 규정에 따릅니다.


제 4조 이용계약의 성립
(1) 이용 계약은 이용자의 이용 신청에 대한 본부의 이용 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.
(2) 서비스 가입 신청시 본 약관을 읽고 "위의 이용자 약관에 동의합니다."의 체크 박스에 체크를 한 후 등록하기 버튼을 클릭하면 본 약관에 동의하는 것으로 간주됩니다.
(3) 이용계약은 회원의 이용신청에 대하여 회사가 심사 후 승낙함으로써 성립합니다.

제 5조 이용 신청
(1). 서비스의 회원으로 가입하여 서비스를 이용하기를 희망하는 자는 회사가 요청하는 
소정의 회원가입 신청 양식에 요청하는 항목을 기록하여 신청합니다.
(2). 온라인 가입신청 양식에 기재하는 모든 회원 정보는 실
제 데이터인 것으로 간주하며 실
제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스 사용의 제한을 받으실 수 있습니다.
(3). 이용신청회원이 가입일 기준으로 만 19세 미만인 사람은 회원 신청을 하실 수 없습니다.

제 6조 이용 신청의 유보
(1). 회사는 상기 5조 이용신청 의 내용에 따른 이용신청에 대하여 특별한 하자가 없는 한 접수 순서대로 이용 신청을 승낙합니다.
(2). 회사는 다음과 같은 경우에 이용계약 신청에 대하여 이를 승낙하지 아니할 수 있습니다.
이름이 실명이 아닌 경우
i. 다른 사람의 명의를 사용하여 신청한 경우
ii.이용 신청시 필요내용을 허위로 기재하여 신청한 경우
iii.사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
iv.기타 회사가 정한 이용 신청요건이 미비 되었을 때
(3). (1). 혹은 (2).의 각 호의 내용에 의하여 이용신청의 승낙을 유보하거나 승낙하지 않은 경우,  회사는 이를 이용신청자에게 알립니다. 다만, 회사의 귀책사유 없이 이용신청자에게 통지할 수 없는 경우는 예외로 합니다.

제 7조 계약사항의 변경
(1). 회원은 이용 신청시 기재한 사항이 변경되었을 경우에는 온라인으로 수정을 해야 하고 미변경으로 인하여 발생되는 문제의 책임은 회원에게 있습니다.
(2). 회원은 회원정보 수정을 통하여 자신의 개인정보를 관리할 수 있는 페이지를 열람할 수 있으며,해당 페이지에서 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 
단, 서비스 관리를 통하여 반드시 필요한 주민등록번호, 실명, ID, 성별 등은 수정할 수 
없습니다.

제 8조 회사의 의무
(1). 회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.
(2). 회사는 회원으로부터 소정의 절차에 의해 제기되는 의견이나 불만이 정당하다고 인정될 경우에는 적절한 절차를 거쳐 처리하여야 합니다. 처리시 일정 기간이 소요될 경우 
회원에게 그 사유와 처리 일정을 알려주어야 합니다.
(3). 회사는 회원의 개인정보보호와 관련하여 정한 개인정보보호 정책을 만들어 회원이 열람할 수 있도록 서비스 내에 고지하며 이를 지킵니다.
(4). 회사는 회원의 정보를 철저히 보안 유지하며, 양질의 서비스를 운영하거나 개선하는데에만 사용하고, 이외의 다른 목적으로 타 기관 및 개인에게 양도하지 않습니다.
(5). 회사는 회원이 동의하지 않는 영구목적의 광고성 전자우편을 발송하지 않습니다 

제 9조 회원의 의무
(1). 회원은 이 약관 및 관계 법령에서 규정한 사항을 준수하여야 하고, 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 합니다.
(2). 회사가 관계법령 및 "개인정보보호정책"에 의하여 그 책임을 지는 경우를 제외하고, 
회원에게 부여된 ID의 비밀번호의 관리 소홀, 부정 사용에 의하여 발생하는 모든 결과에 
대한 책임은 회원에게 있습니다.
(3). 회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한, 기타 이용 계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.
(4). 회원은 서비스 이용과 관련하여 다음 각 호에 해당하는 행위를 하여서는 안됩니다.
i. 다른 회원의 ID와 비밀번호, 주민등록번호를 도용하는 행위
ii. 본 서비스를 통하여 얻은 정보를 회사의 사전승낙 없이 서비스 이용 이외 목적으로 
복제하거나 이를 출판 및 방송 등에 사용하거나 
제 3자에게 제공하는 행위
iii. 타인의 특허, 상표, 영업비밀, 저작권 기타 지적재산권을 침해하는 내용을 전송, 게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위
iv. 공공질서 및 미풍양속에 위반되는 저속, 음란한 내용의 정보, 문장, 도형, 동영상 등을 전송,게시, 전자메일 또는 기타의 방법으로 타인에게 유포하는 행위
v. 모욕적이거나 위협적이어서 타인의 프라이버시를 침해할 수 있는 내용을 전송, 
게시,전자메일 또는 기타의 방법으로 타인에게 유포하는 행위
vi. 범죄와 결부된다고 객관적으로 판단되는 행위
vii. 회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위
viii. 기타 관계법령에 위배되는 행위

제 10조 회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무
(1) 아이디와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 아이디와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.
(2) 자신의 아이디가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.

제 11조 서비스 제공 중지 및 교체
(1). 회사는 다음 각 호의 내용에 해당하는 경우 서비스 제공을 중지할 수 있습니다.
i. 서비스용 설비의 보수 등 공사로 인한 부득이한 경우
ii. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우
iii. 기타 불가항력적인 사유가 있는 경우
(2). 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
(3). 회사는 A. 혹은 B.의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한 기간 등을 회원에게 알립니다.
(4). 회사는 회사가 적절하다고 판단하는 사유에 의하여 기존 서비스를 변경하거나 새로운 서비스로 교체할 수 있습니다. 

제 12조 게시물 이용
회사는 제공하는 서비스에 회원이 게시하거나 등록한 내용물이 다음 사항에 해당된다고 판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.
(1). 공공질서 및 미풍양속에 위반되는 내용인 경우
(2). 타인을 비방하거나 중상모략으로 개인 및 단체의 명예를 손상시키는 내용인 경우
(3). 타인의 저작권 등 기타의 권리를 침해하는 내용인 경우
(4). 기타 관계 법령이나 회사에서 정한 규정에서 위배되는 내용인 경우

제 13조 게시물 저작권
서비스에 게재된 자료에 대한 권리는 다음 각 호의 내용과 같습니다.
(1). 게시물에 대한 권리와 책임은 게시자에게 있으며 회사는 게시자의 동의 없이는 이를 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우에는 그러하지 아니하며 또한 서비스 내에서의 게재권을 가집니다.
(2). 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.

제 14조 계약 해지 및 이용 제한
(1). 회원이 이용계약을 해지하고자 하는 경우에는 회원 본인이 온라인을 통하여 가입해지를 회사에 신청하여야 합니다.
(2). 회사는 회원이 다음 각 혹의 내용에 해당하는 행위를 하였을 경우 사전통지 없이 
이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.
i. 회원 가입신청 또는 변경 시 허위내용을 등록한 경우
ii. 타인의 서비스 이용을 방해하거나 개인정보를 도용, 공개했을 경우
iii. 관계법령에 의거, 음란물이나 미풍양속을 해치는 행위를 했을 경우
iv. 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우
v. 회사, 다른 회원 또는 
제 3자의 인격권 또는 지적재산권을 침해하거나 업무를 방해하는 행위를 했을 경우
vi. 서비스 운영을 고의로 방해한 경우
vii. 관계 법령에 의거, 전송 또는 게시가 금지되는 정보를 전송 또는 게시했을 경우
viii. 정보통신윤리위원회 등 외부기관의 시정요구가 있거나 불법선거운동과 관련하여 
선거관리위원회의 유권해석을 받은 경우
ix. 범죄와 관련이 있다고 판단되는 행위를 한 경우
x. 기타 관계법령에 위배되는 행위를 한 경우
xi. 본 약관을 포함하여 기타 회사가 정한 이용 조건에 위반한 경우

제 15조 손해 배상 및 기타사항
회사는 서비스에서 무료로 제공하는 서비스의 이용과 관련하여 개인정보보호정책에서 정하는 내용에 해당하지 않는 사항에 대하여 어떠한 손해도 책임을 지지 않습니다

제 16조 관할법원
서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.         
       </textarea>
        <fieldset class="fregister_agree">
            <label for="agree11">회원가입약관의 내용에 동의합니다.</label>
            <input type="checkbox" name="agree" value="1" id="agree11">
        </fieldset>
    </section>

    <section id="fregister_private">
        <h3>개인정보처리방침안내</h3>
        <div class="tbl_head01 tbl_wrap">
            <table style="margin:auto">
                <caption>개인정보처리방침안내</caption>
                <thead>
                <tr>
                    <th>목적</th>
                    <th>항목</th>
                    <th>보유기간</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>이용자 식별 및 본인여부 확인</td>
                    <td>아이디, 이름, 비밀번호</td>
                    <td>회원 탈퇴 시까지</td>
                </tr>
                <tr>
                    <td>고객서비스 이용에 관한 통지,<br>CS대응을 위한 이용자 식별</td>
                    <td>연락처 (이메일, 휴대전화번호)</td>
                    <td>회원 탈퇴 시까지</td>
                </tr>
                </tbody>
            </table>
        </div>

        <fieldset class="fregister_agree">
            <label for="agree21">개인정보처리방침안내의 내용에 동의합니다.</label>
            <input type="checkbox" name="agree2" value="1" id="agree21">
        </fieldset>
    <div class="btn_confirm">
        <input type="submit" class="btn_submit" value="회원가입">
    </div>
    
    </section>

    

    </form>

    <script>
    function fregister_submit(f)
    {
        if (!f.agree.checked) {
            alert("회원가입약관의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree.focus();
            return false;
        }

        if (!f.agree2.checked) {
            alert("개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree2.focus();
            return false;
        }

        return true;
    }
    </script>
</div></div>
<!-- } 회원가입 약관 동의 끝 -->
		</div>
		</div>
</body>
</html>