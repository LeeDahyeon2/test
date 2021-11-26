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
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <title>Eazy Home</title>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet"/> 
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/www/">Eazy Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	<li class="nav-item"><a class="nav-link" href="/www/company">회사소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/item/itemList">스마트홈 기기</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/#service">서비스 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="/www/board/list">커뮤니티</a></li>
                        
                       	<c:choose>
						    <c:when test="${sessionScope.id eq null}">
                        		<li class="nav-item"><a class="nav-link" href="/www/member/loginForm">로그인</a></li>
						    </c:when>
						    <c:when test="${sessionScope.id eq 'admin'}">
                        		<li class="nav-item"><a class="nav-link" href="/www/admin/adminPage">관리자</a></li>
						    </c:when>
						    <c:otherwise>
	                       		<li class="nav-item"><a class="nav-link" href="/www/member/logout">로그아웃</a></li>
	                       		<li class="nav-item"><a class="nav-link" href="/www/member/mypage">마이페이지</a></li>
						    </c:otherwise>
						</c:choose>
                    </ul>
                    <form class="d-flex">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/www/member/myCart">
                            <i class="bi-cart-fill me-1">장바구니</i> </a></div>
                        
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5" style="height: 500px">
            <div class="container px-4 px-lg-5 my-5"style="padding-top:150px">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Eazy Home 상품목록</h1>
                    <p class="lead fw-normal text-white-50 mb-0">더 많은 상품을 구경해보세요!</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">현관문</h5>
                                    <!-- Product price-->
                                    \130,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./itemDetail">상품보기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">홈블랙박스</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">\120,000</span>
                                    \110,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\홈블랙박스.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">자동화재대비</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">\125,000</span>
                                    \120,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\자동화재대비.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">차고자동문</h5>
                                    <!-- Product price-->
                                    \80,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\차고자동문.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">공기청정기</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">\120.000</span>
                                    \110,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\제습기.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">조명</h5>
                                    <!-- Product price-->
                                    \60,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\조명.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">빛밝기센서</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">\140,000</span>
                                    \135,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\빛밝기센서.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">열림감지센서</h5>
                                    <!-- Product price-->
                                    \80,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="C:\Users\sam\Documents\카카오톡 받은 파일\startbootstrap-creative-gh-pages\startbootstrap-creative-gh-pages\상품상세\열림감지센서.html">상품보기</a></div>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">구매하기</a></div>
                            </div>
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
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>
