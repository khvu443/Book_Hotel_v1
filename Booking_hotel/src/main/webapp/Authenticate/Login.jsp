
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="./fonts/icomoon/style.css" />

        <link rel="stylesheet" href="./css/owl.carousel.min.css" />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./css/bootstrap.min.css" />

        <!-- Style -->
        <link rel="stylesheet" href="./css/style.css" />

        <title>Login #2</title>
    </head>

    <body>
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('./images/bg_1.jpg')"></div>
            <div class="contents order-2 order-md-1">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <h3>Login to <strong>Hiroto</strong></h3>
                            <p class="mb-4 ${NOTICE_LOGIN}">
                                ${MESSAGE_LOGIN}
                            </p>
                            <form action="http://localhost:8080/Booking_hotel/LoginController" method="GET">
                                <div class="form-group first">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" name="username" id="username" />
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password" />
                                </div>

                                <button type="submit" value="Log In" class="btn btn-outline-primary" >Login</button>
                                <button class="btn btn-outline-secondary" type="button">
                                    <a href="http://localhost:8080/Booking_hotel/Authenticate/Register.jsp" class="text-decoration-none text-dark" >Register</a>
                                </button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="./js/jquery-3.3.1.min.js"></script>
        <script src="./js/popper.min.js"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/main.js"></script>
    </body>

</html>
