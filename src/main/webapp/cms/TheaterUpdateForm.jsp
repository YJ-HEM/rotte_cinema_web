<%@ page language='java' contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../cinema/include/IncludeCMS.jsp" %>
	<script src="../../js/cms.js"></script>
</head>
<body>
<h1>상영관 수정</h1>
	<form action='update.do' method='post' enctype='multipart/form-data'>
		<div>
			<label for='index'>번호</label>
			<input class="form-control" type="text" id="index" name="index" value="${theater.index }" readonly>
		</div>
		<div>
		  <label for="name" class="form-label">상영관명</label>
		  <input type="text" class="form-control" id="name" name="name" value="${theater.name }">
		</div>
		<div>
		  <label for="seatX" class="form-label">좌석X</label>
		  <input type="text" class="form-control" id="seatX" name="seatX" value="${theater.seatX }">
		</div>
		<div>
		  <label for="seatY" class="form-label">좌석Y</label>
		  <input type="text" class="form-control" id="seatY" name="seatY" value="${theater.seatY }">
		</div>
		<div>
			<label for="cinemaIndex">지역</label>
			<select class="form-select" id="indexCinema" name="indexCinema">
				<c:forEach var="cinema" items="${cinemas }">
					<option value="${cinema.indexCinema }" ${cinema.indexCinema == theater.indexCinema ? 'selected' : ''}>${cinema.nameCinema } </option>
				</c:forEach>
			</select>
		</div>
		<button type="submit" class="btn btn-primary btn-lg">등록</button>
		<button type="reset" class="btn btn-secondary btn-lg" onclick="history.back(-1)">취소</button>
	</form>
	<form id="formShowing">
		<div>
		  <label for="date" class="form-label">날짜</label>
		  <input type="date" class="form-control" id="date" name="date">
		</div>
		<div>
			<label for="movie">영화</label>
			<select class="form-select" id="movie" name="indexMovie">
				<c:forEach var="movie" items="${movies }">
					<option value="${movie.index }">${movie.title } </option>
				</c:forEach>
			</select>
		</div>
		<button type="button" class="btn btn-primary btn-lg" id="submitShowing">영화등록</button>
	</form>
</body>
</html>