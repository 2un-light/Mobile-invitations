<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>   

   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Gothic+A1:400');

@font-face {
    font-family: 'Chosunilbo_myungjo';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.Gothic-font{
	font-family: 'Gothic A1', sans-serif;
	width : 760px;
	margin : 0px auto;
}

.text-muted {
    color: #6c757d;
    background-color : #ebf5e0;
    
}
.text-gray-dark{
	font-size:20px; 
	margin:15px; 
	text-align:center;
	padding : 7px 7px 4px;

}
.medium {
	font-size: 14px;
    margin : 10px;
    opacity : 80%;
    padding : 0px 5px 5px;
}
.small {
    font-size: 7px;
    margin : 10px;
    opacity : 60%;
    
}
.rounded {
    border-radius: 50%;
}
.me-2 {
    margin: 1rem;
    
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.d-block {
    display: block!important;
    margin : 5px 15px 0px;
}

.mdc-card{
	margin : 20px;
	opacity: 1;
  	transition: 0.3s;
  	box-shadow: 0 6px 10px 0 rgba(0,0,0,0.2);
}

.mdc-card:hover{
	opacity: 1;
	background-color: #F08080;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	padding-right: 35px;
	opacity: 1;
  	right: 0;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

a {
	text-decoration : none;
}

.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #4CAF50;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

.button2 {
  position: relative;
  background-color: #4CAF50;
  border: none;
  font-size: 15px;
  color: #FFFFFF;
  padding: 8px;
  width: 71.6px;
  text-align: center;
  transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
  border-radius : 10px;
}

.button2:after {
  content: "";
  background: #f1f1f1;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px !important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s
}

.button2:hover {
	background-color: #3e8e41
}

.button2:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s
}
.profile {
  border-radius: 50%;
  width : 110px;
  height : 110px;
  margin : 0px 10px 10px 40px;
}

img {
  width:100%;
  height:auto;
  border:0px;
  margin:10px auto;
  
}

.hello{
	width:100%;
	color:#555;
	font-size: 40px;
	margin : 20px auto;
	font-family: 'Chosunilbo_myungjo';	
}

.date{
	width:100%;
	color:#555;
	font-size: 20px;
	margin : 15px auto 5px;
	font-family: 'Chosunilbo_myungjo';	
}

.address{
	width:100%;
	color:#555;
	font-size: 20px;
	margin : 0px auto 15px;
	font-family: 'Chosunilbo_myungjo';	
}

.root{
	width:100%;
	color:#555;
	font-size: 25px;
	margin : 35px auto;
	font-family: 'Chosunilbo_myungjo';	
}
.number{
	width:100%;
	color:#555;
	font-size: 20px;
	margin : 15px auto 20px;
	font-family: 'Chosunilbo_myungjo';	
}
.board{
	width:100%;
	color:#555;
	font-size: 30px;
	margin : 50px auto 20px;
	font-family: 'Chosunilbo_myungjo';	
}
.content{
	width:100%;
	color:#555;
	font-size: 20px;
	margin : 15px auto 20px;
	font-family: 'Chosunilbo_myungjo';	
}
</style>
<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
  
</head>

<body class="Gothic-font">
<center>

 <img src="resources/img/cover0.jpg" alt="청첩장 커버" width="150"/>
 
 <div class="hello"> 결 혼 합 니 다 <hr style="height:2px; width:50%"></div>
 <div class="date">
 	2022년 12월 25일 일요일 오후 2시
 </div>
  <div class="address">
 	서울 신라호텔 웨딩홀 5층 
 </div>
 
 
 <img src="resources/img/cover20.jpg" alt="청첩장 커버2" style="margin:20px auto 0px;"/>
 
 <img src="resources/img/ment.jpg" alt="멘트" style="margin:0px auto; padding:0% 10%"/>
 

  <h2 style="font-family: 'Chosunilbo_myungjo'; color:#555;">Gallery</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/img/00.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/img/01.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="resources/img/02.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 
 <!-- 카카오 맵 api -->
<div class="root">/ 오시는 길  /<hr style="height:2px; width:50%"></div>
<div class="date">서울특별시 중구 동호로 249 </div>
<div class="address">서울 신라호텔 웨딩홀 5층</div>
 <div class="number">
 	call. 02-2233-3131
 </div>

<div id="map" style="width:100%;height:350px; margin:20px auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=649eee4130f71aabf614c428a1beb8cc&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 중구 동호로 249', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;background-color:#2196F3;color:#fff;">서울 신라호텔</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});  

</script>
 
 
<div class="board">축하하는 글<hr style="height:2px; width:50%"></div>
<div class="content">글을 남겨주시면, 성심껏 마음에 새기겠습니다.</div>

<div>
<a href="insertBoard.do">  
	<button class="button" style="vertical-align:middle; margin:0px 0px 40px;">
		<span>함께 축하해주기</span>
	</button>
</a>
</div>
<form action="searchBoardList.do" method="post">   
	<table class="table">
 		<tr height="40" >
            <td colspan="6" align="right">
               <div class="row">
	               <div class="col-xs-6 col-md-9"> 
	              	 <input type="text" class="form-control" placeholder="Search" name="searchKey">
	               </div>
	               
	  				<div class="col-md-1">
						<select name="searchCon" style="height:38px; color:#000000; opacity:87%">
			                 <option value="writer"> 작성자 </option>
			                 <option value="part"> 그룹  </option>
						</select>
					</div>
					<div class="col-md-2">	
						<button type="submit" class="button2">검색</button></a>		
	  				</div>
              </div>
              
            </td>      
         </tr> 
      </table>
</form>

<c:forEach items="${bList}" var="board">
	<a href="getBoard.do?seq=${board.seq}">
	<div class="mdc-card">
		<div class="d-flex text-muted pt-3">
			<img src="resources/img/img_avatar.png" alt="Avatar" class="profile">
			<title>Placeholder</title>
			<p class="pb-3 mb-0 lh-sm" style="width:100%">
			<strong class="d-block text-gray-dark"> To. ${board.title}</strong>
			<strong class="d-block text-gray-dark medium">@ ${board.writer} (${board.group} 측)</strong>
			<strong class="d-block small">작성일 : ${board.regdate}</strong>
			</p>
		</div>
	</div>
	</a>
</c:forEach>

   

<center>
</body>
</html>