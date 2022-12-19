<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>boardDelete.jsp</h1>
   <%
     // /BoardDelete.bo?bno=32&pageNum=1
     // int bno = Integer.parseInt(request.getParameter("bno"));
     // String pageNum = request.getParameter("pageNum");
   %>
   bno : ${param.bno }
   pageNum : ${param.pageNum }
   <fieldset>
      <legend> 게시글 삭제하기 </legend>
      <form action="./BoardDeleteAction.bo?pageNum=${param.pageNum }" method="post">
         <input type="hidden" name="bno" value="${param.bno }">
        <%--  <input type="hidden" name="pageNum" value="${param.pageNum}"> --%>
         
         비밀번호 : <input type="password" name="pass">
         <input type="submit" value="삭제하기">
      </form>   
   </fieldset>
   
   
</body>
</html>