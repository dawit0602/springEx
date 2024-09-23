<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		.login{
			font-weight: bold;
			text-decoration: none;
			color: black;
		}
		
		.regist{
			font-weight: bold;
			text-decoration: none;
			color: black;
		}
		
		.login:hover{
			color:white;
		}
		
		.regist:hover{
			color:white;
		}
	</style>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="${pageContext.request.contextPath }">식품 확인</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">개요</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="${pageContext.request.contextPath }/allergy">알레르기란?</a></li>
							<li><a class="dropdown-item" href="${pageContext.request.contextPath }/allergy2">알레르기 반응을 일으킬 수 있는 음식들</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath }/prdView">식품 검색</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/boardView">자유게시판</a></li>
				</ul>
				<div class="login-box d-flex">
					<c:if test="${sessionScope.login.memId == null}">
						<div class="btn btn-outline-dark me-1 ms-1">
							<a class="login" href="${pageContext.request.contextPath }/loginView">로그인</a>
						</div>
						<div class="btn btn-outline-dark">
							<a class="regist" href="${pageContext.request.contextPath }/registView">회원가입</a>
						</div>
					</c:if>
					<c:if test="${sessionScope.login.memId != null}">
						<div class="login btn btn-outline-dark me-1 ms-1">
							<li class="nav-item dropdown" style="list-style:none;"><a class="nav-link dropdown-toggle login" id="navbarDropdown" href="${pageContext.request.contextPath }/memEditView" role="button" data-bs-toggle="dropdown" aria-expanded="false">${sessionScope.login.memNm } 님</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="${pageContext.request.contextPath }/memEditView">회원수정</a></li>
								<li><a class="dropdown-item regist" href="${pageContext.request.contextPath }/logoutDo">로그아웃</a></li>
							</ul></li>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</nav>

</body>
</html>