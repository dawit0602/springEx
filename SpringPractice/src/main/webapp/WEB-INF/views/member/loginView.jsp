<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>로그인</title>

    <!-- header 부분 -->
    <%@ include file="/WEB-INF/inc/header.jsp" %>

</head>
<body id="page-top">

    <!-- navigation 부분 -->
    <%@ include file="/WEB-INF/inc/top.jsp" %>
    
    <!-- Contact Section-->
    <section class="page-section" id="contact">
    	<!-- 부트스트랩으로 padding-top 을 좀 주고자 한다. -->
        <div class="container pt-5">
            <!-- Contact Section Heading-->
            <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">로그인</h2>
            <!-- Icon Divider-->
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Contact Section Form-->
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xl-7">
                	<!-- type=submit인 버튼 클릭시 form 태그의 action 링크가 실행됨 -->
                	<!-- 회원가입 요청시 서버에서 이를 받아줘야 함 -->
                	<!-- /registDo 주소로 요청시 서버에서 회원가입 진행 -->
                	<!-- 회원가입은 GET 방식으로 하면 문제가 있을 수 있으니 POST 방식 사용 -->
                    <form id="contactForm" action="${pageContext.request.contextPath }/loginDo" method="POST">
                    	<input type="hidden" value="${fromUrl }" name="fromUrl">
                        <!-- 아이디 input-->
                        <div class="form-floating mb-3">
                        	<!-- inputId의 값이 id=value 형태로 전송되어야 함 -->
                        	<!-- 키값으로 사용될 id를 name 속성에 넣어주어야 함 -->
                            <input class="form-control" id="inputId" type="text" name="memId" value="${cookie.rememberId.value }" ${cookie.rememberId.value == null ? "autofocus" : "" }/>
                            <label for="inputId">아이디</label>
                        </div>

                        <!-- 비밀번호 input-->
                        <div class="form-floating mb-3">
                        	<!-- inputPw의 값이 pw=value 형태로 전송되어야 함. pw를 name속성에 넣어주기 -->
                            <input class="form-control" id="inputPw" type="password" name="memPw" ${cookie.rememberId.value == null ? "" : "autofocus" }/>
                            <label for="inputPw">비밀번호</label>
                        </div>
                        
                        <div class="form-check">
						  <input class="form-check-input" type="checkbox" id="checkRememberId" name="rememberId" ${cookie.rememberId.value == null ? "" : "checked" }>
						  <label class="form-check-label" for="rememberId">아이디 저장</label>
						</div>
                        
                        <!-- Submit Button-->
                        <button class="btn btn-primary btn-xl" id="submitButton" type="submit">로그인</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <!-- footer 부분 -->
    <%@ include file="/WEB-INF/inc/footer.jsp" %>

	<%-- <script type="${pageContext.request.contextPath }/text/javascript">
		// input 태그 내 value값에 대한 validation 체크하는 경우
		
	
	</script> --%>
</body>
</html>