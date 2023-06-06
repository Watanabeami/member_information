<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
  <form action = "registservlet" method = "post">
  <p>会員情報登録</p>
  <p>ID</p>
  <input type= "text" name = "member_id" required = "required">
  <p>■名前<br>
  姓<input type= "text" name = "last_name" required = "required"> 名<input type = "text" name = "first_name" required = "required"></p>
  <p>■性別<br>
  <input type = "radio"  name = "sex" value = "男" required = "required">男<input type = "radio" name = "sex" value = "女" required = "required">女</p>
  <p>■生年月日<br>
  <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
  <select name = "birth_year" required = "required">
  <c:forEach var = "i" begin = "1920" end = "2020">
     <option value = "${i}">${i} </option>
  </c:forEach></select> 年
  
  <select name = "birth_month" required = "required">
  <c:forEach var = "i" begin = "1" end = "12">
     <option value = "${i}">${i} </option>
  </c:forEach></select> 月
  
   <select name="birth_day" required = "required">
  <c:forEach var = "i" begin = "1" end = "12">
     <option value = "${i}">${i} </option>
  </c:forEach></select>　日
  </p>

  <p>■電話番号<br>
  <input type = "text" name = "phone_number"></p>
  
  <p>■メールアドレス<br>
  <input type = "text" name = "mail_address"></p>
  
  <p>■職業<br>
  <select name="job" required = "required">
  <option value="‐">‐</option>
  <option value="会社員">会社員</option>
  <option value="自営業">自営業</option>
  <option value="学生">学生</option>
  <option value="その他">その他</option>
 </select></p>
  
  
   <input type = "submit" value = "登録">
 </form>
   <form action = "regist4" method = "post">
   <input type = "submit" value = "戻る">
  </form>
</body>
</html>