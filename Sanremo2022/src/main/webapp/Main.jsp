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
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti"%>

<%
//first object cantanti
Cantanti oggetto = new Cantanti();
oggetto.setNome("Gianni");
oggetto.setCognome("Morandi");
oggetto.setEta(35);
oggetto.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/gianni-morandi-886x494.jpg");

//second object cantanti

Cantanti oggetto1 = new Cantanti();
oggetto.setNome("Noemi");
oggetto.setCognome("Noemi");
oggetto.setEta(27);
oggetto.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/noemi.jpg");

//fird object cantanti 

Cantanti oggetto2 = new Cantanti();
oggetto.setNome("La rappresentante di lista");
oggetto.setCognome("La rappresentante di lista");
oggetto.setEta(34);
oggetto.setImmagine("https://www.corriere.it/methode_image/2021/02/26/Spettacoli/Foto%20Spettacoli%20-%20Trattate/jhkhlh-kGB--656x492@Corriere-Web-Sezioni.jpg");

//quarto oggetto 

Cantanti oggetto3 = new Cantanti();
oggetto.setNome("Yuman");
oggetto.setCognome("Yuman");
oggetto.setEta(36);
oggetto.setImmagine("https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg");

//quinto oggetto

Cantanti oggetto4 = new Cantanti();
oggetto.setNome("Giusy");
oggetto.setCognome("Giusy");
oggetto.setEta(29);
oggetto.setImmagine("http://www.rai.it/resizegd/-x540/dl/img/2017/01/29/1485712389369_giusy.png");

//sesto oggetto 

Cantanti oggetto5 = new Cantanti();
oggetto.setNome("Dargen");
oggetto.setCognome("Dargen");
oggetto.setEta(24);
oggetto.setImmagine("https://yt3.ggpht.com/ytc/AKedOLTyWkcSuomRXSLwMoU8N-wGmW2M9g7Q2V_i_YwL=s900-c-k-c0x00ffffff-no-rj");

//settimo oggetto

Cantanti oggetto6 = new Cantanti();
oggetto.setNome("Achille Lauro");
oggetto.setCognome("Achille Lauro");
oggetto.setEta(19);
oggetto.setImmagine("https://staticfanpage.akamaized.net/wp-content/uploads/sites/33/2022/02/achille-lauro-gucci-sanremo-2022-prima-serata-1.jpg");

//ottavo oggetto 

Cantanti oggetto7 = new Cantanti();
oggetto.setNome("Rkomi");
oggetto.setCognome("Rkomi");
oggetto.setEta(34);
oggetto.setImmagine("https://www.castellofestival.it/wp-content/uploads/2021/06/2021-09-03-rkomi.jpg");

//nono oggetto 
Cantanti oggetto8 = new Cantanti();
oggetto.setNome("Mahmood");
oggetto.setCognome("Mahmood");
oggetto.setEta(27);
oggetto.setImmagine("https://media-assets.vanityfair.it/photos/61f9af0ee85700e7ba2371bb/16:9/w_2560%2Cc_limit/GettyImages-1368090183.jpg");

//decimo oggetto
Cantanti oggetto9 = new Cantanti();
oggetto.setNome("Michele");
oggetto.setCognome("Bravi");
oggetto.setEta(35);
oggetto.setImmagine("https://www.amica.it/wp-content/uploads/2022/02/michele-bravi-sanremo-2022-q.jpg?v=1146507");

//undicesimo oggetto

Cantanti oggetto10 = new Cantanti();
oggetto.setNome("Ana");
oggetto.setCognome("Mena");
oggetto.setEta(28);
oggetto.setImmagine("https://static.fanpage.it/wp-content/uploads/sites/14/2020/01/Ana-Mena--1200x900.jpg");

//dodicesimo oggetto

Cantanti oggetto11 = new Cantanti();
oggetto.setNome("Massimo");
oggetto.setCognome("Ranieri");
oggetto.setEta(28);
oggetto.setImmagine("https://cdn.areanapoli.it/immagini/notizie/big/r/ranieri_sanremo.jpg");

ArrayList<Cantanti> cantanti = new ArrayList<Cantanti>();
cantanti.add(oggetto);
cantanti.add(oggetto1);
cantanti.add(oggetto2);
cantanti.add(oggetto3);
cantanti.add(oggetto4);
cantanti.add(oggetto5);
cantanti.add(oggetto6);
cantanti.add(oggetto7);
cantanti.add(oggetto8);
cantanti.add(oggetto9);
cantanti.add(oggetto10);
cantanti.add(oggetto11);
%>
<div class="bg-secondary text-center mb-5">
<h1>Sanremo 2022</h1>
</div>
<div class="container">
  <div class="row">
    <div class="col-sm">
      <img src=<%=cantanti.get(0).getImmagine()%> width="300 px" height="300 px">
    </div>
    <div class="col-sm">
     <img src=<%=cantanti.get(1).getImmagine()%> width="300 px" height="300 px">
    </div>
    <div class="col-sm">
     <img src= <%=cantanti.get(2).getImmagine()%> width="300 px" height="300 px">
    </div>
    <div class="col-sm">
    <img src=<%=cantanti.get(3).getImmagine()%>width="300 px" height="300 px">
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