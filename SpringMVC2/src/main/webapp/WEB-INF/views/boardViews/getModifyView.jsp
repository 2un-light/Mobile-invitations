<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Gothic+A1:400');
@font-face {
    font-family: 'establishRoomNo703OTF';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/establishRoomNo703OTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.Gothic-font{
	font-family: 'Gothic A1', sans-serif;
	width : 760px;
	margin : 0px auto;
}
.container {
  position: relative;
  text-align: center;
  color: #2f4f4f;
  font-family : 'establishRoomNo703OTF';
  margin : 10px auto;
}
.title{
  position: absolute;
  top: 22%;
  left: 50%; 
  transform: translate(-50%, -50%);
  font-size : 20px;
}

.content{
  position: absolute;
  top: 50%;
  left: 50%; 
  transform: translate(-50%, -50%);
  font-size : 15px;
}

.date {
  position: absolute;
  top: 70%;
  left: 50%; 
  transform: translate(-50%, -50%);
  font-size : 15px;
}
.writer {
  position: absolute;
  top: 75%;
  left: 50%; 
  transform: translate(-50%, -50%);
  font-size : 15px;
}
.bottom-left {
  position: absolute;
  bottom:8px;
  left: 75px;
  font-family: 'Gothic A1', sans-serif;
}

.bottom-right1 {
  position: absolute;
  bottom: 8px;
  right: 145px;
  font-family: 'Gothic A1', sans-serif;
}

.bottom-right2 {
  position: absolute;
  bottom: 8px;
  right: 75px;
  font-family: 'Gothic A1', sans-serif;
}
.check {
  background-color: #04AA6D;
  border-radius : 50%;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}
.list {
  background-color: #2196F3;
  border-radius : 50%;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}
textarea{
	background-color: #FCFBF6;
	text-align : center;
	outline-color: #FE6B8B;
}


</style>
</head>
<body class="Gothic-font">
<center>
<form action="modifyProcBoard.do?seq=${board.seq}" method="post">
<div class="w3-container w3-center w3-animate-opacity" style="width:100%;">
<div class="container">
<img src="resources/img/letter1.jpg" alt="letter" style="width:100%;">
	<div class="title"><textarea id="w3review" name="title" rows="1" cols="45">${board.title}</textarea></div>
	<div class="content"><textarea id="w3review" name="content" rows="4" cols="50">${board.content}</textarea></div>
	<div class="date">${board.regdate}, 어느 추운 겨울 날</div>
	<div class="writer">from. ${board.writer}</div>
	<div class="bottom-right1"><button class="check" type="submit"><i class="fas fa-check"></i></button></div>
	<div class="bottom-right2">	<button class="list" onclick="location.href='getBoardList.do'"><i class="fa fa-bars"></i></button></div>
</div>
</div>
</form>
</center>
</body>
</html>