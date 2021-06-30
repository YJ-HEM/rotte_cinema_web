<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="../include/IncludeDefault.jsp" %>   
	
	<link rel="stylesheet" href="./style/registration.css" /> 
	<script src="./js/registration.js"></script>
</head>
<body>
    <c:import url="/include/header.do"/>
    <section class="location">      <!-- background-color: #f8f8fa; -->
        <div>
            <span><i class="fas fa-home"></i></span>
            <span>></span>
            <span>로그인</span>
            <span>></span>
            <span>회원가입</span>
        </div>
    </section>
    <div class="content">
        <div class="member_reg">
            <div class="reg_tab">
                <div class="active">필수 정보</div>
                <div class="">가입 완료</div>
            </div>
            <section id="formReg" class="active">
				<form id="reg">
                    <div>
                        <label for="email"><span>*</span>이메일</label>
                        <input type="text" id="email" name="email" maxlength="15">
                        <span>@</span>
                        <input type="text" id="emailAddr" name="email" maxlength="15">
                        <select id='emailSelect' name='state'>
                            <option value='' >직접입력</option>
                            <option value='naver.com'>네이버</option>
                            <option value='hanmail.com'>다음</option>
                            <option value='gmail.com'>구글</option>
                            <option value='kakao.com'>카카오</option>
                        </select>
                    </div>
                    <div id="emailAlert" class="disabled"></div>
                    <div>
                        <label for="pass"><span>*</span>비밀번호</label>
                        <input type="password" id="pass" name="name" maxlength="5">                        
                    </div>
                    <div>
                        <label for="passcheck"><span>*</span>비밀번호확인</label>
                        <input type="password" id="passcheck" name="name" maxlength="5">
                    </div>
                    <div id="passAlert" class="disabled"></div>
                    <div><label for="name"><span>*</span>이름</label><input type="text" id="name" name="name" maxlength="5"></div>
                    <div>
                        <label for="birth"><span>*</span>생년월일</label>
                        <select id='year' name='year'>
                            <option value=''>년</option>
                            <option value='2021'>2021</option>
                            <option value='2020'>2020</option>
                            <option value='2019'>2019</option>
                            <option value='2018'>2018</option>
                        </select>
                        <select id='month' name='month'>
                            <option value=''>월</option>
                            <option value='1'>1</option>
                            <option value='2'>2</option>
                            <option value='3'>3</option>
                            <option value='4'>4</option>
                        </select>
                        <select id='day' name='day'>
                            <option value=''>일</option>
                            <option value='1'>1</option>
                            <option value='2'>2</option>
                            <option value='3'>3</option>
                            <option value='4'>4</option>
                        </select>
                    </div>
                    <div>
                        <label for="phonenum"><span>*</span>휴대전화</label>
                        <select id='p_top' name='p_top'>
                            <option value='010'>010</option>
                            <option value='011'>011</option>
                            <option value='017'>017</option>
                        </select>
                        <input type="text" id="p_middle" name="p_middle" maxlength="4">
                        <input type="text" id="p_bottom" name="p_middle" maxlength="4">
                    </div>    
                    <div>
                        <label for="zipcode"><span>*</span>주소</label>
                        <input type="text" id="zipcode" name="zipcode" maxlength="6" disabled>                        
                        <div class="btn">주소찾기</div>
                    </div>                
                    <div>
                        <label for="addr"></label>
                        <input type="text" id="addr" name="addr" maxlength="20" disabled>                        
                    </div>
                    <div>
                        <label for="addr2"></label>
                        <input type="text" id="addr2" name="addr" maxlength="20">                        
                    </div>
                </form>
            </section>
            
            <section id="formcomp" class="active">
                <div>홍길동님 가입을 환영합니다.</div>
            </section>

            <div class="reg_btn"><div id="btn_cancel" class="disabled">취소</div><div id="btn_reg">가입</div></div>
        </div>
    </div>
    <c:import url="/include/footer.do"/>
</body>
</html>