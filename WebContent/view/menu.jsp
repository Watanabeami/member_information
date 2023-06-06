<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <!--  メニュー　-->
   <p>メニュー</p>
   <form action = "servlet" method = "post"></form>
   
   <form action = "logout" method = "post">
     <p>ログアウト</p>
     <input type = "submit" value = "ログアウト" name = "roguin">
   </form>

   <form action = "regist2" method = "post">
     <p> 会員情報登録に進む</p>
     <input type = "submit" value = "登録" name = "touroku">
   </form>
   
   <form action = "update2" method = "post">
     <p>会員情報変更に進む</p>
     <input type = "submit" value = "変更" name = "henkou">
   </form>
   
   <form action = "delete2" method = "post">
     <p>会員情報削除に進む</p>
     <input type = "submit" value = "削除" name = "sakujyo">
   </form>
   
   

</body>
</html>