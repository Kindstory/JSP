
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>scopePro.jsp</h1>
   
   <% 
   
   String id = request.getParameter("id");
   
    %>
    <h2>파라미터 정보</h2>
    아이디 : <%= id %>
    
    <h2>영역객체의 속성(Attribute)</h2>
    * 영역객체의 속성을 저장(공유할 데이터를 저장)
    [영역객체].setAttribute(키, 값);
    * 영역객체의 속성을 사용(공유된 데이터의 값을 사용)
    [영역객체].getAttribute(키);   <!-- 사물함을 열때 그 사물함 번호 키만 있으면 문을 열 수 있듯이 ㅇㅇ 키로 불러 내는거지 속성을 ㅇㅇ  -->
    
<%--  <%=pageContext.getAttribute("pValue") %>  <!-- 얘는 영역만 저장해주는거임 자바로 치면 객체 주소만 있고 안에 데이터가 없는 거임 ㅇㅇ --> --%>
    
    * 영역객체에 정보 저장
    <%
    	pageContext.setAttribute("pValue", request.getParameter("id"));
       	request.setAttribute("rValue", request.getParameter("id"));
       	session.setAttribute("sValue", "session Value##");
       	application.setAttribute("aValue", "application Value%%");
    %>
    * 영역객체에 정보 출력 <hr>
    
    	page 영역의 공유데이터(Attribute) : <%= pageContext.getAttribute("pValue") %> <br> <!--  같은 페이지에서 위에서 저장한걸 바로 밑에다 가져다 쓰는거임 -->
    	request 영역의 공유데이터(Attribute) : <%= request.getAttribute("rValue") %>  <br>
    	session 영역의 공유데이터(Attribute) : <%= session.getAttribute("sValue") %>  <br>
    	application 영역의 공유데이터(Attribute) : <%= application.getAttribute("aValue") %> <br> 
    	
    	<hr>
    	
    	<!--  기본적으로 자바에서는 다른타입의 데이터를 담을 수 없다. 되는거는 자동으로 형변환(업캐스팅)이 되는거임 
         	   다운 캐스팅은 강제로 해줘야하니까.  String이 Object로 형변환 된거임. -->
         
         <!--  예시) 데이터를 조금 더 옮기기 쉬운형태로 만드는게 업캐스팅임. 검은 비닐봉지로 분무기만 담을수 있는게 아니라 다른것도 담을수 있다. 
               		분무기를 들고 다니고 싶으면 분무기 전용 봉투가 필요하고 또 소독제를 들고가고 싶으면 소독제 전용 봉투가 필요하고 ㅇㅇ 
               		이건 너무 비효율적이라 시스템의 효율을 위해 ㅇㅇ 하나의 겸용 봉투를 만들자 ㅇㅇ 이게 객체지향에서 말하는 다형성임. 
               		업캐스팅은 다형성의 기술중 하나이고 전제조건은 상속임. 상속이 있어야 업캐스팅이든 다운캐스팅이든 가능.  
               		업캐스팅 한 이유는 모든 데이터를 한번에 저장하기 위해서 기본형 타입 int는 객체가 아니라서 object랑의 상속관계가 아님
               		상속관계는 객체와 객체 사이에만 생성되는거임. int가 Integer(Wrapper Class)가 된거임 객체화 시킨거임 상속을 위해 
              	 	int를 넣어도 오류가 안뜨는건 오토 박싱이 된거임 자바 1.6부터 오토 박싱이 됨.
               		결국은 모든 타입의 데이터를 다 저장할 수 있음. Object는 모든 객체의 조상이니까 
               		getAttribute로 출력은 원래 Object로 출력임  근데 왜 String으로 출력이 될까? 오버로딩으로 바뀌는 거임. 
               		Object타입으로  setAttribute해도 자동으로 내부에 오버로딩이 세팅되있어서 String타입으로 getAttribute가 되는거임 
               		-->
               
         <!--  		영역객체의 목적은 데이터를 저장해서 공유하는거임. page가 바뀌면 객체에 저장해놓은 것들 데이터들이 다 사라지니까 
               		영역객체에 저장해놓으면은 다른데서 호출해서 쓸수 있으니까.  --> 
               
   
    	<h2>페이지 이동</h2>
    	
   		   <h3>1. a태그 : 파라미터, session, application 이 3개의 값(파라미터), 데이터영역을 전달할 수 있다. </h3>
   		
<%--     		   <a href = "scopeAction.jsp?id=<%="chris"%>&pw=1234"> scopeAction.jsp 페이지로 이동</a> --%>
          
               <!-- href태그에 공백주면 %20이라고 주소창에 뜸 여기선 공백 쓰면 안됨. -->
               
           
           <h3>2. JavaScript </h3>
<!--            <script type="text/javascript"> -->
//            		alert("js:scopeAction.jsp 페이지 이동");
<%--            		location.href = "scopeAction.jsp?id=<%=id%>&pw=1234"; --%> <!-- 이건 javascript코드라 이런식으로 호출함.  --> 
<!--            </script> -->
               
          
           <h3>3. JSP - sendRedirect() </h3>
           <%
           		// * JSP 페이지 실행순서 : Java(JSP) -> HTML -> JavaScript
           		
           		// 페이지 이동(js - 이동과 같이 사용불가);
           		// response.sendRedirect("scopeAction.jsp?id=" + id +"&pw = 1234"); // 같은 지역변수라서 +로 부름 문자열 + 문자열
           															// 저 위에 자바코드안에 id도 자바코드라 지역변수개념.
           
           %> 
               
               <!-- javascript와 jsp는 함께 쓸수 없음 
               		jsp는 첫번쨰로 자바 코드가 실행이 됨. 그게 끝나면 html코드를 실행하고 그게 끝나면
               		javascript를 실행함. 그 와중에 javascript코드에 alert를 실행해주는게 있어서 처리 안하고
               		바로 넘어가기 때문에 문제가 발생함. -->
               
             
             <h3>4. 액션태그(jsp) - forward : 파라미터, request, session, application 전달 가능 </h3>   
             	주소의 변화는 없으면서, 화면만 전환      <!-- jsp: ctrl + space 누르면 뜨는게 다 액션태그임 --> 
           	 <jsp:forward page="scopeAction.jsp"/>     <!-- forwarding을 하면 request객체를 보낼 수 있다. -->
			
   			
    
     <!--  중요한 정보는 session이나 application에 저장 해놓으면 됨 왠만하면 다 페이지이동 가능하니까 ㅇㅇ 
     		session에 홈페이지의 장바구니 같은거 들어감. ㅇㅇ 장바구니 눌리면 페이지 이동해야 하니까 ㅇㅇ -->
           
    
    
</body>
</html>