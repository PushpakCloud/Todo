<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
   
 <%@page isELIgnored="false" %>   
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title><c:out value="${page} "></c:out></title>
  </head>
  <body>

   
     <div class="container mt-4">
       <h1 class="text-center">Welcome to Note Creator</h1>
       <div class="row mt-4">
       
       <div class="col-md-4">
       <h2 class="text-center">Options</h2>
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						Menu</button>
					<a href='<c:url value="/add"></c:url>'
					 type="button"
						class="list-group-item list-group-item-action">Add Note</a>
					<a href='<c:url value="/home"></c:url>'

						type="button"
						class="list-group-item list-group-item-action">View Notes</a>
					<a href='<c:url value="/update/1"></c:url>'

						type="button"
						class="list-group-item list-group-item-action">update Notes</a>
							
					
						
					
				</div>

			</div>
       
       <div class="col-md-8">
       
	<div class="container">
		
   <h2 style="color:olive;"> This is  home page</h2>

		<div class="container text-center">
		
		<div class="card mt-3" >
			<img class="card-img-top m-2 mx-auto" style="max-width:50px"  src="<c:url value="/resources/img/Note1.png"/>" alt="Card image cap">
			<div class="card-body">
				    
       <c:if test="${page=='home' }">
       <h1 class="text-center">ALL notes </h1>
        <c:forEach items="${list }" var="list">
        
        <div class="card">
        
       </a> <div class="card-body">
        
       <h3>Title:  <c:out value="${list.todoTitle }"></c:out></h3> 
        <h3 Style="color: blue;" >Content: </h3>
        <h4><c:out value="${list.todoContent }"></c:out></h4> 
        
        <div class="container text-center">
       
       <a href="<c:url value='/updateTodo/${list.todoId}' />" >Edit</a>
           
      
        
        </div>
        
        </div>
        
        
        </div>
        
        
        </c:forEach>
       
      </c:if>
       
       <c:if test="${page=='add' }">
       <h2 class="text-center">Add note</h2>
         
         <form:form action="saveTodo" method="post" modelAttribute="todo">
         
         <div class="form-group">
         
         <form:input path="todoTitle" cssClass="form-control"  placeholder="Enter your title"/>
         
         
         </div>
         
         <div class="form-group">
         
         <form:textarea path="todoContent" cssClass="form-control" placeholder="Enter your content" cssStyle="height:300px "/>
         
         
         </div>
         
         <div class="container text-center">
         
         <button class="btn-outline-success">Add Notes</button>
         
         </div>
         <!-- *************************************************** -->
         
         
         
<%--        <c:if test="${page=='update' }"> --%>
<!--        <h1 class="text-center">UPdate notes </h1> -->
<%--         <c:forEach items="${todo }" var="list"> --%>
        
<!--         <div class="card"> -->
        
<!--        </a> <div class="card-body"> -->
        
<%--        <h3>Title:  <c:out value="${list.todoTitle }"></c:out></h3>  --%>
<!--         <h3 Style="color: blue;" >Content: </h3> -->
<%--         <h4><c:out value="${list.todoContent }"></c:out></h4>  --%>
        
<!--         <div class="container text-center"> -->
       
<%--         <a href="update/${list.todoId}"><button class="btn btn-primary">update notes</button></a> --%>
      
        
<!--         </div> -->
        
<!--         </div> -->
        
        
<!--         </div> -->
        
        
<%--         </c:forEach> --%>
       
<%--       </c:if> --%>
       
         
         </form:form>
       
       
       
       </c:if>
        </div>
       </div> 
     
     
			</div>
		</div>
		
		</div>


	</div>


 
  
     
     
     
     </div>
    
    
    
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>