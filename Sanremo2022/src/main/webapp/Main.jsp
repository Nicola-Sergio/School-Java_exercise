<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link  href="<%=request.getContextPath() %>/styles/main_style.css"  rel="stylesheet">
<title>Sanremo 2022</title>
</head>
<body>
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>

<%
/*
*Use http://easyonlineconverter.com/converters/java-string-escape.html for escaping
*/

			String language = (String)(session.getAttribute("language"));
			String country = (String)(session.getAttribute("country"));
			
			HashMap<String, String> speak = new HashMap<String, String>();
			
			speak.put("italian", "Vota ora!");
			speak.put("english", "Vote now!");
			speak.put("it","Vota");
			speak.put("eng","Vote");
			speak.put("clic","Clicca qui");
			speak.put("click","Click here");
			
			
			String lang="";
			String voto="";
			String click="";
			
			if(country.equals("IT")){
				lang="italian";
				voto="it";
				click="clic";
			} else if(country.equals("US")){
				lang="english";
				voto="eng";
				click="click";
			}

int c = 0; //contatore per la stampa delle righe row che andranno a contenere le card
int foreach=0; //contatore utilizzato per tenere traccia del numero di ciclo del foreach
String [] nomi = {"Gianni Morandi","Noemi","La rappresentante di lista","Yuman","Giusy Ferreri","Dargen D'amico","Achille Lauro","Rkomi","Mahmood & Blanco","Michele Bravi","Ana Mena","Massimo Ranieri"};
session.setAttribute("Array",nomi);
ArrayList<Cantanti> cantanti = (ArrayList<Cantanti>)session.getAttribute("ArrayList");
%>
<div class="text-center mb-5">
<%@include file="Navbar.jsp" %>
<h3 class="text-danger"><%
	if(country.equals("IT")){
				out.println("Edizione ialiana");
			} else{
				out.println("English edition");
			}
	%>
</h3>
</div>
<div class="container">
<% 
for(Cantanti i : cantanti){
	if(c==0){
%>
<div class="row">
<%}%>
<div class="col-sm">
<div class="card m-2" style ="width:18rem;">
<img src = "<%=cantanti.get(foreach).getImmagine()%>" class="card-img-top" height="250px" alt ="image" >
<div class="card-body">
<h5 class="card-title"><%=nomi[foreach]%></h5>
<p class=" card-text"><%=speak.get(voto)+" "+nomi[foreach]%>.</p>
<a href="Vote.jsp?selected="<%=nomi[foreach].replaceAll("\\s+","") + "&id="+foreach%>target="blank" class="btn btn-primary"><%=speak.get(lang)%></a>
</div>
</div>
</div>
<%c++;
if(c==4){
%>
</div>
<%c=0;
}
foreach++;
}
%>
<%if(session.getAttribute("token")=="true"){%>
	<div class="text-center mt-4">
	 <a href="Summary.jsp"><%=speak.get(click) %></a>
	 </div>
	<%} %>
</div> 
<%@include file="Footer.jsp" %>
</body>
</html>