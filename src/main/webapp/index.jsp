<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>NoteTaker : Home page</title>
	<%@include file="all_js_css.jsp" %>
    
  </head>
  <body>
  <section>
  <div class="Container" p-0 m-0>
  	<%@include file="NavBar.jsp" %>
  	<br>
  	
  	<div class="card py-5">
  	<img alt="" class="img-fluid mx-auto" style="max-width:400px" src="img/notepad.png">
  	<h1 class="text-uppercase text-primary text-center mt-3">Start Taking your NOtes</h1>
	<div class="container text-center">
	<a href="add_notes.jsp" class="btn btn-primary text-center">Start here</a>
	  	
	</div>
  	</div>
  </div>
   
  </section>
      
  </body>
</html>