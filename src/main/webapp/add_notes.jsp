<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>

</head>
<body>
<div class="Container-fluid" p-0 m-0>
  	<%@include file="NavBar.jsp" %>
  	
  	<br>
  	<h1 class="text-uppercase" style="font-size:20px;">Your can write your note here</h1>
  	
  	<!--This is add form -->
  	
  	<form action="NoteSavingServlet" method="post">
		 
		  <div class="form-group">
		    <label for="Title">Note Title</label>
		    <input 
		    name="title"
		    required 
		    type="text" 
		    class="form-control" 
		    id="Title" 
		    aria-describedby="Notetitle" 
		    placeholder="Type your notes here."/>
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea 
		    name="content"
		    required
		    id="content" 
		    placeholder="witer your notes here."
		    class="form-control"
		    style="height:300px;"
		    ></textarea>
		  </div>
		  
		  <div class="addButton">     <!-- text-center class can be used for place content at center.  -->
		  <button 
		  type="submit" 
		  class="btn btn-primary"
		  >Add Note</button>
		  </div>
</form>
  	
  </div>
</body>
</html>