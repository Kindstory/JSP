<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>fWriteForm.jsp</h1>
   
   <h2> 첨부파일 글쓰기 페이지 </h2>
   
   <fieldset>
      <form action="./FileBoardWriteAction.bo" method="post" enctype="multipart/form-data">
         글쓴이 : <input type="text" name="name"><br>
         비밀번호 : <input type="password" name="pass"><br>
         제목 : <input type="text" name="subject"><br>
         내용 : <textarea rows="10" cols="20" name="content"></textarea><br>
         첨부파일 : <input type="file" name="file">
        <input type="submit" value="글쓰기">
      </form>  
   </fieldset>
   
   
   
</body>
</html>