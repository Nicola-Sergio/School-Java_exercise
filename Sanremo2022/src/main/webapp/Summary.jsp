<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="JSP" %>
<style>
.container{
padding-right : 200px;
padding-left  : 200px;
}
a{
text-decoration:none;
}
div.container{
margin-bottom:9rem;
}
</style>
</head>
<body>
<%String [] singer = (String[])session.getAttribute("Array");
int c=0;
ArrayList<Cantanti> fourth_arrayList= (ArrayList<Cantanti>)session.getAttribute("ArrayList"); 
%>
<div class="container mt-4 ">
<div class="row">
<div class="col-sm-12">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Last Vote</th>
      <th scope="col">Date</th>
    </tr>
  </thead>
  
  <tbody>
  <%for(String i : singer){%>
    <tr>
      <th scope="row"><%out.println(c); %></th>
      <td><% out.println(singer[c]);%></td>
      <td><%if(fourth_arrayList.get(c).getUltimo_voto()==0){
    	  out.println("Negativo");
      }
      if(fourth_arrayList.get(c).getUltimo_voto()==1){
    	  out.println("Positivo");
      } 
      if(fourth_arrayList.get(c).getUltimo_voto()== 2){
    	  out.println("Il cantante non è stato ancora votato;");
      }
      
      %></td>
      <td><%if(fourth_arrayList.get(c).getData()==null){
    	  out.println("Non è stata registrata nessuna data!");
      } else{
    	  out.println(fourth_arrayList.get(c).getData());
      }
      
      %></td>
    </tr>
    <%c++;} %>
  </tbody>
</table>
</div>
</div>
<a href="Main.jsp"> <--Turn back!</a>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>