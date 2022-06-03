<%-- 
    Document   : addUser
    Created on : Jan 8, 2021, 1:39:57 PM
    Author     : Iuliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Add User">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background-color:gainsboro">
        <h1> Add User </h1>
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser" style="background-image: url('b.jpg')";>
            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="first_name">First name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="" value="" required><!-- comment -->
                    <div class="invalid-feedback">
                        First name is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="last_name">Last name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="" value="" required><!-- comment -->
                    <div class="invalid-feedback">
                        Last name is required.
                    </div>
                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required><!-- comment -->
                    <div class="invalid-feedback">
                        Username is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="" value="" required><!-- comment -->
                    <div class="invalid-feedback">
                        Email is required.
                    </div>
                </div>
            </div><!-- comment -->



            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="" value="" ><!-- comment -->
                    <div class="invalid-feedback">
                        Password is required.
                    </div>
                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="usertype">User Type</label>
                    <select class="custom-select d-block w-100" id="usertype" name="usertype"  required><!-- comment -->
                        <option value="">Choose...</option>
                        <option value="ADMINISTRATOR">ADMINISTRATOR</option><!-- comment -->
                        <option value="DIRECTOR_GENERAL">DIRECTOR_GENERAL</option><!-- comment -->
                        <option value="DIRECTOR_DEPARTAMENT">DIRECTOR_DEPARTAMENT</option>
                        <option value="DIRECTOR_HR">DIRECTOR_HR</option><!-- comment -->
                        <option value="RECRUITER">RECRUITER</option>
                    </select>
                    <div class="invalid-feedback">
                        User Type is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="description">Description</label>
                    <input type="text"  id="usertype" name="description" required ><!-- comment -->
                    <div class="invalid-feedback">
                        Description is required.
                    </div>
                </div>
            </div><!-- comment -->

            <button class=" btn btn-primary btn-lg btn-block" type="submit">Add</button>
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


