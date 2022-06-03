<%-- 
    Document   : viewCandidates
    Created on : 10-Jan-2021, 11:53:10
    Author     : theo_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle = "Candidates">

    <h1> Candidates </h1>
    <body style="background-color:gainsboro">
        <form method="POST" action="${pageContext.request.contextPath}/ViewCandidates">

            <div class="table-responsive" style="background-image: url('b.jpg')";>

                <table class="table">
                    <thead>
                        <tr>       
                            <c:if test="${pageContext.request.isUserInRole('DirectorGeneralAndRecruiterRole')}">
                                <th scope="col"><button class="btn btn-outline-danger" type="submit">Delete candidate</button></th>

                                <th scope="col"> </th>
                                <th scope="col"></th>
                                </c:if>
                        </tr>
                    </thead>
                    <c:forEach var="cand" items="${candidates}" varStatus="status">
                        <tbody>
                            <tr>
                                <th scope="row">First name</th>
                                <td>${cand.first_name}</td>

                            </tr>
                            <tr>
                                <th scope="row">Last name</th>
                                <td>${cand.last_name}</td>

                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>${cand.email}</td>

                            </tr>
                            <tr>
                                <th scope="row">Phone</th>
                                <td>${cand.phone}</td>

                            </tr>
                            <tr>
                                <th scope="row">Address</th>
                                <td>${cand.address}</td>

                            </tr>
                            <tr>
                                <th scope="row">Interview date</th>
                                <td>${cand.interview_date}</td>

                            </tr>
                            <tr>
                                <th scope="row">Position</th>
                                <td>${cand.position}</td>

                            </tr>
                            <tr>
                                <th scope="row">Comments</th>
                                <td>${cand.comments}</td>

                            </tr>
                            <tr>
                                <th scope="row"></th>

                                <td> <a class="btn btn-link" name="id" href="${pageContext.request.contextPath}/DownloadCv?id=${cand.id}" style="text-align: center" role="button">View CV</a>   
                                    <c:if test="${pageContext.request.isUserInRole('DirectorRole')}">
                                        <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/AddComment?id=${cand.id}" style="text-align: center" role="button">Add Comment</a>

                                    </c:if>
                                    <c:if test="${pageContext.request.isUserInRole('DirectorGeneralAndRecruiterRole')}">
                                        <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/EditCandidateButton?id=${cand.id}" style="text-align: center" role="button">Edit Candidate</a>
                                        <input type="checkbox" name="candidate_ids" value="${cand.id}">
                                    </c:if>


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