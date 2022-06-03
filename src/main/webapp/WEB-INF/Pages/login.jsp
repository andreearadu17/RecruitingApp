<%-- 
    Document   : login
    Created on : 28.12.2020, 18:52:51
    Author     : Ana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Login">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="canonical" href="https://getbootstrap.com/docs/4.1/examples/sign-in/">
        <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" href="/docs/4.1/assets/img/favicons/favicon.ico">

        <style>
           
            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: auto;
            }
            .form-signin .checkbox {
                font-weight: 400;
            }
            .form-signin .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="username"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>
    </head>
    <body style="background-color:gainsboro">
        <div class="table-responsive" style="background-image: url('b.jpg')";>
        <c:if test="${message != NULL}">
            <div class="alert alert-warning" role="alert">
                ${message}
            </div>
        </c:if>
        <form class="form-signin" method="POST" action="j_security_check">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputUsername" class="sr-only">Username</label>
            <input type="username" id="inputUsername" name="j_username" class="form-control" placeholder="Username" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword"  name="j_password" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
    </body>
     <!-- Footer -->
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
            </t:pageTemplate>
