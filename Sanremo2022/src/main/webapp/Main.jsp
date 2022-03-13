<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Sanremo 2022</title>
<style>
a{
text-decoration:none;
color:red;
}
a:hover{
color:green;
}
</style>
</head>
<body>
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>

<%
/*
*Use http://easyonlineconverter.com/converters/java-string-escape.html for escaping
*/
//first object cantanti

int c = 0; //contatore per la stampa delle righe row che andranno a contenere le card
int foreach=0; //contatore utilizzato per tenere traccia del numero di ciclo del foreach
String [] nomi = {"Gianni Morandi","Noemi","La rappresentante di lista","Yuman","Giusy Ferreri","Dargen D'amico","Achille Lauro","Rkomi","Mahmood & Blanco","Michele Bravi","Ana Mena","Massimo Ranieri"};
session.setAttribute("Array",nomi);
ArrayList<Cantanti> cantanti = (ArrayList<Cantanti>)session.getAttribute("ArrayList");
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
		  out.println("<img src=\""+cantanti.get(foreach).getImmagine()+"\"class=\"card-img-top\" height=\"250px\"alt=\"...\">");//inserisci altezza e larghezza(rispettivamente 300 e 300)
		  out.println("<div class=\"card-body\">");
		    out.println("<h5 class=\"card-title\">"+nomi[foreach] +"</h5>");
		    out.println("<p class=\"card-text\">Vota" +" " +nomi[foreach]+".</p>");
		   // out.println("<a href=\"Votazione.jsp?selected="+foreach +"\ name=\""+nomi[foreach] +"\" target=\"blank\" class=\"btn btn-primary\">Vai alla votazione</a>");
		  
		   out.println("<a href=\"Votazione.jsp?selected="+nomi[foreach].replaceAll("\\s+","")+ "&id="+foreach +"\" target =\"blank\" class=\"btn btn-primary\">Go somewhere</a>");
		   
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
<%if(session.getAttribute("token")=="true"){%>
	<div class="text-center mt-4">
	 <a href="Resoconto.jsp">Clicca qui</a>
	 </div>
	<%} %>
</div> 
</body>
</html>