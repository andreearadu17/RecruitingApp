<%-- 
    Document   : viewUsers
    Created on : Jan 12, 2021, 1:11:29 AM
    Author     : Iuliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle = "Users">

    <h1> Users </h1>
    <body style="background-color:gainsboro">
        <form method="POST" action="${pageContext.request.contextPath}/ViewUsers">
            <div class="table-responsive" style="background-image: url('b.jpg')";>
                <table class="table">
                    <thead>
                        <tr>       
                            <th scope="col"><button class="btn btn-outline-danger" type="submit">Delete user</button></th>

                            <th scope="col"> </th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <tbody>
                            <tr>
                                <th scope="row">First name</th>
                                <td>${user.first_name}</td>

                            </tr>
                            <tr>
                                <th scope="row">Last name</th>
                                <td>${user.last_name}</td>


                            </tr>
                            <tr>
                                <th scope="row">Username</th>
                                <td>${user.username}</td>


                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>${user.email}</td>


                            </tr>
                            <tr>
                                <th scope="row">Usertype</th>
                                <td>${user.usertype}</td>


                            </tr>
                            <tr>
                                <th scope="row">Description</th>
                                <td>${user.description}</td>


                            </tr>
                            <tr>
                                <th scope="row"></th>

                                <td>    
                                    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/EditUserButton?id=${user.id}" style="text-align: center" role="button">Edit User</a>   
                                    <input type="checkbox" name="user_ids" value="${user.id}">
                                </td>

                            </tr>
                            <tr>
                                <th scope="row">   </th>
                                <td>   </td>


                            </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
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
    <!-- Footer -->
</t:pageTemplate>