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
        <title>Eazy Home - main</title>
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet"/> 
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/> 

    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Eazy Home</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="company">회사소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="item/itemList">스마트홈 기기</a></li>
                        <li class="nav-item"><a class="nav-link" href="#service">서비스 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="board/list">커뮤니티</a></li>
                   		<li class="nav-item"><a class="nav-link" href="admin/adminPage">관리자</a></li>
                        
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
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" id="company">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">Smart Home으로 더 편리하게 더 스마트하게</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">통신사와 관계없이 스마트폰과 Wi-Fi가 되는 유무선 공유기와 스마트 디바이스만 있으면 Smart Home을 만날 수 있습니다.</p>
                        <a class="btn btn-primary btn-xl" href="./company">더 알아보기</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="product">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">Smart Home과 함께하는 즐거운 변화</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">스마트한 생활을 지금 확인해보세요.</p>
                        <a class="btn btn-light btn-xl" href="./item/itemList">Go!</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Services-->
        <section class="page-section" id="service">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">서비스 소개</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center"> 
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-house-door fs-1 text-primary fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">현관문</h3>
                            <p class="text-muted mb-0">인체감지센서와 도어락을 통해 보다 안전한 생활을 보장합니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-camera-video fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">홈블랙박스</h3>
                            <p class="text-muted mb-0">CCTV를 통해 앱으로 경비확인 가능합니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-wind fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">공기청정</h3>
                            <p class="text-muted mb-0">미세먼지 측정하여 자동으로 공기,습도 조절을 해줍니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-door-open fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">열림감지센서</h3>
                            <p class="text-muted mb-0">비로인해 물이 들어왔을 때 자동으로 문을 닫아줍니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-exclamation-octagon fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">차고 자동문</h3>
                            <p class="text-muted mb-0">자신의 차가 도착했을 때 자동으로 차고문이 열리게 합니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-broadcast-pin fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">자동화재대비</h3>
                            <p class="text-muted mb-0">불,가스가 감지된다면 사이렌소리와 함께 앱으로 확인이 가능합니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-lightbulb fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">조명</h3>
                            <p class="text-muted mb-0">앱을 통해서 조명을 자동으로 껐다 켰다 할 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi bi-brightness-high fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">빛밝기센서</h3>
                            <p class="text-muted mb-0">태양빛이 들어오면 얼마정도 양인지 세그먼트로 알려줍니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2021 - Company Name</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
