<%-- 
    Document   : editJob
    Created on : Dec 30, 2020, 6:49:55 PM
    Author     : Denisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="EditJob" >
    <body style="background-color:gainsboro">
<h1> Here, ${pageContext.request.remoteUser}, you can edit a job </h1>
       
<form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditJob"  style="background-image: url('b.jpg')" >
            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="jobName">Edit job position</label>
                    
                    <input type="text" class="form-control" id="jobName" name="jobName" placeholder=""  required value="${job.jobName}">
                    <div class="invalid-feedback">
                        Job position is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="jobDescription">Edit job description</label>
                    <input type="text" class="form-control" id="jobDescription" name="jobDescription" placeholder="" required value="${job.jobDescription}" >
                    <div class="invalid-feedback">
                        Job description is required.
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="availability"'>Edit availability</label>
                    <select class="custom-select d-block w-100"  id="availability" name="availability" placeholder="" required value="">
                        <option value="${job.availability}">${job.availability}</option>
                        <option value="Available"> Available </option>
                        <option value="Unavailable"> Unavailable </option>

                    </select>
                    <div class="invalid-feedback">
                        Please select something.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="numberInNeed">Edit the number of necessary people</label>
                    <input type="text" class="form-control" id="numberInNeed" name="numberInNeed" placeholder="" required value="${job.numberInNeed}" >
                    <div class="invalid-feedback">
                        A number is required.
                    </div>
                </div>
            </div>


            <div class="row" >
                <div class="col-md-6 mb-3" >
                    <label for="user">Edit the person who added the job</label>
                    <select class="custom-select d-block w-100"  id="user" name="user" required>
                        <option value="">Choose...</option>
                        <c:forEach var="user" items="${users}" varStatus="status">
                            <option value="${user.id}" ${job.username eq user.username ? 'selected' : '' }>${user.username} -> ${user.first_name} ${user.last_name}</option>
                            
                        </c:forEach>

                    </select>
                    <div class="invalid-feedback">
                        Please select an author.
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6 mb-3" >
                    <label for="department" >Edit department </label>
                    <select class="custom-select d-block w-100" align='center' id="departament" name="department" placeholder="" required value="">
                        <option value="${job.department}">${job.department}</option>

                        <option value="Department1"> Department1 </option>
                        <option value="Department2"> Department2 </option>
                        <option value="Department3"> Department3 </option>
                        <option value="Department4"> Department4 </option>

                    </select>
                    <div class="invalid-feedback">
                        Please select a department.
                    </div>
                </div>
            </div>

          
            <div class="row" >
                <div class="col-md-6 mb-3" >
                    <label for="approval">Edit approval (director only)</label>
                    <select class="custom-select d-block w-100"  id="approval" name="approval"  required value="">
                        <option value="${job.approval}">${job.approval}</option>
                        <c:if test="${pageContext.request.isUserInRole('DirectorGeneralRole')}">
                        <option value="Approved">Approved</option>
                        <option value="Rejected">Rejected</option>
                        </c:if>
                      
                    </select>
                    <div class="invalid-feedback">
                        Please select something.
                    </div>
                </div>
            </div>


            <input type="hidden" name="job_id" value="${job.id}"/>
             <div><label></label></div>
            <button class=" btn btn-primary btn-lg btn-block" type="submit">Edit job position</button>
             <div><label></label></div>
           

        </form></body>
        
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
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';

            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');

                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
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
