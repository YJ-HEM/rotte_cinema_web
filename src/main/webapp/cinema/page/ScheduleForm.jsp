<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/IncludeDefault.jsp" %>
	
	<link rel="stylesheet" href="./style/schedule.css" />    
    <script src="./js/schedule.js"></script>
</head>
<body>
	<c:import url="/include/header.do"/>
	<section class="location">      <!-- background-color: #f8f8fa; -->
		<div>
			<span><i class="fas fa-home"></i></span>
			<span>></span>
			<span>예매</span>
			<span>></span>
			<span>상영시간표</span>
		</div>
	</section>
	<div class="content">
	    <section class="reserv_choice">
	        <div class="reserv_type">
	            <div class="reserv_type_movie active">
	                <div></div>
	                <div>영화별</div>
	            </div>
	            <div class="reserv_type_theater">
	                <div></div>
	                <div>극장별</div>
	            </div>
	        </div>
	        <div class="reserv_content">
	            <div class="reserv_content_title">
	                <span class="active" data-tab-type="default">전체영화</span>
	                <span data-tab-type="qration">큐레이션</span>
	            </div>
	            <div class="reserv_content_list">   
	            <c:forEach var="movie" items="${movies}" varStatus="status">
						<div data-movie-index="${movie.index }" data-movie-type=${movie.type == 1 ? "qration":"default" }>${movie.title }</div>
				</c:forEach> 
	            </div>
	            
	        </div>
	        <div class="reserv_post">
	            <img id="moviePoster">
	        </div>
	    </section>
	    <section class="reserv_info">
	        <div class="reserv_info_title">
	            <span id="movieTitle"></span>
	            <span>상영시간표</span>
	        </div>
	        <div class="reserv_info_date">
	            <div><i class="fas fa-chevron-left"></i></div>      <!-- div 1 폰트 어썸 화살표 아이콘-->
	            <div class="dates">
					<div class="active">
						<div>2021.06</div>
						<div>9.오늘</div>
						<div></div>
					</div>
					<div>
						<div></div>
						<div>10.내일</div>
						<div></div>
					</div>
					<div>
						<div></div>
						<div>11.금</div>
						<div></div>
					</div>
					<div class="b">
						<div></div>
						<div>12.토</div>
						<div></div>
					</div>
					<div class="r">
						<div></div>
						<div>13.일</div>
						<div></div>
					</div>
					<div>
						<div></div>
						<div>14.월</div>
						<div></div>
					</div>
					<div>
						<div></div>
						<div>15.화</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>16.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>17.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>18.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>19.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>20.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>21.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>22.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>23.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>24.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>25.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>26.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>27.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>28.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>29.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>30.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>31.수</div>
						<div></div>
					</div>
					<div class="g">
						<div>2021.07</div>
						<div>1.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>2.수</div>
						<div></div>
					</div>
					<div class="g">
						<div></div>
						<div>16.수</div>
						<div></div>
					</div>
				</div>
	            <div><i class="fas fa-chevron-right"></i></div>         <!--  3 폰트어썸 화살표 아이콘  -->
	            <div><i class="far fa-calendar-alt"></i></div>
	        </div>
	
	        <div class="reserv_info_age">
	            <div>
	                <img src="images/icon/age_0.png">
	                <span>전체 관람</span>
	            </div>
	            <div>
	                <img src="images/icon/age_12.png">
	                <span>만 12세 이상</span>
	            </div>
	            <div>
	                <img src="images/icon/age_15.png">
	                <span>만 15세 이상</span>
	            </div>
	            <div>
	                <img src="images/icon/age_18.png">
	                <span>청소년 관람불가(만 18세 이상)</span>
	            </div>
	        </div>
	
	        <div class="reserv_info_movie">
	            <div>
	                <img id="movieAge">
	                <span id="movieSubTitle"></span>
	            </div>
	            <div>
	                <div>상영중</div>
	                <div>/</div>
	                <div id="movieRunningTime"></div>
	            </div>
	        </div>
	        <div class="reserv_info_local">
	            <div class="active">서울</div>
	            <div>대구</div>
	        </div>
	        
	        <div class="reserv_list">
				<div class="reserv_info_list">
					<div>
						<div class="reserv_info_list_title">강변</div>
					</div>
					<div class="reserv_info_list_theater">
						<div>
							<div>
								<div>
									<div>4관</div>
									<div>총 25석</div>
								</div>
								<div>
									<div>2D(자막)</div>
								</div>
							</div>
							<div id="theater-8">
								<div>
									<div>11:00</div>
									<span>25석</span>
								</div>
								<div>
									<div>14:30</div>
									<span>25석</span>
								</div>
								<div>
									<div>16:20</div>
									<span>25석</span>
								</div>
							</div>
						</div>
	
						<div>
							<div>
								<div>
									<div>4관</div>
									<div>총 25석</div>
								</div>
								<div>
									<div>2D(자막)</div>
								</div>
							</div>
							<div id="theater-8">
								<div>
									<div>11:00</div>
									<span>25석</span>
								</div>
								<div>
									<div>14:30</div>
									<span>25석</span>
								</div>
								<div>
									<div>16:20</div>
									<span>25석</span>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="reserv_info_list">
					<div>
						<div class="reserv_info_list_title">강변</div>
					</div>
					<div class="reserv_info_list_theater">
						<div>
							<div>
								<div>
									<div>4관</div>
									<div>총 25석</div>
								</div>
								<div>
									<div>2D(자막)</div>
								</div>
							</div>
							<div id="theater-8">
								<div>
									<div>11:00</div>
									<div>25석</div>
								</div>
								<div>
									<div>14:30</div>
									<div>25석</div>
								</div>
								<div>
									<div>16:20</div>
									<div>25석</div>
								</div>
							</div>
						</div>
	
						<div>
							<div>
								<div>
									<div>4관</div>
									<div>총 25석</div>
								</div>
								<div>
									<div>2D(자막)</div>
								</div>
							</div>
							<div id="theater-8">
								<div>
									<div>11:00</div>
									<div>25석</div>
								</div>
								<div>
									<div>14:30</div>
									<div>25석</div>
								</div>
								<div>
									<div>16:20</div>
									<div>25석</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
			<div class="reserv_warning">
	            <div>・ 지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</div>
	            <div>・ 쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</div>
		    </div>
	    </section>
	    
	</div>
	<c:import url="/include/footer.do"/>
</body>
</html>