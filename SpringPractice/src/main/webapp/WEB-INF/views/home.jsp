<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<%@ include file="/WEB-INF/inc/header.jsp" %>
	</head>
	
<style>
	.main-container{
		width: 1300px;
		margin: auto;
		justify-content: center;
	}
	
	.black{
		background-color: black;
		color: white;
		display: flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 10px;
	}
	
	.img-box img{
		width: 1300px;
		height: 1000px;
	}
	
	
</style>
<%@ include file="/WEB-INF/inc/header.jsp"%>
    <%@ include file="/WEB-INF/inc/top.jsp"%>
    
    <body>
    
        
        <div class="main-container">
	    	<div class="black">
	    		<div>
	    			<h1>맞춤형 정보를 한곳에서, 편리하게</h1>
	    			<span>내가 평소에 먹던 음식들의 무엇이 들어가는지 알레르기를 유발할 수 있는 것들이 있는지 없는지 한 번에 확인할 수 있습니다.</span>
	    		</div>
	    	</div>
	    	<div class="img-box">
	        	<img alt="" src="assets/main.jpg">
	    	</div>
        </div>
        <!-- Footer-->
        <%@ include file="/WEB-INF/inc/footer.jsp" %>
    </body>
    
    
</html>

