<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Eazy Home</title><!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/admin_styles.css" rel="stylesheet"/> 
        <link href="${pageContext.request.contextPath}/resources/css/member_css.css" rel="stylesheet"/> 
        <link href="${pageContext.request.contextPath}/resources/css/fileUpload.css" rel="stylesheet"/> 
        <script src="${pageContext.request.contextPath}/resources/js/fileUpload.js"></script>
        <!-- Favicon-->
        <link href="${pageContext.request.contextPath}/resources/assets/favicon.ico" rel="icon" type="image/x-icon"/> 	
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script language="javascript">	//회원가입 유효성검사
			function checkAll() {
        				if (!checkItemCode(form.itemCode.value)) {
            				return false;
        				}
        				if (!checkItemName(form.itemName.value)) {
            				return false;
        				}
        				
        				if (!checkPrice(form.price.value)) {
            				return false;
        				}
        				if (!checkStock(form.stock.value)) {
            				return false;
        				}
        				if (!checkItemInfo(form.itemInfo.value)) {
            				return false;
        				}
 			}

			function checkExistData(value, dataName) {
        				if (value == "") {
            				alert(dataName + " 입력해주세요");
            				return false;
        				}
        				return true;
    			}

			function checkItemCode(itemCode) { //상품 코드 검사
        				//상품 코드가 입력되었는지 확인하기
       				 if (!checkExistData(itemCode,"상품 코드를"))
           					 return false;
 
        				return true; //확인이 완료되었을 때
    			}

			function checkItemName(itemName) { //상품 이름 검사
        				//상품 이름이 입력되었는지 확인하기
        				if (!checkExistData(itemName, "상품 이름을"))
            				return false;
        				return true; //확인이 완료되었을 때
   			 }

			function checkPrice(price) {			//가격 검사
        				//가격이 입력되었는지 확인하기
       		 		if (!checkExistData(price, "가격을"))
            				return false;
 
	       		 	if (price<=0){
						alert("유효하지 않은 가격입니다.");
	            				form.price.value = "";
	            				form.price.focus();
	            				return false;
					}
        				return true; //확인이 완료되었을 때
    			}

			function checkStock(stock) {			//가격 검사
				//가격이 입력되었는지 확인하기
		 		if (!checkExistData(stock, "재고를"))
    				return false;

   		 	if (stock<=0){
				alert("유효하지 않은 재고입니다.");
        				form.stock.value = "";
        				form.stock.focus();
        				return false;
				}
					return true; //확인이 완료되었을 때
			}	
			function checkItemInfo(itemInfo) {
   	 			if (!checkExistData(itemInfo, "상품 설명을"))
        				return false;

    				return true; //확인이 완료되었을 때
			}
		</script>
    </head>
    <body class="sb-nav-fixed">

        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>

                                </nav>
                            </div>

                            <a class="nav-link" href="./adminPage">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                판매 그래프
                            </a>
                            <a class="nav-link" href="./itemList">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                상품 목록
                            </a>
                            <a class="nav-link" href="./memList">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                회원 목록
                            </a>
                            <a class="nav-link" href="./sales">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                판매 내역	
                            </a>
                            <a class="nav-link" href="/www/">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                메인 페이지
                            </a>
                        </div>
                    </div>

                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">상품 추가</h1>
                        <div class="card mb-4">
                            <div class="card-body">
                                스마트홈 상품 상품 목록을 확인할 수 있습니다. 관리자만 열람 가능합니다.
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                상품 추가
                            </div>
                            <div class="card-body">
                            <form name="form" action="./addItemGo" method="post" onsubmit="return checkAll()" enctype="multipart/form-data">
        

                <!-- ITEMCODE -->
                <div>
                    <h3 class="join_title">
                        <label for="id">상품 코드</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" name="itemCode" class="int">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- ITEMNAME -->
                <div>
                    <h3 class="join_title"><label for="pswd1">상품 이름</label></h3>
                    <span class="box int_pass">
                        <input type="text" name="itemName" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- price -->
                <div>
                    <h3 class="join_title"><label for="pswd2">가격</label></h3>
                    <span class="box int_pass_check">
                        <input type="number" name="price" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- stock -->
                <div>
                    <h3 class="join_title"><label for="name">재고</label></h3>
                    <span class="box int_name">
                        <input type="number" name="stock" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>
			<br>
                <div>
                    <h3 class="join_title"><label for="name">상품 설명</label></h3>
                    <span class="box int_name"style="height:300px;">
                        <textarea name="itemInfo" class="int" style="height:280px;">
                        </textarea>
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- itemfile -->
                <!-- <div class="filebox">
                    <h3 class="join_title">상품 이미지</h3>
                    <div id="bir_wrap">
                        BIRTH_YY
                        <div class="box">
						  <span class="filetype">
						            <span class="file-text"></span>
						  <span class="file-btn"><label for="file">파일찾기</label></span>
						  <span class="file-select"><input type="file" class="input-file" size="3" onchange="uploadChange(this);"></span>
						  </span>
						</div>
                        <div id="bir_yy">
                        <span class="box">
				    		<input class="upload-name" value="첨부파일" placeholder="첨부파일">
                        </span>
                        </div>
                    </div> 
				</div> -->
				<div class="filebox">
					<h3 class="join_title">상품 이미지</h3>
				  <span class="filetype">
				            <span class="file-text"></span>
				  <label for="input_file">파일 찾기</label> 
				  <input type="file" id="input_file" name="itemFile"class="file_hidden"onchange="uploadChange(this);">
				  </span>
				</div>
				
                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>상품 올리기</span>
                    </button>
                </div>
        </form>
        </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/datatables-simple-demo.js"></script>
    </body>
</html>
