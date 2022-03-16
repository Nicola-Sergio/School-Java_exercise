<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="JSP" %>
</head>
<body><% 

Locale locale = request.getLocale(); 
String language = locale.getLanguage(); 
String country = locale.getCountry(); 

session.setAttribute("language", language);
session.setAttribute("country", country);

Cantanti oggetto = new Cantanti();
oggetto.setId(1);
oggetto.setNome("Gianni");
oggetto.setCognome("Morandi");
oggetto.setEta(35);
oggetto.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/gianni-morandi-886x494.jpg");
//second object cantanti
Cantanti oggetto1 = new Cantanti();
oggetto1.setId(2);
oggetto1.setNome("Noemi");
oggetto1.setCognome("Noemi");
oggetto1.setEta(27);
oggetto1.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/noemi.jpg");
//third object cantanti 
Cantanti oggetto2 = new Cantanti();
oggetto2.setId(3);
oggetto2.setNome("La rappresentante di lista");
oggetto2.setCognome("La rappresentante di lista");
oggetto2.setEta(34);
oggetto2.setImmagine("https://www.corriere.it/methode_image/2021/02/26/Spettacoli/Foto%20Spettacoli%20-%20Trattate/jhkhlh-kGB--656x492@Corriere-Web-Sezioni.jpg");
//quarto oggetto 
Cantanti oggetto3 = new Cantanti();
oggetto3.setId(4);
oggetto3.setNome("Yuman");
oggetto3.setCognome("Yuman");
oggetto3.setEta(36);
oggetto3.setImmagine("https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg");
//quinto oggetto
Cantanti oggetto4 = new Cantanti();
oggetto4.setId(5);
oggetto4.setNome("Giusy");
oggetto4.setCognome("Giusy");
oggetto4.setEta(29);
oggetto4.setImmagine("http://www.rai.it/resizegd/-x540/dl/img/2017/01/29/1485712389369_giusy.png");
//sesto oggetto 
Cantanti oggetto5 = new Cantanti();
oggetto5.setId(6);
oggetto5.setNome("Dargen");
oggetto5.setCognome("Dargen");
oggetto5.setEta(24);
oggetto5.setImmagine("https://yt3.ggpht.com/ytc/AKedOLTyWkcSuomRXSLwMoU8N-wGmW2M9g7Q2V_i_YwL=s900-c-k-c0x00ffffff-no-rj");
//settimo oggetto
Cantanti oggetto6 = new Cantanti();
oggetto6.setId(7);
oggetto6.setNome("Achille Lauro");
oggetto6.setCognome("Achille Lauro");
oggetto6.setEta(19);
oggetto6.setImmagine("https://staticfanpage.akamaized.net/wp-content/uploads/sites/33/2022/02/achille-lauro-gucci-sanremo-2022-prima-serata-1.jpg");
//ottavo oggetto 
Cantanti oggetto7 = new Cantanti();
oggetto7.setId(8);
oggetto7.setNome("Rkomi");
oggetto7.setCognome("Rkomi");
oggetto7.setEta(34);
oggetto7.setImmagine("https://www.castellofestival.it/wp-content/uploads/2021/06/2021-09-03-rkomi.jpg");
//nono oggetto 
Cantanti oggetto8 = new Cantanti();
oggetto8.setId(9);
oggetto8.setNome("Mahmood");
oggetto8.setCognome("Mahmood");
oggetto8.setEta(27);
oggetto8.setImmagine("https://media-assets.vanityfair.it/photos/61f9af0ee85700e7ba2371bb/16:9/w_2560%2Cc_limit/GettyImages-1368090183.jpg");
//decimo oggetto
Cantanti oggetto9 = new Cantanti();
oggetto9.setId(10);
oggetto9.setNome("Michele");
oggetto9.setCognome("Bravi");
oggetto9.setEta(35);
oggetto9.setImmagine("https://www.amica.it/wp-content/uploads/2022/02/michele-bravi-sanremo-2022-q.jpg?v=1146507");
//undicesimo oggetto
Cantanti oggetto10 = new Cantanti();
oggetto10.setId(11);
oggetto10.setNome("Ana");
oggetto10.setCognome("Mena");
oggetto10.setEta(28);
oggetto10.setImmagine("https://static.fanpage.it/wp-content/uploads/sites/14/2020/01/Ana-Mena--1200x900.jpg");
//dodicesimo oggetto
Cantanti oggetto11 = new Cantanti();
oggetto11.setId(12);
oggetto11.setNome("Massimo");
oggetto11.setCognome("Ranieri");
oggetto11.setEta(28);
oggetto11.setImmagine("https://cdn.areanapoli.it/immagini/notizie/big/r/ranieri_sanremo.jpg");
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
session.setAttribute("ArrayList",cantanti);


%>
<JSP:redirect url="/Main.jsp"/>
</body>
</html>