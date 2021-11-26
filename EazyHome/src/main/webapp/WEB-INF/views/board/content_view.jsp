<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<!-- Mirrored from www.ys2.co.kr/article/상품-사용후기/4/9532/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Sep 2021 19:13:48 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<link rel="stylesheet" type="text/css" href="./img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css" charset="utf-8"/>
<link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=nZBBCsMwEAPvIde-Q7RP6BP6g42zSQq2ZdZraH_f3JJLoPgqNCMQNibF_WEoxtUkwbSyWVCEWrEYsyMwJeZxD274p69hqIzN38zDxE8n2Nx7R6N81fpQlynqBSql4EmxGa-z5LjnBw&amp;type=css&amp;k=17b80b9991c602487789e50836af0bc28de7ad76&amp;t=1614104533" /><link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=rdRRboMhCADg9_573TlIlh1kyU6gyJRUxQg2a08_u_UEK4-KfkFUoEgjIDyW0lS46luHsWJlPIq1CproSKScO-iZ-zugKjRJqxJECTPBpJA-Ap5DppcdfIWnRZTWqJsv2uRCd9WJq6ymecoaTuDX6mgs_X9cDVdZBjEo4699r6EbRnjaAzotdgZNpBoPZ7VQ9SbH3HeF5q2GzD0YeVc1RGcxLjP31xTl2__g1buYexU6kX8TzvntAM2ne9CDb2t_Ry0yPguPwT17wSj9svfu_ja8qolLTRrfHln-AA&amp;type=css&amp;k=c61d6c5fb5e112501cbf7ed5655a04b6051c077d&amp;t=1571612613&amp;user=T" />
<title>Eazy Home</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet"/> 
<link href="${pageContext.request.contextPath}/resources/css/media.css" rel="stylesheet"/> 
<link href="${pageContext.request.contextPath}/resources/css/board_style.css" rel="stylesheet"/> 
<!-- Favicon-->
<link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/> 	
</head>
<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="navbar container px-4 px-lg-5" style="height: 42px">
                <a class="navbar navbar-brand" href="/www/">Eazy Home</a>
                <button class="navbar navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="navbar collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	<li class="navbar nav-item"><a class="navbar nav-link" href="/www/company"">회사소개</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/item/itemList">스마트홈 기기</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/#service">서비스 소개</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/board/list">커뮤니티</a></li>
                        
                       	<c:choose>
						    <c:when test="${sessionScope.id eq null}">
                        		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/loginForm">로그인</a></li>
						    </c:when>
						    <c:when test="${sessionScope.id eq 'admin@naver.com'}">
                        		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/admin/adminPage">관리자</a></li>
                        		<li class="nav-item"><a class="nav-link" href="/www/member/logout">로그아웃</a></li>
						    </c:when>
						    <c:otherwise>
	                       		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/logout">로그아웃</a></li>
	                       		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/mypage">마이페이지</a></li>
						    </c:otherwise>
						</c:choose>
                    </ul>
                    <form class="navbar d-flex">
                        <div class="navbar text-center"><a class="navbar btn btn-outline-dark mt-auto" href="/www/member/myCart">
                            <i class="navbar bi-cart-fill me-1">장바구니</i> </a></div>
                        
                    </form>
                </div>
            </div>
        </nav>
    
<hr class="layout"/><div id="wrap">
    <div id="container">
        <div id="contents">
<div class="board_wrap">
        <div class="board_title">
            <strong>자유게시판</strong>
            <p>여러분의 의견을 자유롭게 올려주세요.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    와 여기 너무 좋네요!
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>2</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>심혜령</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2021.11.02</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>3</dd>
                    </dl>
                </div>
                <div class="cont">
                    저번에 조도센서가 적용된 스마트 선풍기를 구매했어요!<br>
                    잠결에 조금 더워졌는데 알아서 선풍기 전원이 들어와서 쾌적하게 잘 수 있었네요ㅠㅠ<br>
                    일상생활에서 이런 편의를 가지는건 정말 좋은 것 같아요..<br>
                    상품 설명도 너무 좋았어요!<br>
                    좀 더 둘러보고 좋은품목이 있으면 또 구매하려구요ㅎㅎ
                </div>
            </div>
            <div class="bt_wrap">
                <a href="./delete">삭제</a>
                <a href="./list" class="on">목록</a>
                <a href="./modify">수정</a>
            </div>
        </div>
    </div>
<div class="xans-element- xans-board xans-board-commentpackage-4 xans-board-commentpackage xans-board-4 "><div class="xans-element- xans-board xans-board-commentlist-4 xans-board-commentlist xans-board-4"><!--
            $delete_page_url = /board/product/comment_del.html
            $delete_success_url = /board/product/read.html
        -->
<ul class="boardComment">
<li class="first  xans-record-">
                <div class="commentTop">
                    <strong class="name">  영숙이아줌마아들</strong>
                    <span class="date">2021-09-12 17:00:25</span>
                    <span class="grade displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/ico_point0.gif" alt="0점"/></span>
                </div>
                <span class="button">
                    <a href="./replyModi" class="btnNormal" >수정</a>
                    <a href="./replyDelete" class="btnNormal"><i class="icoDelete"></i> 삭제</a>
                    <a href="javascript:;" onclick="" class="btnNormal displaynone">댓글 <img src="//img.echosting.cafe24.com/skin/base/common/btn_icon_reply.gif" alt=""/></a>
                </span>
                <div class="comment">
                    <span class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_spam.gif" alt="스팸글"/></span>
                     <span id="comment_contents9180">현재 남아있는게 중품 하품밖에 없어서 우선 주문안되도록 상품옵션에 선조치해두었습니다 ㅠㅠ </span>                </div>
            </li>
                    </ul>
<div class="ec-base-button typeBG spam displaynone">
            <span class="gLeft">
                <a href="#none" onclick="" class="btnNormalFix sizeS ">스팸신고</a>
                <a href="#none" onclick="" class="btnNormalFix sizeS ">스팸해제</a>
            </span>
        </div>
</div>
<div class="xans-element- xans-board xans-board-commentwrite-4 xans-board-commentwrite xans-board-4 "><!-- 댓글권한 있음 -->
<div>
            <fieldset>
<legend>댓글 입력</legend>
                <div class="input">
                    <strong>댓글달기</strong>
                    <span class="">이름 : <input id="comment_name" name="comment_name" fw-filter="isFill" fw-label="댓글작성자" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></span>비밀번호 : <input id="comment_password" name="comment_password" fw-filter="isFill" fw-label="댓글비밀번호" fw-msg="" value="" type="password"  /><span class="secret displaynone"><label>비밀댓글</label></span><a href="#none" onclick="" class="btnNormal displaynone">관리자답변보기</a>
                    <p class="ec-base-help displaynone">영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자</p>
                </div>
                <div class="view">
                    <textarea id="comment" name="comment" fw-filter="isFill" fw-label="댓글내용" fw-msg="" ></textarea>                   
                     <a href="./reply" class="btnEm sizeL">확인</a>
                </div>
                <p class="grade displaynone"></p>
                <p class="displaynone"> /  byte</p>
                <p class="captcha displaynone">
                                                             <span class="ec-base-help txtInfo">왼쪽의 문자를 공백없이 입력하세요.(대소문자구분)</span>
                </p>
            </fieldset>
</div>
</div>
</div>

<!-- //main_insta_box -->
		</div><hr class="layout"/>
		<div id="sidebar">
<!-- 좌측 로고 수정하는곳 -->

			<div style="position:fixed; top: 100px; left:250px;  right: 0;">
			<div class="xans-element- xans-custom xans-custom-moduleedit-6 xans-custom-moduleedit xans-custom-6 side_title ">COMMUNITY</div>

			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">공지사항</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">자유게시판</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">qna</a></div>
			</div>
        </div><!-- //sidebar -->
    </div><!-- //container -->
	<hr class="layout"/><div id="quick"></div>
</div><!-- //wrap -->
<hr class="layout"/>
<div style="height:50px"> </div>

<!-- //결제를 위한 필수 영역 -->



<script type="text/javascript">var sAuthSSLDomain = "https://login2.cafe24ssl.com/";</script><script type="text/javascript" src="./login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script><script type="text/javascript" src="./login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>
<script type="text/javascript" src="https://www.ys2.co.kr/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2109081252" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=zVjbUtswEP0A_NrvcGk7nb5C6OUBBobL8LyR1_YSWavqQup-fdcmtITWiS3DTCczxCg6R6vV2Yuc19xgfvjO5aWDBtfsVrlDz9EpzO98ToefTHbn3-S75kWyoFb53feIrt18vc8-Zm8nIvFHQGdA-81ApphXhHNZotNJW8hQZaVJhhpWbEpNKiRRHGYf5JO0uPwa2D3zm3VcCX7rdAsIGEgmNDLLhBzVWf9wS6G-_nkCAbKGzAQeTUtB4bU870d568iEcgQ9q9iZ9YVds2ATHGuNbj_uQkd_ZO2xo6IaYU8MpPfPKp1YkCtuGjZjZ_8AI6FkRJfWYRhj-hNcwMZqceq_QWBtfsZL0phfPsE_2LdjSwO4hosoQ35NdtqCZTQqkCwp84oomm8GFTiWYYcRorP85kH6Tyk0_Gw1QzEJ1MQA3brnS4_ufuhwBsCWdVuSHq2bAkuIOnQu8A24cAzGPF9yeoZbVtSD_o98W0j0Gy8e9XOZEDyZai5LgwGKLpcNqvGqZrt1rF_6w1r0QXSzM4aOGVyxhZXRbNmNpoGiUmlAh8-Fv9dVVseKJMXcgybxELtHl_0eyOQB_Gza7kxM4f-mFwYrQsHXW6FGbfHV91GDKfTkQJ6wgCQmKtvX45ckFl7MTZoVSHZf8f60-MeCvVOPYqivrk7ToqMriNJCTM8BUnkrdu0p-R3gMzBQbZezNS41V5OKySI6h0a1uRdbDqQ7UjgDrzb_HZTSNkGYa8lL0YzrsurQaDkuCoR-ktvBt0Y9_E3GNdgsh_qAEfBzV6BTJiQTHINfYZjPsENBozkuNs1YKsuCoyT4OXs5k0YRqvR9nKBlT-nr35KvJ0f_cwLFcYYLHCqcAb_s4dccQC9m2dErO11QaLCkuaI-hXaGDV8dFOlSkgrEkgNJ9TRSMdbpqpZbAF2wjTadQorSCjcBOu9gt6hmif2U7lGTWQ1djseq7Bt17zDaF9Drhukalgk8FkLtWOPBnj5ljGcGL6YDYJuQeh9K14F0HjTtAPw6k55N7wqtz5uL1fatve-S5GevHNkwEd3drfKjrvuyqPoXJCXsKln_JNmKUGsXj69mfgE&type=js&k=fe7fd53d59733754870c5223205a7e23d8ca1e41&t=1630435158"></script><script type="text/javascript" src="https://www.ys2.co.kr/ind-script/optimizer.php?filename=rdAxDsIwDAXQA6Qr57CEuAknSBPTuI2dUDug3p4KiYWxzWDJy3_6NqTCCBhcU1wVNr0K1DZmCi4ZZ9CILqLSJKALyQ2y30ozGL1SgFkBXyjmzI_DrBc4q32XQ9IeDoW5yNE0l9gy_ho9G4XFvQjfXe7iE93-LRI1_0CMA1NH0e2zWp_vBW84lXXro3HLRppKvSeqlWTa2Q8&amp;type=js&amp;k=1b6d53b949c87edf16ef189dcc2b447c2f7818c7&amp;t=1571612613&amp;user=T"></script>
<script type="text/javascript">
var EC_MOBILE = false;
var EC_MOBILE_DEVICE = false;
var EC_MOBILE_USE = true;
var mobileWeb = false;
EC$(function() {
try{
var ifame_width = parent.EC$('#blog_9532').parent().width();
parent.EC$('#blog_9532').contents().find('body').css( 'min-width', ifame_width);
parent.EC$('#blog_9532').css('width', ifame_width);
if (parseInt(parent.EC$('#blog_9532').css('height')) < (document.body.scrollHeight + 70)) {
parent.EC$('#blog_9532').css('height', document.body.scrollHeight + 70);
}
}catch(e){};
});
EC$(function(){
FwValidator.bind("BoardDelForm", false);
});
var sFormId = 'BoardDelForm'
var sEleId = ["BoardDelForm::password"]
AuthSSL.Bind(sFormId, sEleId);
EC$(function(){
FwValidator.bind("commentForm", false);
});
EC$(function() {
EC$('#commentForm').css('display', 'none');
});
EC$(function(){
FwValidator.bind("commentSecretForm", false);
});
EC$(function() {
EC$('#commentSecretForm').css('display', 'none');
});
var aLogData = {"log_server1":"eclog2-033.cafe24.com","log_server2":"elg-db-svcm-061.cafe24.com","mid":"ys2n","stype":"e","domain":"","shop_no":"1","lang":"ko_KR","ver":2,"hash":"","ca":"cfa-js.cafe24.com\/cfa.js","etc":""};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
var EC_ASYNC_LIVELINKON_ID = '';
if (EC$('[async_section=before]').length > 0) {
EC$('[async_section=before]').addClass('displaynone');
}
var EC_APPSCRIPT_ASSIGN_DATA = EC_APPSCRIPT_ASSIGN_DATA || [{'src':'https://instagram-widget.wehost24.com/js/instagram-widget.js?vs=20191021102348.1&client_id=pOawpY4gJZ0oBnihDmiReG'},{'src':'https://file.cloudturing.com/cafe24/naver/bubble.js?vs=20191021111540.1&client_id=ejf67zQS5kk8qvPDJl7SKG'}];
var EC_APPSCRIPT_SDK_DATA = EC_APPSCRIPT_SDK_DATA || ['application','category','product','store'];
</script></body>
<!-- Mirrored from www.ys2.co.kr/article/상품-사용후기/4/9532/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Sep 2021 19:13:51 GMT -->
</html>
