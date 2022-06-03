<%-- 
    Document   : editCandidateButton
    Created on : 28-Dec-2020, 23:38:47
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Edit Candidate Data">
    <body style="background-color:gainsboro">
        <h1> Here, ${pageContext.request.remoteUser}, you can edit a candidate</h1>
        <form class="needs-validation" novalidate method="POST" enctype = "multipart/form-data" action="${pageContext.request.contextPath}/EditCandidateButton" style="background-image: url('b.jpg')";>
            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="first_name">First name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder=""  required value ="${candidates.first_name}"/><!-- comment -->
                    <div class="invalid-feedback">
                        First name is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="last_name">Last name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="" value="${candidates.last_name}" required><!-- comment -->
                    <div class="invalid-feedback">
                        Last name is required.
                    </div>
                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="" value="${candidates.email}"  required><!-- comment -->
                    <div class="invalid-feedback">
                        Email is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="mobile">Mobile phone</label>
                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="" value="${candidates.phone}"  required><!-- comment -->
                    <div class="invalid-feedback">
                        Mobile phone is required.
                    </div>
                </div>
            </div><!-- comment -->



            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="" value="${candidates.address}"  ><!-- comment -->

                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="interview">Job Interview date </label>
                    <input type="date" class="form-control" id="interview" name="interview" placeholder="" value="${candidates.interview_date}"  ><!-- comment -->

                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="job_position">Job Position</label>
                    <select class="custom-select d-block w-100" id="job_position" name="job_position"  required>
                        <option value="">Choose...</option>
                        <c:forEach var="job" items="${jobs}" varStatus="status">
                            <option value="${job.id}" ${candidates.position eq job.jobName ? 'selected' : '' }>${job.jobName}</option>
                        </c:forEach>

                    </select>
                    <div class="invalid-feedback">
                        Job Position is required.

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 nb-3">
                    <label for="comments">Comments </label>
                    <input type="text" class="form-control" id="comments" name="comments" placeholder="" value="${candidates.comments}"  ><!-- comment -->
                    <input type="hidden" name="candidate_id" value ="${candidates.id}"/>
                </div>
            </div><!-- comment -->
            <div><label></label></div>
            <button class=" btn btn-primary btn-lg btn-block" type="submit">Edit Candidate</button>

        </form>
        <div class=row"> <label> </label></div>
    </body>

    <footer class="bg-dark text-center text-lg-start ">
        <!-- Grid container -->
        <div class="container-fluid">
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
    <!-- Footer -->
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


