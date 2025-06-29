<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Gothic+A1:800');
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
  top: 45%;
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
.trash {
  background-color: #f44336;
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
select{
	height:40px; 
	width:35%; 
	font-family: 'Gothic A1', sans-serif; 
	margin : 15px auto;
	background-color: #FCFBF6;
	color : #2f4f4f;

}

</style>
<script>
function myFunc(){
	Swal.fire({
        icon: 'success',                      
        title: '저장되었습니다!',    
        text: '축하해주셔서 감사합니다!'
    });
}
</script>
</head>
<body class="Gothic-font">
<form action="insertProcBoard.do" method="post">
<center>
<div class="container">
<div class="w3-container w3-center w3-animate-opacity">
<form action="insertProcBoard.do" method="post">
<img src="resources/img/letter1.jpg" alt="letter" style="width:100%;">
	<div class="title"><textarea name="title" rows="1" cols="40" placeholder="친구야 ! 결혼 축하해 !"></textarea></div>
	<div class="content">
	<select name="group">
    <option value="신랑">To. 신랑</option>
    <option value="신부">To. 신부</option>
	</select>
	<textarea name="content" rows="6" cols="45" placeholder="내용을 입력해주세요."></textarea>
	</div>
	<div class="date">${board.regdate}, 어느 추운 겨울 날</div>
	<div class="writer">from. <textarea name="writer" rows="1" cols="10" placeholder="홍길동"></textarea></div>
	<div class="bottom-right1"  onclick="myFunc();"><button class="check" type="submit"><i class="fa fa-check"></i></button></div>
	<div class="bottom-right2">	<button class="trash" type="reset"  onclick="location.href='getBoardList.do'"><i class="fa fa-times-circle"></i></button></div>
</div>
</div>
</center>
</form>


</body>
</html>