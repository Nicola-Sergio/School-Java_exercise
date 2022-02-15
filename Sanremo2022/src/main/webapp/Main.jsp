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
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>

<%

/*
*Use http://easyonlineconverter.com/converters/java-string-escape.html for escaping
*/

//first object cantanti
Cantanti oggetto = new Cantanti();
oggetto.setNome("Gianni");
oggetto.setCognome("Morandi");
oggetto.setEta(35);
oggetto.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/gianni-morandi-886x494.jpg");

//second object cantanti

Cantanti oggetto1 = new Cantanti();
oggetto1.setNome("Noemi");
oggetto1.setCognome("Noemi");
oggetto1.setEta(27);
oggetto1.setImmagine("https://www.sorrisi.com/wp-content/uploads/2022/01/noemi.jpg");

//third object cantanti 

Cantanti oggetto2 = new Cantanti();
oggetto2.setNome("La rappresentante di lista");
oggetto2.setCognome("La rappresentante di lista");
oggetto2.setEta(34);
oggetto2.setImmagine("https://www.corriere.it/methode_image/2021/02/26/Spettacoli/Foto%20Spettacoli%20-%20Trattate/jhkhlh-kGB--656x492@Corriere-Web-Sezioni.jpg");

//quarto oggetto 

Cantanti oggetto3 = new Cantanti();
oggetto3.setNome("Yuman");
oggetto3.setCognome("Yuman");
oggetto3.setEta(36);
oggetto3.setImmagine("https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg");

//quinto oggetto

Cantanti oggetto4 = new Cantanti();
oggetto4.setNome("Giusy");
oggetto4.setCognome("Giusy");
oggetto4.setEta(29);
oggetto4.setImmagine("http://www.rai.it/resizegd/-x540/dl/img/2017/01/29/1485712389369_giusy.png");

//sesto oggetto 

Cantanti oggetto5 = new Cantanti();
oggetto5.setNome("Dargen");
oggetto5.setCognome("Dargen");
oggetto5.setEta(24);
oggetto5.setImmagine("https://yt3.ggpht.com/ytc/AKedOLTyWkcSuomRXSLwMoU8N-wGmW2M9g7Q2V_i_YwL=s900-c-k-c0x00ffffff-no-rj");

//settimo oggetto

Cantanti oggetto6 = new Cantanti();
oggetto6.setNome("Achille Lauro");
oggetto6.setCognome("Achille Lauro");
oggetto6.setEta(19);
oggetto6.setImmagine("https://staticfanpage.akamaized.net/wp-content/uploads/sites/33/2022/02/achille-lauro-gucci-sanremo-2022-prima-serata-1.jpg");

//ottavo oggetto 

Cantanti oggetto7 = new Cantanti();
oggetto7.setNome("Rkomi");
oggetto7.setCognome("Rkomi");
oggetto7.setEta(34);
oggetto7.setImmagine("https://www.castellofestival.it/wp-content/uploads/2021/06/2021-09-03-rkomi.jpg");

//nono oggetto 
Cantanti oggetto8 = new Cantanti();
oggetto8.setNome("Mahmood");
oggetto8.setCognome("Mahmood");
oggetto8.setEta(27);
oggetto8.setImmagine("https://media-assets.vanityfair.it/photos/61f9af0ee85700e7ba2371bb/16:9/w_2560%2Cc_limit/GettyImages-1368090183.jpg");

//decimo oggetto
Cantanti oggetto9 = new Cantanti();
oggetto9.setNome("Michele");
oggetto9.setCognome("Bravi");
oggetto9.setEta(35);
oggetto9.setImmagine("https://www.amica.it/wp-content/uploads/2022/02/michele-bravi-sanremo-2022-q.jpg?v=1146507");

//undicesimo oggetto

Cantanti oggetto10 = new Cantanti();
oggetto10.setNome("Ana");
oggetto10.setCognome("Mena");
oggetto10.setEta(28);
oggetto10.setImmagine("https://static.fanpage.it/wp-content/uploads/sites/14/2020/01/Ana-Mena--1200x900.jpg");

//dodicesimo oggetto

Cantanti oggetto11 = new Cantanti();
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
int c = 0; //contatore per la stampa delle righe row che andranno a contenere le card
int foreach=0; //contatore utilizzato per tenere traccia del numero di cilo del foreach
String [] nomi = {"Gianni Morandi","Noemi","La rappresentante di lista","Yuman","Giusy Ferreri","Dargen D'amico","Achille Lauro","Rkomi","Mahmood & Blanco","Michele Bravi","Ana Mena","Massimo Ranieri"};
session.setAttribute("Array",nomi);
%>
<div class="bg-secondary text-center mb-5">
<h1>Sanremo 2022</h1>
</div>
<div class="container">
<%
	for(Cantanti i : cantanti){
	if(c==0){
		out.println("<div class=\"row\">");
	}
	
		out.println("<div class=\"col-sm\">");
		out.println("<div class=\"card m-2\" style=\"width: 18rem;\">");
		  out.println("<img src=\""+cantanti.get(foreach).getImmagine()+"\"class=\"card-img-top\" alt=\"...\">");//inserisci altezza e larghezza(rispettivamente 300 e 300)
		  out.println("<div class=\"card-body\">");
		    out.println("<h5 class=\"card-title\">"+nomi[foreach] +"</h5>");
		    out.println("<p class=\"card-text\">Vota" +" " +nomi[foreach]+".</p>");
		   // out.println("<a href=\"Votazione.jsp?selected="+foreach +"\ name=\""+nomi[foreach] +"\" target=\"blank\" class=\"btn btn-primary\">Vai alla votazione</a>");
		  
		   out.println("<a href=\"Votazione.jsp?selected="+nomi[foreach].replaceAll("\\s+","")+ "?object="+foreach +"\" target =\"blank\" class=\"btn btn-primary\">Go somewhere</a>");
		   
		   out.println("</div>");
		out.println("</div>");
		out.println("</div>");
		c++;//ogni riga dovrà contenere 4 card,ogni card stampata dovrà incremenatre di 1 per andare ,una volta arrivato a 4, a chiudere la riga,per poi stamparne una nuova in cima al ciclo foreach
		if(c==4){
			out.println("</div>");
			c=0;
		}
	foreach++;

	}
	
%>
</div> 
</body>
</html>