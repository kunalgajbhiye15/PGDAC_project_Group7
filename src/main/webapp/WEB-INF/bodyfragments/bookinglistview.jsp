<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking List</title>
</head>
<body>

<div class="container">

<h2 style="padding: 30px">Booking List</h2>
<%@include file="businessMessage.jsp" %>
<table class="table bg-light text-dark">
  <thead>
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Booking Date</th>
      <th scope="col">Hotel Name</th>
      <th scope="col">Number of days</th>
      <th scope="col">Number of person</th>   
      <th scope="col">Number of room</th>
      <th scope="col">Price Per Ticket</th>                
       <c:choose>
      <c:when test="${sessionScope.user.userRole=='Admin'}">   
      <th scope="col">Action</th>  
      </c:when>  
      <c:otherwise>
      </c:otherwise>
      </c:choose> 
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="li" varStatus="u">
    <tr>     
      <td>${li.firstName}</td>
      <td>${li.lastName}</td>
      <td>${li.email}</td>
      <td>${li.phoneNumber}</td>
      <td>${li.date}</td>
       <td>${li.eventName}</td>
      <td>${li.theatreNumber}</td>
      <td>${li.venue}</td>
      <td>${li.numberOfTicket}</td>
      <td>${li.price}</td>
     
      <td>  
      <c:choose>
      <c:when test="${sessionScope.user.userRole=='Admin'}">  
      <c:if test="${li.email != 'Admin@gmail.com'}"> 
      <a href="${pageContext.request.contextPath}/bookingDelete?id=${li.id}">Delete</a>   
      </c:if>
      </c:when>  
      <c:otherwise>
      </c:otherwise>
      </c:choose> 
      </td>
    
    </tr>
   </c:forEach>
  </tbody>
</table>


</div>

</body>
</html>