<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <form action = "update" method = "post">
  <p>会員情報登録</p>
  
  <p>■会員番号<br>
  <input type = "text" name = "number" required = "required">　　<input type = "submit" value = "検索"></p>
  
  <p>■名前<br>
  姓<input type= "text" name = "sei" required = "required"> 名<input type = "mei" required = "required"></p>
  <p>■性別<br>
  <input type = "radio"  name = "radio" value = "男" required = "required">男<input type = "radio" name = "radio" value = "女" required = "required">女</p>
  <p>■生年月日<br>
  <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
  <select name = "count" required = "required">
  <c:forEach var = "i" begin = "1920" end = "2020">
     <option value = "${i}">${i} </option>
  </c:forEach></select> 年
  
  <select name = "month" required = "required">
  <c:forEach var = "i" begin = "1" end = "12">
     <option value = "${i}">${i} </option>
  </c:forEach></select> 月
  
   <select name="day" required = "required">
  <c:forEach var = "i" begin = "1" end = "12">
     <option value = "${i}">${i} </option>
  </c:forEach></select>　日
  </p>

  <p>■電話番号<br>
  <input type = "text" name = "phone"></p>
  
  <p>■メールアドレス<br>
  <input type = "text" name = "mail"></p>
  
  <p>■職業<br>
  <select name="job" required = "required">
  <option value="‐">‐</option>
  <option value="会社員">会社員</option>
  <option value="自営業">自営業</option>
  <option value="学生">学生</option>
  <option value="その他">その他</option>
 </select></p>
  
   <input type = "submit" value = "更新">　　<input type = "submit" value = "戻る">
  

</body>
</html>