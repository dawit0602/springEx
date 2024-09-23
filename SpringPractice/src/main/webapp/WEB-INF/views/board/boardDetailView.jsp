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
    <title>${boardDTO.boTitle }</title>
    

    <!-- header 부분 -->
    <%@ include file="/WEB-INF/inc/header.jsp" %>

	<style type="text/css">
		.board-title{
			font-weight: bold;
			font-size: 22px;
			margin-bottom: 10px;
		}
		
		.name-date{
			display: flex;
			justify-content: space-between;
			margin-bottom: 10px;
		}
		
		.board-name{
			font-size: 20px;
		}
		
		.board-date{
			font-size: 20px;
		}
		
		.board-head{
			border-bottom: 1px solid #1abc9c;
		}
		
		.board-body{
			padding-top: 10px;
			min-height: 300px;
			font-size: 24px;
			font-family: "Nanum Pen Script", system-ui;
			font-weight: 400;
			font-style: normal;
		}
		
		.reply-box{
			border-top: 2px solid black;
			border-bottom: 1px solid #DDDDDD;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		
		.reply-box img{
			cursor: pointer;
		}
		
	</style>
</head>
<body id="page-top">

    <!-- navigation 부분 -->
    <%@ include file="/WEB-INF/inc/top.jsp" %>
    
    <!-- Contact Section-->
    <!-- Contact Section-->
	<section class="page-section" id="contact">
		<!-- 부트스트랩으로 padding-top 을 좀 주고자 한다. -->
		<div class="container pt-5">
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
		 		<div class="col-lg-8 col-xl-7">
					<!-- 제목, 작성자, 작성일, 내용 -->
					<div>
						<div class="board-head">
							<div class="board-title">${board.boTitle }</div>
							<div class="name-date">
								<div class="board-name">${board.memNm }</div>
								<div class="board-date">${board.boDate }</div>
							</div>
						</div>
						<pre class="board-body">
${board.boCon} 
						</pre>
					</div>
					<c:if test="${board.memId == sessionScope.login.memId }">
						<div class="col-lg-8 col-xl-7">
							<div class="d-flex justify-content-end">
								<form action="${pageContext.request.contextPath }/boardEditView" method="POST">
									<input type="hidden" value="${board.boNo }" name="boardNo">
									<button class="btn btn-warning me-2" type="submit">수정</button>
								</form>
								<form action="${pageContext.request.contextPath }/boardDeleteDo" method="POST" id="deleteForm">
									<input type="hidden" value="${board.boNo }" name="boardNo">
									<button class="btn btn-warning me-2" type="button" id="deleteBtn">삭제</button>
								</form>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</section>
    
    <!-- footer 부분 -->
    <%@ include file="/WEB-INF/inc/footer.jsp" %>
        
	<script type="text/javascript">
		const v_deleteBtn = document.getElementById('deleteBtn');
		const v_deleteForm = document.getElementById('deleteForm');

		v_deleteBtn.addEventListener('click', ()=>{
			if(confirm("정말로 삭제하시겠습니까?")){
				v_deleteForm.submit();
			}
		})
		
	
	</script>
</body>
</html>