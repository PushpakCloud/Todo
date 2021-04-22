<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
   
 <%@page isELIgnored="false" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add</title>
</head>
<body>

  <div class="container">
  <div class="row mt-4">
  
  <div class="col-md-8">
  
<!--   <h2 class="text-center">Content</h2> -->
<%--         <c:if test="${page=='home' }"> --%>
<!--        <h1 class="text-center">ALL notes </h1> -->
<%--         <c:forEach items="${list }" var="list"> --%>
        
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
       
<%--       </c:if>  --%>
       
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
         
         
         
         </form:form>
       
       
       
       </c:if>
        </div>
       </div>  
     
  
  </div>
  
  </div>
  
  
  
  </div>

</body>
</html>