<%@page import="com.entity.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteTaker : Update </title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="Container" p-0 m-0>
  	<%@include file="NavBar.jsp" %>
  	<br>
  	<h1 class="text-uppercase" style="font-size:20px;">Update your Note here.</h1>
  	<br>
  </div>

	<%int noteId = Integer.parseInt(request.getParameter("note_id").trim()); 
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
	%>
	<form action="UpdateServlet" method="post">
	 <input value="<%= note.getId() %>" name="note_Id" type ="hidden"/>		  
	 
	 <div class="form-group">
		    <label for="Title">Note Title</label>
		    <input 
		    name="title"
		    required 
		    type="text" 
		    class="form-control" 
		    id="title" 
		    aria-describedby="Notetitle" 
		    placeholder="Type your notes here."
		    value="<%= note.getTitle() %>"
		    />
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea 
		    name="content"
		    required
		    id="content" 
		    placeholder="witer your notes here."
		    class="form-control"
		    style="height:300px;"><%= note.getContent() %>
		    </textarea>
		  </div>
		  
		  <div class="addButton">     <!-- text-center class can be used for place content at center.  -->
		  <button 
		  type="submit" 
		  class="btn btn-success"
		  >Save your Note</button>
		  </div>
</form>

</body>
</html>