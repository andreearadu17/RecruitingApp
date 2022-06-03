<%-- 
    Document   : editUserButton
    Created on : Jan 9, 2021, 6:33:24 PM
    Author     : Iuliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Edit User Data">
    <body style="background-image: url('background.jpg');
          background-size: auto;">
        <h1>Edit User Data</h1>
        <form class="needs-validation" novalidate method="POST"  action="${pageContext.request.contextPath}/EditUserButton">
            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="first_name">First name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder=""  required value ="${users.first_name}"/><!-- comment -->
                    <div class="invalid-feedback">
                        First name is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="last_name">Last name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="" required value ="${users.last_name}"/><!-- comment -->
                    <div class="invalid-feedback">
                        Last name is required.
                    </div>
                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="usertype">Username</label>
                    <input type="text" class="form-control" id="last_name" name="username" placeholder="" required value ="${users.username}" readonly="readonly"/><!-- comment --> 
                </div>
            </div><!-- comment -->

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="" required value ="${users.email}"/><!-- comment -->
                    <div class="invalid-feedback">
                        Email is required.
                    </div>
                </div>
            </div>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="" required value ="${users.password}"/><!-- comment -->
                    <div class="invalid-feedback">
                        Password is required.
                    </div>
                </div>
            </div>


            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="usertype">User Type</label>
                    <select class="custom-select d-block w-100"  id="usertype" name="usertype" placeholder="" required value="">
                        <option value="${users.usertype}">${users.usertype}</option>
                        <option value="ADMINISTRATOR"> ADMINISTRATOR </option>
                        <option value="DIRECTOR_GENERAL"> DIRECTOR GENERAL </option>
                        <option value="DIRECTOR_HR"> DIRECTOR HR </option>
                        <option value="DIRECTOR_DEPARTAMENT">DIRECTOR_DEPARTAMENT</option>
                        <option value="RECRUITER">RECRUITER</option>
                    </select>
                    <div class="invalid-feedback">
                        User Type is required.
                    </div>
                </div>
            </div><!-- comment -->


            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="description">Description </label>
                    <input type="description" class="form-control" id="decription" name="description" placeholder="" required value ="${users.description}"/> <!-- comment -->

                </div>
            </div><!-- comment -->
            <div><label></label></div>
            <input type="hidden" name="iduser" value ="${users.id}"/>

            <button class=" btn btn-primary btn-lg btn-block" type="submit">Edit</button>
        </form>
    </body>
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

