<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Votazione cantanti Sanremo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.div{
height:100px;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<div class="bg-success text-center div text-danger ">
<h1 class="pt-3">Vota il tuo cantante preferito!</h1>
<div class="container m-5">
<% 
out.println(request.getParameter("object"));
%>		

<%/*

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


*/ %>			
<!-- <p>Esprimi un tuo parere su ://((String[])session.getAttribute("Array"))[Integer.parseInt(object)] %> </p>  -->
<div class="row">
<button class="button ">Mi piace !</button>
<button>Non mi piace!</button>
</div>
</div>

</div>
</body>
</html>