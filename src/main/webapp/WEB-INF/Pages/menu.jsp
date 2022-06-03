
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
<nav class="navbar navbar-expand-md navbar-dark bg-dark ">
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown00" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About</a>
                <div class="dropdown-menu" aria-labelledby="dropdown00">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/aboutProgram.jsp">HR Trainee Program</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/aboutTeam.jsp">View our team</a>

                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown00" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jobs</a>
                <div class="dropdown-menu" aria-labelledby="dropdown00">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/ViewJobs">View Available Jobs</a>
                    <c:if test="${pageContext.request.isUserInRole('DirectorRole') || pageContext.request.isUserInRole('AdministratorRole') }">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/AddJob">Add Job</a>
                        
                    </c:if>
                </div>
            </li>
            <c:if test="${pageContext.request.isUserInRole('AdministratorRole') || pageContext.request.isUserInRole('DirectorGeneralAndRecruiterRole')}">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown00" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Candidates</a>
                <div class="dropdown-menu" aria-labelledby="dropdown00">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/ViewCandidates">View Candidates</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/AddCandidate">Add Candidate</a>
                </div>
            </li>
            </c:if>
            <c:if test="${pageContext.request.isUserInRole('AdministratorRole') || pageContext.request.isUserInRole('DirectorGeneralRole')}">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Users</a>

                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/ViewUsers">View users</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/AddUser">Add user</a>
                    </div>
                </li>
            </c:if>
        </ul>
        <ul class="navbar-nav m1-auto">
            <li class="nav-item">
                <c:choose>
                    <c:when test="${pageContext.request.getRemoteUser()==null}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                    </c:when>
                    <c:otherwise>
                        <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
    </div>
</nav>
</div>