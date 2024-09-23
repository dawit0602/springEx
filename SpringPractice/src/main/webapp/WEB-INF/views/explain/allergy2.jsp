<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>알레르기 반응을 일으킬 수 있는 음식들</title>

<style type="text/css">
	.bar-container{
		width: 100%;
		height: 100px;
		background-color: #DDDDDD;
		display: flex;
		margin-top: 15px;
		margin-bottom: 15px;
	}
	
	.bar{
		width: 1200px;
		margin: auto;
	}
	
	.explain-container{
		width: 1200px;
		margin: auto;
	}
	
	.img-box{
		width: 100%;
		height: 1000px;
	}
	
	.algTypeImg{
		width: 100%;
		height: 100%;
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
			</a>
			<a class="text" href="${pageContext.request.contextPath }/allergy">
			알레르기란?
			</a>
			<a class="text" href="#">
				알레르기 반응을 일으킬 수 있는 음식들
			</a>
		</div>
	</div>
	
	<div class="explain-container">
		<div class="define-box">
			<div class="img-box">
				<img class="algTypeImg" alt="" src="assets/foodAlgType.jpg">
			</div>
			<div>
				<h1>알레르기 반응을 일으킬 수 있는 음식들</h1>
				<p></p>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/inc/footer.jsp"%>

</body>
</html>