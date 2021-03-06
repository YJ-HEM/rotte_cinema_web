<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
	<c:set var="path" value="<%=request.getContextPath() %>" scope="application"/>
    <meta charset='UTF-8'>
	<title>Rotte Cinema CMS</title>
    
    <link rel="apple-touch-icon" sizes="57x57" href="./images/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="./images/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="./images/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="./images/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="./images/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="./images/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="./images/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="./images/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="./images/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="./images/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="./images/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./images/favicon/favicon-16x16.png">
	<link rel="manifest" href="./images/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="./images/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<style>
		body {
			margin:10px;
		}
		button {
			margin:5px 10px;
		}
		form {
			margin-bottom: 10px;	
		}
	</style>
	
	<c:if test="${empty sessionScope.customer or sessionScope.customer.access != 0}">
		<c:redirect url="/"/>
	</c:if> 