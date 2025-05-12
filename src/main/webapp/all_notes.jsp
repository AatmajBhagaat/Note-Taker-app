<%@ page import='java.util.List' %>
<%@ page import='com.entity.*' %>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page import='org.hibernate.Session' %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Note Taker : All Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-flued">
	<%@include file="NavBar.jsp" %>
	<br>
	<h1 class ="text-uppercase"style="font-size:20px;">All Notes:</h1>
</div>
<div class="form-group"> 
	<%
	Session s = FactoryProvider.getFactory().openSession();
	
	Query q = s.createQuery("from Note");
	
	List<Note>list =q.list();
	for(Note note: list)
	{
		
	 %>
	 <div class="card">
	 <img class="card-image-top m-4" style="max-width:100px;" src="img/notepad.png" alt="Card image cap ">
	 <div class="card-body">
	 <h5 class="card-title"><%= note.getTitle() %></h5>
	 <p class="card-text"><%= note.getContent() %></p>
	 <p class="card-date " style="text-size:10px;margin-left:1100px;"><b class="text-primary" style="text-size:10px;"><%= note.getAddeddate()%></b></p>
	 
	 <a href="update.jsp?note_id=<%= note.getId()%>" class="btn btn-primery" style="margin-left:10px;">Update</a>
	 <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-secondary"style="margin-left:10px;">Delete</a>
	 </div>
	 
	 
	 </div>
	 
	 
	 <% 
		
	}
	
	s.close();
	%>
</div>
</body>
</html>