
<%-- 
    Document   : viewJobs
    Created on : 06.01.2021, 16:45:12
    Author     : theo_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="View Jobs">
    <h1>JOBS</h1>
    <body  style="background-color:gainsboro">
        <form method="POST" action="${pageContext.request.contextPath}/ViewJobs">

            <div class="table-responsive"  style="background-image: url('b.jpg')";>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <c:choose>
            <c:when test="${pageContext.request.isUserInRole('DirectorGeneralRole')}">
                     <c:forEach var="job" items="${jobs}" varStatus="status"> 
                       <tbody>
                        <th scope="row">Job name</th>
                        <td>${job.jobName}</td>
                        </tr>
                        <tr>
                            <th scope="row">Description</th>
                            <td>${job.jobDescription}</td>
                        </tr>
                        <tr>
                            <th scope="row">Department</th>
                            <td>${job.department}</td>
                        </tr>
                        <tr>
                            <th scope="row">Availability</th>
                            <td>${job.availability}</td>
                        </tr>                 
                                <tr>
                                    <th scope="row">Number of people in need</th>
                                    <td>${job.numberInNeed}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Author</th>
                                    <td>${job.username}</td>
                                </tr>

                                <tr>
                                    <th scope="row">Job Approval</th>
                                    <td>${job.approval}</td>
                                </tr>
                      
                        <tr>

                            <td>
                                
                                <input type="hidden" name="job_id" value="${job.id}"/>
                                <a class="btn btn-success" href="${pageContext.request.contextPath}/EditJob?id=${job.id}" role="button">Edit Job</a>                               
                                <button class="btn btn-danger" type="submit"> Delete </button>
                                 <a class="btn btn-warning" href="${pageContext.request.contextPath}/email?id=${job.id}" role="button">Send description in email</a>  
                            </td>                                  
                        </tr>
                        <tr>
                            <th scope="row">   </th>
                            <td>   </td>
                        </tr>
                        </tbody>
                    </c:forEach>
                    </c:when>         
                    
                        <c:otherwise>
                        <!-- *********************************************=--->
                    <c:forEach var="job" items="${jobs}" varStatus="status"> 
                        <c:if test="${job.approval == 'Approved'}">
                       <tbody>
                           <tr>
                        <th scope="row">Job name</th>
                        <td>${job.jobName}</td>
                        </tr>
                        <tr>
                            <th scope="row">Description</th>
                            <td>${job.jobDescription}</td>
                        </tr>
                        <tr>
                            <th scope="row">Department</th>
                            <td>${job.department}</td>
                        </tr>
                        <tr>
                            <th scope="row">Availability</th>
                            <td>${job.availability}</td>
                        </tr><!-- comment -->
                        <c:if test="${pageContext.request.isUserInRole('DirectorRole')}">
                                <tr>
                                    <th scope="row">Number of people in need</th>
                                    <td>${job.numberInNeed}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Author</th>
                                    <td>${job.username}</td>
                                </tr>

                                <tr>
                                    <th scope="row">Job Approval</th>
                                    <td>${job.approval}</td>
                                </tr>
                        </c:if>
                        <c:if test="${pageContext.request.isUserInRole('DirectorRole')}">
                        <tr>
                            <td>        
                                <input type="hidden" name="job_id" value="${job.id}"/>
                                <a class="btn btn-success" href="${pageContext.request.contextPath}/EditJob?id=${job.id}" role="button">Edit Job</a>
                                <a class="btn btn-warning" href="${pageContext.request.contextPath}/email?id=${job.id}" role="button">Send description in email</a> 
                            </td>
                        </c:if>
                        </tr>
                        <c:if test="${pageContext.request.isUserInRole('DirectorRole')==false}">
                        <tr>
                       <td> <a class="btn btn-warning" href="${pageContext.request.contextPath}/ApplyJob?id=${job.id}" role="button">Apply</a> </td>
                        </tr>
                        </c:if>
                        <tr>
                            <th scope="row"> </th>
                            <td> </td>
                        </tr>
                        </tbody>
                        </c:if>
                         
                    </c:forEach>
                        </c:otherwise>
                       
                        </c:choose>
                </table>
            </div>

        </form>
		</body>
                <footer class="bg-dark text-center text-lg-start ">
        <!-- Grid container -->
        <div class="container p-4">
            <!--Grid row-->
            <div class="row">
                <!--Grid column-->

                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                    <h5 class="text-uppercase text-light">CONTACT US</h5>

                    <ul class="list-unstyled mb-0">
                        <li>
                            <a>&#9742;</a>
                            <a href="!#" class="text-light">0749812278</a>
                        </li>
                        <li>
                            <a>&#x1F4E7;</a>
                            <a href="mailto: ulbs17@yahoo.com" class="text-light">ulbs17@yahoo.com</a>
                        </li>
                        <li>

                            <a href="https://www.google.ro/maps/place/Facultatea+de+Inginerie/@45.7898412,24.1441081,17z/data=!3m1!4b1!4m5!3m4!1s0x474c678f186eb6cf:0xc168eca1cc733c84!8m2!3d45.7898412!4d24.1462968?hl=ro" class="text-light">Strada Emil Cioran 4, Sibiu 550025</a>
                        </li>

                    </ul>
                </div>
                <!--Grid column-->

                <!--Grid column-->

            </div>
            <!--Grid row-->
        </div>
        <!-- Grid container -->


    </footer>
        <script>
            (function () {
                'use strict';

                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');

                    // Loop over them and prevent submission
                    Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }

                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>
       
                </t:pageTemplate>

