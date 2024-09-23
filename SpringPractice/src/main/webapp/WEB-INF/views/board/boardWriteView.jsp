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
    <title>글쓰기</title>
    

    <!-- header 부분 -->
    <%@ include file="/WEB-INF/inc/header.jsp" %>

</head>
<body id="page-top">

    <!-- navigation 부분 -->
    <%@ include file="/WEB-INF/inc/top.jsp" %>
    
    <!-- Contact Section-->
    <!-- Contact Section-->
	<section class="page-section" id="contact">
		<!-- 부트스트랩으로 padding-top 을 좀 주고자 한다. -->
		<div class="container pt-5">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">회원 게시판</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
		 		<div class="col-lg-8 col-xl-7">
					<form id="contactForm" action="${pageContext.request.contextPath }/boardWriteDo" method="POST">
						<div class="mb-3 d-flex align-items-center justify-content-center">
							<label for="inputTitle" class="me-3">제목</label>
							<input class="form-control w-75" id="inputTitle" type="text" name="boTitle">
						</div>
						<div class="mb-3">
							<textarea class="form-contorl w-100" name="boCon" rows="10"></textarea>
						</div>
						<div class="d-flex justify-content-end me-1">
							<button class="btn btn-primary" id="submitButton" type="submit">등록</button>
						</div>
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