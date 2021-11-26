<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Eazy Home</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet"/> 
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\index.html">Eazy Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	<li class="nav-item"><a class="nav-link" href="company">회사소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="item/itemList">스마트홈 기기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#service">서비스 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="board/list">커뮤니티</a></li>
                        
                       	<c:choose>
						    <c:when test="${sessionScope.id eq null}">
                        		<li class="nav-item"><a class="nav-link" href="member/loginForm">로그인</a></li>
						    </c:when>
						    <c:when test="${sessionScope.id eq 'admin'}">
                        		<li class="nav-item"><a class="nav-link" href="admin/adminPage">관리자</a></li>
						    </c:when>
						    <c:otherwise>
	                       		<li class="nav-item"><a class="nav-link" href="member/logout">로그아웃</a></li>
	                       		<li class="nav-item"><a class="nav-link" href="member/mypage">마이페이지</a></li>
						    </c:otherwise>
						</c:choose>
                    </ul>
                    <form class="d-flex">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\구매내역\주문내역.html">
                            <i class="bi-cart-fill me-1">장바구니</i> </a></div>
                        
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder">빛밝기센서</h1>
                        <div class="fs-5 mb-5">
                            <span>\135,000</span>
                        </div>
                        <p class="lead">- 온도센서를 이용한 태양열 측정</p>
                        <p class="lead">- 측정한 값 세그먼트를 통해 보여줌</p>
                        <div class="d-flex">
                        	<form action="./addCart" method="post">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="submit">
                                <i class="bi-cart-fill me-1">장바구니</i>
                            </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
