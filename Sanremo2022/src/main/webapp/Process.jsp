<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import= "O_mallius.*,java.util.*,java.text.SimpleDateFormat"%>
<% Date data = new Date();
SimpleDateFormat formattazione = new SimpleDateFormat("dd/MM/yy - HH:mm:ss ");
String dataFormattata = formattazione.format(data);
%>
<%ArrayList<Cantanti> third_arraylist = new ArrayList<Cantanti>();
third_arraylist = (ArrayList<Cantanti>)session.getAttribute("ArrayList"); 
String esito =(String)request.getParameter("value");
String id = request.getParameter("id");
if(esito.equals("positivo")){
	int n = third_arraylist.get(Integer.parseInt(id)).getPositivo() +1;
	third_arraylist.get(Integer.parseInt(id)).setPositivo(n);
	third_arraylist.get(Integer.parseInt(id)).setUltimo_voto(1);
}

if(esito.equals("negativo")){
	int n = third_arraylist.get(Integer.parseInt(id)).getNegativo() +1;
	third_arraylist.get(Integer.parseInt(id)).setNegativo(n);
	third_arraylist.get(Integer.parseInt(id)).setUltimo_voto(0);
}
third_arraylist.get(Integer.parseInt(id)).setData(dataFormattata);
session.setAttribute("token","true");
%>
<%response.sendRedirect("Main.jsp"); %>
</body>
</html>
