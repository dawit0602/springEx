<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>식품 검색</title>

<style type="text/css">
.search-box {
	width: 500px;
	margin: auto;
	margin-bottom: 5px;
}

.bar-container {
	width: 100%;
	height: 100px;
	background-color: #DDDDDD;
	display: flex;
	margin-top: 15px;
	margin-bottom: 15px;
}

.bar {
	width: 1200px;
	margin: auto;
}

.explain-container {
	width: 1200px;
	margin: auto;
}

.img-box {
	width: 100%;
	height: 1000px;
}

.algImg {
	width: 100%;
	height: 100%;
}
</style>

<style>
.prd-container {
	width: 1300px;
	margin: auto;
	border: 1px solid black;
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 20px;
}

.card {
	width: calc(100%/ 3 - 50px);
	height: 400px;
	border: 1px solid black;
	margin-bottom: 50px;
	cursor: pointer;
}

.card-top {
	height: 70%;
	overflow: hidden;
	display: flex;
	justify-content: center;
}

.card-top>img {
	height: 100%;
	overflow: hidden;
}

.card-bottom {
	height: 30%;
	font-size: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.text{
		text-decoration: none;
		color: black;
		padding: 5px;
		margin: 5px;
	}
</style>

<%@ include file="/WEB-INF/inc/header.jsp"%>

</head>
<body>

	<%@ include file="/WEB-INF/inc/top.jsp"%>
	

	<div class="bar-container">
		<div class="bar">
			<a class="navbar-brand" href="${pageContext.request.contextPath }">
				<img src="assets/home.png" alt="Bootstrap" width="30" height="24">
			</a> <a class="text" href="#">식품 검색</a>
		</div>
	</div>
	
	<div class="search-box">
		<form class="d-flex"
			action="${pageContext.request.contextPath }/prdView" method="GET">
			<select class="form-select me-1" name="searchOption">
				<option selected>전체</option>
				<option value="alg">알레르기</option>
				<option value="prdNm">식품명</option>
				<option value="prdGb">축산/식품구분</option>
			</select> <input class="form-control me-1" type="text" name="searchWord">
			<button class="btn btn-primary" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 
					1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
				</svg>
			</button>
		</form>
	</div>

	<div class="prd-container">
		<table class="table table-hover">
			<c:forEach items="${keyProductList }" var="productDTO" begin="1" end="400" step="1" varStatus="status">
				<div class="card">
					<input type="hidden" value="${productDTO.rnum }" />
					<div class="card-top">
						<img src="${productDTO.imgurl1 }">
					</div>
		
					<div class="card-bottom row">
						<div class="justify-content-center d-flex">${productDTO.prdlstNm }</div>
						<br>
						<c:if test="${productDTO.allergy == '^.*(없음).*'}">
							<div class="allergy row justify-content-center">알레르기: 없음</div>
						</c:if>
						<c:if test="${ productDTO.allergy != '^.*(없음).*'}">
							<div class="allergy row justify-content-center">알레르기: ${productDTO.allergy }</div>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</table>
	</div>


	<%@ include file="/WEB-INF/inc/footer.jsp"%>

</body>

</html>