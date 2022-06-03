<%-- 
    Document   : email
    Created on : 14.01.2021, 12:16:41
    Author     : Ana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:pageTemplate pageTitle="Send Email">
    <body style="background-color:gainsboro">
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/email" style="background-image: url('b.jpg')";>
            <br><h1 style="text-align:left">Send email</h1>
            <div class="col-md-6 mb-3">
                <label for="email" style="font-size:20px;">To:</label>
                <input type="text" class="form-control"  id="email" name="email" placeholder="Email"  required value="${user.email}">
                <div class="invalid-feedback">
                    Email is required.
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="subject" style="font-size:20px;">Subject:</label>
                <input type="text" class="form-control"  id="subject" name="subject" autofocus>
            </div>
            <div class="col-md-6 mb-3">
                <label for="message" style="font-size:20px;">Message:</label>
                <textarea id="messagesize" cols="50" rows="6" class="form-control" name="message"></textarea>
            </div>
            <hr class="mb-4">
            <input type="hidden" name="user_id" value="${user.id}"/>
            <button class="btn btn-dark btn-lg" type="submit">Send</button>
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
    <script>// Example starter JavaScript for disabling form submissions if there are invalid fields
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
        })();</script>
    </t:pageTemplate>
