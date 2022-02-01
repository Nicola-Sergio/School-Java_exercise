<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Facemash</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
.nav{
height: 100px;
}
.div{
display: flex;
align-items: center;
justify-content: center ;
flex-direction:column;
}
.distanza{
margin-top: 30px;
}
.container{
display: grid;
justify-content:center;
margin-top:30px;
}
.paragraph{
margin: 18% auto;
}
</style>
</head>
<body>
<%@ page import = "java.util.Random" %>
<%@ page import = "java.io.PrintWriter" %>
<%String[] immagini = {"https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg","https://images.treccani.it/ext-tool/extra/images/b/b0/b0d087273156aeea3d5b56424b73d5e4.jpg","https://www.biography.com/.image/t_share/MTc5ODc2NTUzODU1ODcwOTY1/gettyimages-83414114.jpg","https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/MS-Exec-Nadella-Satya-2017-08-31-22_%28cropped%29.jpg/640px-MS-Exec-Nadella-Satya-2017-08-31-22_%28cropped%29.jpg","https://upload.wikimedia.org/wikipedia/commons/e/e1/%D0%A2%D0%B8%D0%BC_%D0%9A%D1%83%D0%BA_%2802-09-2021%29.jpg"}; 
Random rand = new Random();
int length = immagini.length;
int a = rand.nextInt(length);
int b = rand.nextInt(length);
if(a ==b){
	while(a ==b){
		 a = rand.nextInt(length);
		 b = rand.nextInt(length);
	}  
}
if(session.getAttribute("token")!="true"){
	int[]voti = {0,0,0,0,0};
	session.setAttribute("scelte", voti);
}
%>
<div class="nav bg-danger div">
        <h1>My Facemash page</h1>
    </div>
<div class="container-fluid text-center distanza"><h4>Who's Hotter? Click to choose</h4> </div>
<div class="container">
<div class="row">
<div class="col-sm">
<a href ="main.jsp?selection=<%=a%>"><img src="<%= immagini[a]%>" width="400px" height="400px"></a>
</div>
<div class="col-sm paragraph"><span>or</span></div>
<div class="col-sm">
<a href="main.jsp?selection=<%=b%>"><img src="<%= immagini[b] %>" width="400px" height="400px"></a>
</div>
</div>
</div>
<% int[] scelta = (int[])session.getAttribute("scelte"); %>
<p class="text-center mt-4"><%if(request.getParameter("selection")== null){
	out.println("Clicca un immagine per ottenere la risposta : ");
} else {
switch(request.getParameter("selection")){
case "0" :
	out.println("Hai selezionato precedentemente : Mark Zuckerberg");
	scelta[0] = scelta[0] +1;
	break;
case "1" :
	out.println("Hai selezionato precedentemente Bill Gates");
	scelta[1] = scelta[1] +1;
	break;
case "2" :
	out.println("Hai selezionato precedentemente Larry Page");
	scelta[2] = scelta[2] +1;
	break;
case "3" :
	out.println("Hai selezionato precedentemente Nadella");
	scelta[3] = scelta[3] +1;
	break;
case "4" :
	out.println("Hai selezionato precedentemente Tim Cook");
	scelta[4] = scelta[4] +1;
case "null" :
	out.println("Non hai selezionato nulla precedentemente");
	break;
	default : break;
}
session.setAttribute("token","true");
session.setAttribute("scelte",scelta);

}
for(int i : scelta){
	if(i == 10){
		out.println("<a href="/second.jsp/">Clicca qui per vedere l'esito finale</a>" );	}
}%></p>
<h4 class="mt-10"><%=scelta[0] + "," + scelta[1] +"," + scelta[2] + "," + scelta[3] + "," + scelta[4] %></h4>
</body>
</html>