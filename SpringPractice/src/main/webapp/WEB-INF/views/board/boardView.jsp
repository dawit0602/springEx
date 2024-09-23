<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자유 게시판</title>

<!-- header 부분 -->
<%@ include file="/WEB-INF/inc/header.jsp"%>

</head>
<body id="page-top">

	<!-- navigation 부분 -->
	<%@ include file="/WEB-INF/inc/top.jsp"%>

	<!-- Contact Section-->
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<!-- 부트스트랩으로 padding-top 을 좀 주고자 한다. -->
		<div class="container pt-5">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">자유
				게시판</h2>
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

					<!-- 게시글 그리기(table) -->
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">글번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${keyBoardList}" var="boardDTO">
								<tr>
									<td>${boardDTO.boNo }</td>
									<td><a
										href="${pageContext.request.contextPath }/boardDetailView?boardNo=${boardDTO.boNo}">${boardDTO.boTitle }</a></td>
									<td>${boardDTO.memNm }</td>
									<td>${boardDTO.boDate }</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<div class="col-lg-8 col-xl-7 d-flex justify-content-end">
					<a href="${pageContext.request.contextPath }/boardWriteView">
						<button class="btn btn-primary btn-xl">글쓰기</button>
					</a>
				</div>

				<div class="d-flex justify-content-center">
					<nav aria-label="...">
						<ul class="pagination">
							<li class="page-item disabled"><span class="page-link">Previous</span>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active" aria-current="page"><span
								class="page-link">2</span></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a>
							</li>
						</ul>
					</nav>
				</div>

				<div>
					<form class="d-flex"
						action="${pageContext.request.contextPath }/boardView"
						method="GET">
						<select class="form-select me-1" name="searchOption">
							<option selected>전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="writer">작성자</option>
						</select> <input class="form-control me-1" type="text" name="searchWord">
						<button class="btn btn-primary" type="submit">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
							</svg>
						</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- footer 부분 -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>

	<%-- <script type="${pageContext.request.contextPath }/text/javascript">
		// input 태그 내 value값에 대한 validation 체크하는 경우
		
	
	</script> --%>
</body>
</html>