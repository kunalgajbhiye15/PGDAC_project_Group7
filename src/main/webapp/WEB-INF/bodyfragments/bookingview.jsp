<%@page import="java.util.Date"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:set var = "now" value = "<%= new java.util.Date()%>" />

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
           <%@include file="businessMessage.jsp" %>
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Book Event</h3>
            
             
            <sf:form method="post" action="${pageContext.request.contextPath}/addBooking" modelAttribute="form">
            <sf:input type="hidden" id="id" class="form-control form-control-lg" path="id" name="id" value="${form.id}"/>
            <sf:input type="hidden" id="eventId" class="form-control form-control-lg" path="eventId" name="eventId" value="${event.id}"/>
              <div class="row">
              
                   <div class="col-md-6 mb-4">
                  <div class="form-outline">
                  <s:bind path="eventName">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="eventName" class="form-control form-control-lg" path="eventName" value="${event.eventName}" readonly="true"/>
                    <label class="form-label" for=eventName>Selected Event</label>
                  </s:bind>
                  </div>             
                </div>
 
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                  <s:bind path="theatreNumber">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="theatreNumber" class="form-control form-control-lg" path="theatreNumber" value="${event.theatreNumber}" readonly="true"/>
                    <label class="form-label" for="theatreNumber">theatreNumber</label>
                  </s:bind>
                  </div>             
                </div>
                
                
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                  <s:bind path="venue">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="venue" class="form-control form-control-lg" path="venue" value="${event.venue}" readonly="true"/>
                    <label class="form-label" for="venue">venue</label>
                  </s:bind>
                  </div>             
                </div>
                
                
               <div class="col-md-6 mb-4">
                  <div class="form-outline">
                  <s:bind path="type">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="type" class="form-control form-control-lg" path="type" value="${event.type}" readonly="true" />
                    <label class="form-label" for="type">type</label>
                  </s:bind>
                  </div>             
                </div>
                
                 <div class="col-md-6 mb-4">
                  <div class="form-outline">
                  <s:bind path="price">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="price" class="form-control form-control-lg" path="price" value="${event.price}" readonly="true" />
                    <label class="form-label" for="price">price</label>
                  </s:bind>
                  </div>             
                </div>
                
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">
                  <s:bind path="bookingDate">
                  <div class="form-outline datepicker w-100">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" class="form-control form-control-lg" min="2023-01-24" path="bookingDate" placeholder="dd/MM/yyyy" value="${event.date}" readonly="true"/>
                    <label for="bookingDate" class="form-label">bookingDate</label>
                  </div>
                  </s:bind>

                </div>

              </div>

               <div class="row">
                <div class="col-md-6 mb-4 pb-2">
                  <s:bind path="firstName">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="firstName" class="form-control form-control-lg"  path="firstName" value="${user.firstName}" readonly="true"/>
                    <label class="form-label" for="firstName">firstName</label>
                  </div>
                  </s:bind>

                </div>
  
                <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="lastName">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="lastName" class="form-control form-control-lg" path="lastName" value="${user.lastName}" readonly="true"/>
                    <label class="form-label" for="phoneNumber">lastName</label>
                  </div>
					</s:bind>
                </div> 
              </div>



              <div class="row">
                <div class="col-md-6 mb-4 pb-2">
                  <s:bind path="email">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="email" id="emailAddress" class="form-control form-control-lg"  path="email" value="${user.email}" readonly="true"/>
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>
                  </s:bind>

                </div>
  
                <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="phoneNumber">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="phoneNumber" class="form-control form-control-lg" path="phoneNumber" value="${user.phoneNumber}" readonly="true"/>
                    <label class="form-label" for="phoneNumber">Phone Number</label>
                  </div>
					</s:bind>
                </div> 
                
                 <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="numberOfTicket">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="numberOfTicket" class="form-control form-control-lg" path="numberOfTicket"  />
                    <label class="form-label" for="numberOfTicket">Number Of Ticket</label>
                  </div>
					</s:bind>
                </div> 

              </div>
 

                <c:choose>
  				<c:when test="${form.id>0}">
   				  <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Pay and Book" />
              </div>   
 			</c:when>

  			<c:otherwise>
             <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Pay and Book" />
              </div>
  			</c:otherwise>
			</c:choose> 

           </sf:form>
          
          </div>
        </div>
      </div>
    </div>
  </div>
</section>