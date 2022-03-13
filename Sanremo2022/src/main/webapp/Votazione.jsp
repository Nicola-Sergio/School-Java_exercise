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
background:linear-gradient(to right, #3098CD 0%, 22.857166359190195%, #032CA2 53.007787466049194%, 68.54693977956856%, #672284 92.42745637893677%);
color:#f2ebf1;
}
button{
display:inline-block;
}
.card-style{
margin:auto;
}
form{
display:inline-block;
}

</style>
</head>
<body>
<div class="text-center div ">
<h1 class="pt-3">Vota il tuo cantante preferito!</h1>
</div>
<%@ page import= "O_mallius.*,java.util.*"%>
<% 
String richiesta = (String)request.getParameter("id");
String [] sessione = (String [])session.getAttribute("Array");
ArrayList<Cantanti> second_arraylist = new ArrayList<Cantanti>();
second_arraylist = (ArrayList<Cantanti>)session.getAttribute("ArrayList");
%>		
<div class="container text-dark  ">
<%
	out.println("<div class=\"card mt-5 card-style\" style=\"width: 20rem;\">");
	  out.println("<img src=\""+second_arraylist.get(Integer.parseInt(richiesta)).getImmagine() +"\"class=\"card-img-top\" height=\"250px\"alt=\"...\">");//inserisci altezza e larghezza(rispettivamente 300 e 300)
	  out.println("<div class=\"card-body\">");
	    out.println("<h5 class=\"card-title text-center\">"+sessione[Integer.parseInt(richiesta)] +"</h5>");
	    out.println("<p class=\"card-text\">Esprimi il tuo giudizio su"+ " "  +sessione[Integer.parseInt(richiesta)]+".</p>");
 		out.println("<div class=\"row text-center\">");
 		out.println("<div class=\"col-sm\">");
 		out.println("<a href=\"Process.jsp?value=positivo&id="+ richiesta+"\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"60\" height=\"60\" fill=\"currentColor\" class=\"bi bi-hand-thumbs-up-fill \"  viewBox=\"0 0 16 16\">  <path d=\"M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z\"/></svg></a>");
 		out.println("</div>");
 		out.println("<div class=\"col-sm-6\">");
 		out.println("<a href=\"Process.jsp?value=negativo&id="+ richiesta +"\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"60\" height=\"60\" fill=\"currentColor\" class=\"bi bi-hand-thumbs-down-fill\" viewBox=\"0 0 16 16\">  <path d=\"M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.856 0-.29-.036-.586-.113-.857a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z\"/></svg></a>");
 		out.println("</div>");
 		out.println("</div>");
 		out.println("</div>");
%>		
</div>
</body>
</html>