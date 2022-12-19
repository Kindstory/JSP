<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
    <h1>testForm2.jsp</h1>
    
	<h1> 폼태그 이름, 나이정보를  testPro2.jsp 페이지로 전달</h1>
	
	<form action = "testPro2.jsp" method = "post">
	 이름: <input type = "text" name = "name">  <br>
	 나이:<input type = "text" name = "age"> <br>
	 <hr>
	 성별 : <input type = "radio" name = "gender" value = "남"> 남
	 	    <input type = "radio" name = "gender" value = "여"> 여
	 <hr>
	 취미 : <input type = "checkbox" name= "hobby" value = "게임"> 게임	 
	  		<input type = "checkbox" name= "hobby" value = "C++"> C++	 
	  		<input type = "checkbox" name= "hobby" value = "고뇌"> BrainStorming  
														<!-- value값으로 나옴 -->
														<!-- 역시 실수를 해야되 그래야 깨닫는게 많아 -->
														<!-- 실수를 많이 하려면 일단 계속 해야하고 -->
	 <hr>
	 강의장 :
	 		<select name = "room">
	 			<option>강의장을 선택하시오</option>
	 			<option value = "1">1강의장</option>
	 			<option value = "2">2강의장</option>
	 			<option value = "3">3강의장</option>
	 			<option value = "4">4강의장</option>
	 			<option value = "5">5강의장</option>
	 			<option value = "6">6강의장</option>
	 			<option value = "7">7강의장</option>
	 		</select> 	
	 		
	 		<hr>
	 
	 성향 : 	<input type = "checkbox" name = "tendency" value = "활발함">  활발함
	  		<input type = "checkbox" name = "tendency" value = "신중함">  신중함
	  		<input type = "checkbox" name = "tendency" value = "양향적">  양향적
	  
	  		<hr>
	  		
	 MBTI :  <input type = "radio"  name = "mbti"  value = "모험가"> 모험가
	  		 <input type = "radio"  name = "mbti"  value = "장인"> 장인
	  		 <input type = "radio"  name = "mbti"  value = "꼰대"> 꼰대
	  		 <input type = "radio"  name = "mbti"  value = "성실한"> 성실한
	  		 <input type = "radio"  name = "mbti"  value = "몰라"> 몰라
	  		 <input type = "radio"  name = "mbti"  value = "I don't know"> I don't know
	  		 <input type = "radio"  name = "mbti"  value = "IDK"> IDK
	  		 <input type = "radio"  name = "mbti"  value = "Hi"> Hi
	  		 <hr>
	 		
	 <input type="submit" value="전송"> 
	 
	</form>
</body>
</html>