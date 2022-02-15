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
<%String [] object = (String)request.getParameter("object");					

%>						
<p>Esprimi un tuo parere su :<%=((String[])session.getAttribute("Array"))[Integer.parseInt(object)] %> </p> 
<div class="row">
<button class="button ">Mi piace !</button>
<button>Non mi piace!</button>
</div>
</div>

</div>
</body>
</html>