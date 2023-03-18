
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="http://localhost:8080/Booking_hotel/Authenticate/fonts/icomoon/style.css" />

        <link rel="stylesheet" href="http://localhost:8080/Booking_hotel/Authenticate/css/owl.carousel.min.css" />

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


        <!-- Style -->
        <link rel="stylesheet" href="http://localhost:8080/Booking_hotel/Authenticate//css/style.css" />

        <title>Login #2</title>
    </head>

    <body>
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('http://localhost:8080/Booking_hotel/Authenticate/images/bg_1.jpg')"></div>
            <div class="contents order-2 order-md-1">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <h3>Register to <strong>Hiroto</strong></h3>
                            <p class="mb-4 ${NOTICE_REG}" id="notice">
                                ${MESSAGE_REG}
                            </p>
                            <form action="http://localhost:8080/Booking_hotel/RegisterController" method="POST">
                                <div class="form-group first">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" name="username" id="username" />
                                </div>

                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password" />
                                </div>

                                <div class="form-group last mb-3">
                                    <label for="re_password">Re-Password</label>
                                    <input type="password" class="form-control" name="re_password" id="re_password" />
                                </div>

                                <div class="form-group last mb-3">
                                    <label for="fullname">Full Name</label>
                                    <input type="text" class="form-control" name="fullname" id="fullname" />
                                </div>

                                <button type="submit" class="btn btn-outline-primary" >Sign Up</button>

                                <button class="btn btn-outline-secondary" type="button">
                                    <a href="http://localhost:8080/Booking_hotel/Authenticate/Login.jsp" class="text-decoration-none text-dark" >Login</a>
                                </button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="http://localhost:8080/Booking_hotel/Authenticate//js/jquery-3.3.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
        <script src="http://localhost:8080/Booking_hotel/Authenticate/js/main.js"></script>
    </body>

</html>

