<%-- 
    Document   : aboutTeam
    Created on : 28.12.2020, 21:06:55
    Author     : Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:pageTemplate pageTitle="Main Page">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            
            div.polaroid {
                width: 25%;
                background-color: white;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                margin: 1%;
                margin-bottom: 25px;
                padding: 1%;
            }

            div.Paragraph {
                text-align: center;
                padding: 1em 2em;
            }

            .containerflex {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            .animation {
                color: red;
                position: relative;
                animation: anim 5s linear 1s 1 forwards;
            }

            @keyframes anim {
                from {
                    color: red;
                    margin-left: 0%;

                }
                50% {
                    margin-left: 63%;
                    font-size: 3em;
                    color: blue;
                }
                100% {
                    margin-left: 0%;
                    text-align: center;
                    font-size: 2em;
                    color: green;
                }
            }

        </style>

    </head>

    <body style="background-color:gainsboro">
        <div class="table-responsive" style="background-image: url('b.jpg')";>
        <div class="animation">
            <h1>Echipa ULBS17</h1>
        </div>
        <div class="containerflex">
            <div class="polaroid">
                <img src="Ana.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Aftenie Ana-Maria</h3>
                </div>
            </div>
            <div class="polaroid">
                <img src="Bogdan.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Bogdan Menchiu</h3>
                </div>
            </div>
            <div class="polaroid">
                <img src="Iuliana.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Mantea Iuliana</h3>
                </div>
            </div>
            <div class="polaroid">
                <img src="Teodora.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Dejanu Teodora</h3>
                </div>
            </div>

            <div class="polaroid">
                <img src="Andreea.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Radu Andreea</h3>
                </div>
            </div>
            <div class="polaroid">
                <img src="Denisa.jpeg" alt="A member of the teams" style="width:100%">
                <div class="Paragraph">
                    <h3>Tichidelean Denisa</h3>
                </div>
            </div>
        </div>
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