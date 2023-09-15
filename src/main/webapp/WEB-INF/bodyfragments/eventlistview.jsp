<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>



 <section style="background-color: white;">

  <div class="container py-3 content">
  <div class="row">
  
    <c:forEach items="${list}" var="li" varStatus="u">
    <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">	
        <div class="card">
          <div class="d-flex justify-content-between p-3">
            <p class="lead mb-0" style="font-weight: bold;">Event Name: ${li.eventName}</p>
          </div>
          <img alt="" src="${pageContext.request.contextPath}/getEventImage/${li.id}" class="card-img-top" height="300px">
          <div class="card-body">

            <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Theater Number</h5>
              <h5 class="text-dark mb-0">${li.theatreNumber} </h5>
            </div>

            <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Venue</h5>
              <h5 class="text-dark mb-0">${li.venue}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Type</h5>
              <h5 class="text-dark mb-0">${li.type}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Date</h5>
              <h5 class="text-dark mb-0">${li.date}</h5>
            </div>
            
             <div class="d-flex justify-content-between mb-3">
              <h5 class="mb-0" style="font-weight:normal;">Time</h5>
              <h5 class="text-dark mb-0">${li.time}</h5>
            </div>
            
            
            <div>
             <div class="col-md-6 mb-4">
             
             <c:choose>
             
             <c:when test="${sessionScope.user.userRole == 'Admin'}">
                <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/eventEdit?id=${li.id}"><i class="fas fa-pen"></i></a>
             
            </div>
               <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/eventDelete?id=${li.id}"><i class="fas fa-trash"></i></a> 
              </div>
               <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/booking?id=${li.id}" class="btn btn-primary">Book Event</a> 
              </div>
              
             </c:when>
             <c:otherwise>
  		     <div class="d-flex justify-content-between mb-3">
             <a href="${pageContext.request.contextPath}/booking?id=${li.id}" class="btn btn-primary">Book Event</a> 
              </div>
             
             </c:otherwise>
             </c:choose>
    
             </div>
            </div>
            
         
          </div>
        </div>

   </div>
       </c:forEach>
       </div>
       </div>
 
 </section>
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
     
