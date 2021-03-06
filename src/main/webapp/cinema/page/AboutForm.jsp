<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/IncludeDefault.jsp" %>
	
	<link rel="stylesheet" href="./style/about.css" /> 
</head>
<body>
	<c:import url="/include/header.do"/>
	
	<section class="location">      <!-- background-color: #f8f8fa; -->
        <div>
            <span><i class="fas fa-home"></i></span>
            <span>></span>
            <span>시설안내</span>
            <span></span>
            <span></span>
        </div>
    </section>
    <div class="content" style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
        <img src="./images/about_main_img/about_01.jpg">
        <img src="./images/about_main_img/about_02.jpg">
        <img src="./images/about_main_img/about_03.jpg">
        <img src="./images/about_main_img/about_04.jpg">
    </div>
	<c:import url="/include/footer.do"/>
</body>
</html>