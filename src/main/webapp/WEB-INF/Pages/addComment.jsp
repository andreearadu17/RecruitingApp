<%-- 
    Document   : addComent
    Created on : 14-Jan-2021, 17:54:26
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Add Comment">

    <body style="background-color:gainsboro">
        <h1>Add Comment</h1>
        <form class="needs-validation" novalidate method="POST"  action="${pageContext.request.contextPath}/AddComment" style="background-image: url('b.jpg')";>

            <div class=row">
                <div class="col-md-6 nb-3">
                    <label for="comments">Comments </label>
                    <input type="text" class="form-control" id="comments" name="comments" placeholder="" value="" ><!-- comment -->
                    <input type="hidden"  name="candidate_id" value="${candidate.id}">
                </div>
            </div><!-- comment -->
            <div><label></label></div>
            <button class=" btn btn-primary btn-lg btn-block" type="submit">Add</button>
        </form>
        <div class=row"> <label> </label></div>
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


