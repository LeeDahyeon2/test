<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=nc1LCoAwDIThvbj1HEFv1Ib4gKYjSQp6e_UG0u3wfwztUKF5MToNmyUlE0czFmJ3Wg01iKGKOr7DRH964cFRWhyoQ8bVCVtE72lJt1gfjZSLfPQB&amp;type=css&amp;k=6ff09804d00b24cef12b4ab8b2a6e5c2fc3eb52b&amp;t=1630468260" /><link rel="stylesheet" type="text/css" href="https://www.ys2.co.kr/ind-script/optimizer.php?filename=rdRNTgUhDADg_Ru3nqOJ8RLuTDwBdOrQDFBCizqeXiY-V670dcnfF9pCIUkhIFyGUlc49KFCGzEzLslKBl1pWUl5q6A710fI4ZBhEIMyAqrOs5c5oMtcoH43Z-7hr-bJFFlHJpC-Uj_1new54B42cjJXfKqvcjNWDk3S4J01ZVb7n_criSilSHXCfioy2Bk0kWzcnNVE2ZtsfRYLzVsNG9dg5J3VEJ3FOMzcX1OUD__As3cy5y50Ir8nbm4YV7eM-XXO1vGSuDWumxeMUt_mWZbavCLHoSaFP6-3_AI&amp;type=css&amp;k=dd901fd93b5fee9f026e4daf245cd2f8c5f2f977&amp;t=1571612613&amp;user=T" />
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
                    	<li class="navbar nav-item"><a class="navbar nav-link" href="/www/company"">????????????</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/item/itemList">???????????? ??????</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/#service">????????? ??????</a></li>
                        <li class="navbar nav-item"><a class="navbar nav-link" href="/www/board/list">????????????</a></li>
                        
                       	<c:choose>
						    <c:when test="${sessionScope.id eq null}">
                        		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/loginForm">?????????</a></li>
						    </c:when>
						    <c:when test="${sessionScope.id eq 'admin'}">
                        		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/admin/adminPage">?????????</a></li>
						    </c:when>
						    <c:otherwise>
	                       		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/logout">????????????</a></li>
	                       		<li class="navbar nav-item"><a class="navbar nav-link" href="/www/member/mypage">???????????????</a></li>
						    </c:otherwise>
						</c:choose>
                    </ul>
                    <form class="navbar d-flex">
                        <div class="navbar text-center"><a class="navbar btn btn-outline-dark mt-auto" href="/www/member/myCart">
                            <i class="navbar bi-cart-fill me-1">????????????</i> </a></div>
                        
                    </form>
                </div>
            </div>
        </nav>
    <div class="board_wrap">
        <div class="board_title">
            <strong>???????????????</strong>
            <p>???????????? ????????? ???????????? ???????????????.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    ??? ?????? ?????? ?????????!
                </div>
                <div class="info">
                    <dl>
                        <dt>??????</dt>
                        <dd>2</dd>
                    </dl>
                    <dl>
                        <dt>?????????</dt>
                        <dd>?????????</dd>
                    </dl>
                    <dl>
                        <dt>?????????</dt>
                        <dd>2021.11.02</dd>
                    </dl>
                    <dl>
                        <dt>??????</dt>
                        <dd>3</dd>
                    </dl>
                </div>
                <div class="cont">
                    ????????? ??????????????? ????????? ????????? ???????????? ???????????????!<br>
                    ????????? ?????? ??????????????? ????????? ????????? ????????? ???????????? ???????????? ??? ??? ??????????????????<br>
                    ?????????????????? ?????? ????????? ???????????? ?????? ?????? ??? ?????????..<br>
                    ?????? ????????? ?????? ????????????!<br>
                    ??? ??? ???????????? ??????????????? ????????? ??? ????????????????????????
                </div>
            </div>
            <div class="bt_wrap">
                <a href="./delete">??????</a>
                <a href="./list" class="on">??????</a>
                <a href="./modify">??????</a>
            </div>
        </div>
    </div>
    <form id="commentForm" name="" action="https://www.ys2.co.kr/exec/front/Board/CommentUpdate/4" method="post" target="_self" enctype="multipart/form-data" >
<input id="board_no" name="board_no" value="4" type="hidden"  />
<input id="no" name="no" value="9532" type="hidden"  />
<input id="comment_no" name="comment_no" value="" type="hidden"  />
<input id="member_id" name="member_id" value="" type="hidden"  /><div class="xans-element- xans-board xans-board-commentform-4 xans-board-commentform xans-board-4 "><fieldset>
<legend>?????? ??????</legend>
            <p>???????????? : <input id="comment_password" name="comment_password" fw-filter="isFill" fw-label="??????????????????" fw-msg="" value="" type="password"  /> <span class="secret displaynone"><label>????????????</label></span></p>
            <div class="view">
                <textarea id="comment_modify" name="comment_modify" fw-filter="isFill" fw-label="????????????" fw-msg="" ></textarea>                <span class="submit">
                    <a href="#none" class="btnEm sizeL" onclick="BOARD_COMMENT.comment_update_ok('commentForm');">??????</a>
                    <a href="#none" class="btnNormal sizeL" onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');">??????</a>
                </span>
            </div>
            <p class="displaynone"> /  byte</p>
        </fieldset>
</div>
</form>

    <div id="sidebar">
<!-- ?????? ?????? ??????????????? -->

			<div style="position:fixed; top: 100px; left:250px;  right: 0;">
			<div class="xans-element- xans-custom xans-custom-moduleedit-6 xans-custom-moduleedit xans-custom-6 side_title ">COMMUNITY</div>

			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">????????????</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">???????????????</a></div>
			<div class="xans-element- xans-custom xans-custom-moduleedit-7 xans-custom-moduleedit xans-custom-7 category_menu "><a href="./list">qna</a></div>
			</div>
        </div><!-- //sidebar -->
</body>
</html>