<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="Hiroto Template" />
        <meta name="keywords" content="Hiroto, unica, creative, html" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Hiroto</title>

        <!-- Google Font -->
        <link
            href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@400;500;600;700;800;900&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap"
            rel="stylesheet"
            />

        <!-- Css Styles -->

        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
        <link rel="stylesheet" href="css/nice-select.css" type="text/css" />
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
            crossorigin="anonymous"
            />
        <link rel="stylesheet"
              href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css"
              />

        <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Offcanvas Menu Begin -->
        <jsp:include page="header_mobile_view.jsp"></jsp:include>
            <!-- Offcanvas Menu End -->

            <!-- Header Section Begin -->
            <header class="header">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="header__nav__option">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2">
                                <div class="header__logo">
                                    <a href="HomePage"><img src="img/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <div class="header__nav">
                                    <nav class="header__menu">
                                        <ul class="menu__class">
                                            <li><a href="HomePage" class="nav-link">Home</a></li>
                                            <li><a href="hotels.jsp" class="nav-link">Rooms</a></li>
                                            <li><a href="#" class="nav-link">About Us</a></li>
                                            <li><a href="#" class="nav-link">News</a></li>
                                            <li><a href="#" class="nav-link">Contact</a></li>
                                        </ul>
                                    </nav>
                                    <div class="header__nav__widget">
                                        <a href="hotels.jsp" class="nav-link">Book Now <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="canvas__open">
                            <span class="fa fa-bars"></span>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header Section End -->

            <!-- Hero Section Begin -->
            <section class="hero spad set-bg" data-setbg="img/hero.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="breadcrumb__text mb-3">
                                <h1>Booking History</h1>
                                <div class="breadcrumb__links">
                                    <a href="HomePage">Home</a>
                                    <span>Booking History</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Rooms Section Begin -->
            <section class="rooms spad">
                <div class="container">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead class="text-center">
                            <tr>
                                <th>ID</th>
                                <th>Hotel Name</th>
                                <th>Address</th>
                                <th>Check In</th>
                                <th>Check Out</th>
                                <th>Guests</th>
                                <th>Rooms</th>
                                <th>Costs</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${order}" var="o">
                            <tr>
                                <td>${o.getOrderId()}</td>

                                <!--
                                dùng vòng lặp để check xem id của order == id của khách sạn 
                                > trả về tên khách sạn để hiện trên page thay vì 
                                -->
                                <c:forEach items="${hotel}" var="h">
                                    <c:if test="${o.hotelId == h.getHotelID()}">
                                        <td>${h.name_hotel}</td>
                                    </c:if>
                                </c:forEach>
                                <td>${o.address}</td>
                                <td>${o.check_in}</td>
                                <td>${o.check_out}</td>
                                <td>${o.guests}</td>
                                <td>${o.rooms}</td>
                                <td>${o.getPrice()}</td>
                                <!--Dùng để hủy đơn-->
                                <td> <a href="CancelBook?id=${o.getOrderId()}" class="text-danger text-decoration-none"><i class="fa-solid fa-xmark"></i></a>  </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- Rooms Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="logo__carousel owl-carousel">
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-1.png" alt="" /></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-2.png" alt="" /></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-3.png" alt="" /></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-4.png" alt="" /></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-5.png" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="footer__content">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer__about">
                                <div class="footer__logo">
                                    <a href="#"><img src="img/logo.png" alt="" /></a>
                                </div>
                                <h4>(123) 456-78-91096</h4>
                                <ul>
                                    <li>Ernser Vista Suite 437, NY</li>
                                    <li>Info.colorlib@gmail.com</li>
                                </ul>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 offset-lg-1 col-md-5 offset-md-1 col-sm-6">
                            <div class="footer__widget">
                                <h4>Quick Link</h4>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Booking</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Review</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Our Room</a></li>
                                    <li><a href="#">Restaurants</a></li>
                                    <li><a href="#">Payments</a></li>
                                    <li><a href="#">Events</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-8 col-sm-12">
                            <div class="footer__newslatter">
                                <h4>Subscribe our newlatester</h4>
                                <form action="#">
                                    <input type="text" placeholder="Your E-mail Address" />
                                    <button type="submit">Subscribe</button>
                                </form>
                                <div class="footer__newslatter__find">
                                    <h5>Find Us:</h5>
                                    <div class="footer__newslatter__find__links">
                                        <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                        <a href="#"><i class="fa fa-map-o"></i></a>
                                        <a href="#"><i class="fa fa-dribbble"></i></a>
                                        <a href="#"><i class="fa fa-forumbee"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer__copyright">
                    <div class="row">
                        <div class="col-lg-7 col-md-7">
                            <div class="footer__copyright__text">
                                <p>© Copyright 2019 Hotell Hiroto - Theme by Colorlib.</p>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5">
                            <ul class="footer__copyright__links">
                                <li><a href="#">Terms Of Use</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->
        <jsp:include page="Modal.jsp"></jsp:include>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- <script src="js/bootstrap.min.js"></script> -->
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
            integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
            integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        ></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
        <script>
            $(document).ready(function () {
                $("#dataTable").DataTable();
            });
        </script>
    </body>
</html>
