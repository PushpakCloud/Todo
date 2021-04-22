<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
 <%@page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>

  <div class="container mt-4">
  <div class="row">
    <div class="col-md-6">
    <form:form action="updateTodo/${todo.todoId}"  modelAttribute="todo">
   
    <div class="form-group">
     <form:input path="todoId" cssClass="form-control" value="${todo.todoId }"/>
     	<input type="text" value="${todo.todoId }"/>
		
		<div class="form-group">
			<label >content</label>
			 <textarea
				rows="5" class="form-control"  >${todo.todoContent} 
				</textarea>
		</div>
		
		

			<div class="container text-center" >
			<a href="${pageContext.request.contextPath}/ "
			 class="btn btn-primary">Back</a>
				<button type="submit" class="btn btn-warning">Update</button>
			</div>
    
    
    </div>
       
    
    
   
    
    
    </form:form> 
   
   
   
   </div>  
  
  
  </div>
  
  
  
  
  </div>


</body>
</html>