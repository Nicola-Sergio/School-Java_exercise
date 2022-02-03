<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Sanremo 2022</title>
</head>
<body>
<%@ page import= "java.util.ArrayList"%>
<% 
ArrayList<String> cantanti = new ArrayList<String>();
cantanti.add("https://www.sorrisi.com/wp-content/uploads/2022/01/gianni-morandi-886x494.jpg");
cantanti.add("https://www.sorrisi.com/wp-content/uploads/2022/01/noemi.jpg");
cantanti.add("https://www.corriere.it/methode_image/2021/02/26/Spettacoli/Foto%20Spettacoli%20-%20Trattate/jhkhlh-kGB--656x492@Corriere-Web-Sezioni.jpg");
cantanti.add("https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg");
cantanti.add("http://www.rai.it/resizegd/-x540/dl/img/2017/01/29/1485712389369_giusy.png");
cantanti.add("https://yt3.ggpht.com/ytc/AKedOLTyWkcSuomRXSLwMoU8N-wGmW2M9g7Q2V_i_YwL=s900-c-k-c0x00ffffff-no-rj");
cantanti.add("https://staticfanpage.akamaized.net/wp-content/uploads/sites/33/2022/02/achille-lauro-gucci-sanremo-2022-prima-serata-1.jpg");
cantanti.add("https://www.castellofestival.it/wp-content/uploads/2021/06/2021-09-03-rkomi.jpg");
cantanti.add("https://media-assets.vanityfair.it/photos/61f9af0ee85700e7ba2371bb/16:9/w_2560%2Cc_limit/GettyImages-1368090183.jpg");
cantanti.add("https://www.amica.it/wp-content/uploads/2022/02/michele-bravi-sanremo-2022-q.jpg?v=1146507");
cantanti.add("https://static.fanpage.it/wp-content/uploads/sites/14/2020/01/Ana-Mena--1200x900.jpg");
cantanti.add("https://cdn.areanapoli.it/immagini/notizie/big/r/ranieri_sanremo.jpg");
%>
<div class="bg-red text-xenter mb-5">
<h1>Sanremo 2022</h1>
</div>
<div class="container">
  <div class="row">
    <div class="col-sm">
      <img src="https://www.sorrisi.com/wp-content/uploads/2022/01/gianni-morandi-886x494.jpg" width="300 px" height="300 px";>
    </div>
    <div class="col-sm">
     <img src="https://www.sorrisi.com/wp-content/uploads/2022/01/noemi.jpg" width="300 px" height="300 px">
    </div>
    <div class="col-sm">
     <img src="https://www.corriere.it/methode_image/2021/02/26/Spettacoli/Foto%20Spettacoli%20-%20Trattate/jhkhlh-kGB--656x492@Corriere-Web-Sezioni.jpg" width="300 px" height="300 px">
    </div>
    <div class="col-sm">
    <img src="https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg" width="300 px" height="300 px">
    </div>
  </div>
  <div class="row pt-4">
  	<div class="col-sm">
  		<img src="http://www.rai.it/resizegd/-x540/dl/img/2017/01/29/1485712389369_giusy.png" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://yt3.ggpht.com/ytc/AKedOLTyWkcSuomRXSLwMoU8N-wGmW2M9g7Q2V_i_YwL=s900-c-k-c0x00ffffff-no-rj" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://staticfanpage.akamaized.net/wp-content/uploads/sites/33/2022/02/achille-lauro-gucci-sanremo-2022-prima-serata-1.jpg" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://www.castellofestival.it/wp-content/uploads/2021/06/2021-09-03-rkomi.jpg" width="300 px" height="300 px">
  	</div>
  </div>
  <div class="row pt-4">
  	<div class="col-sm">
  		<img src="https://media-assets.vanityfair.it/photos/61f9af0ee85700e7ba2371bb/16:9/w_2560%2Cc_limit/GettyImages-1368090183.jpg" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://www.amica.it/wp-content/uploads/2022/02/michele-bravi-sanremo-2022-q.jpg?v=1146507" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://static.fanpage.it/wp-content/uploads/sites/14/2020/01/Ana-Mena--1200x900.jpg" width="300 px" height="300 px">
  	</div>
  	<div class="col-sm">
  		<img src="https://cdn.areanapoli.it/immagini/notizie/big/r/ranieri_sanremo.jpg" width="300 px" height="300 px">
  	</div>
  </div>
</div>
</body>
</html>