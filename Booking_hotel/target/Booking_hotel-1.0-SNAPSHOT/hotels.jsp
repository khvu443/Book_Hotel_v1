<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Hiroto Template">
        <meta name="keywords" content="Hiroto, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Hiroto</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet" type="text/css" />
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">-->
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
                                        <ul>
                                            <li><a href="HomePage" class="nav-link">Home</a></li>
                                            <li class="active nav-link" ><a href="hotels.jsp">Rooms</a></li>
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
                                <h1>Our Room</h1>
                                <div class="breadcrumb__links">
                                    <a href="HomePage">Home</a>
                                    <span>Rooms</span>
                                </div>
                            </div>
                            <form action="HotelRoom" method="GET" class="filter__form">
                                <div class="filter__form__item filter__form__item--search">
                                    <p>Location</p>
                                    <div class="filter__form__input">
                                        <input name="location" type="text" placeholder="Search Location" required>
                                        <span class="icon_search"></span>
                                    </div>
                                </div>

                                <div class="filter__form__item filter__form__item--search">
                                    <p>Rooms</p>
                                    <div class="filter__form__input">
                                        <span><i class="fa-duotone fa-bed-front"></i></span>
                                        <input name="rooms" type="number" placeholder="Number of rooms" min="1" value="1" required>
                                    </div>
                                </div>

                                <div class="filter__form__item filter__form__item--select">
                                    <p>People(s)</p>
                                    <div class="filter__form__select">
                                        <span class="icon_group"></span>
                                        <select name="peoples">
                                            <option value="1">1 People</option>
                                            <option value="2">2 Peoples</option>
                                            <option value="3">3 Peoples</option>
                                            <option value="4">4 Peoples</option>
                                            <option value="5">5 Peoples</option>
                                            <option value="6">6 Peoples</option>
                                            <option value="7">7 Peoples</option>
                                            <option value="8">8 Peoples</option>
                                            <option value="9">9 Peoples</option>
                                            <option value="10">10 Peoples</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit">CHECK AVAILABLE</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Rooms Section Begin -->
            <section class="rooms spad">
                <div class="container">
                    <div class="row">
                    <c:forEach items="${listHotel}" var="hotel">
                        <c:if test="${hotel.getHotelID()%2==1}">
                            <div class="row col-lg-12 justify-content-between">
                                <div class="col-lg-5 p-0 col-md-5">
                                    <div class="room__pic__slider owl-carousel">
                                        <div class="room__pic__item set-bg" data-setbg="${hotel.image}"></div>
                                    </div>
                                </div>
                                <div class="col-lg-5 p-0 col-md-5">
                                    <div class="room__text">
                                        <h3>${hotel.name_hotel}</h3>
                                        <h2><sup>$</sup>${hotel.getAmount()}<span>/day</span></h2>
                                        <ul>
                                            <li><span>Address:</span>${hotel.address}</li>
                                            <li><span>Rooms:</span>${hotel.getNumber_room()}</li>
                                            <li><span>Services:</span>Wifi, Television, Bathroom,...</li>
                                            <li><span>View:</span>Sea View</li>
                                        </ul>
                                        <a href="DetailHotel?hotelId=${hotel.getHotelID()}">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if  test="${hotel.getHotelID()%2==0}">
                            <div class="row col-lg-12 justify-content-between">
                                <div class="col-lg-5 p-0 col-md-5">
                                    <div class="room__text">
                                        <h3>${hotel.name_hotel}</h3>
                                        <h2><sup>$</sup>${hotel.getAmount()}<span>/day</span></h2>
                                        <ul>
                                            <li><span>Address:</span>${hotel.address}</li>
                                            <li><span>Rooms:</span>${hotel.getNumber_room()}</li>
                                            <li><span>Services:</span>Wifi, Television, Bathroom,...</li>
                                            <li><span>View:</span>Sea View</li>
                                        </ul>
                                        <a href="DetailHotel?hotelId=${hotel.getHotelID()}">View Details</a>
                                    </div>
                                </div>
                                <div class="col-lg-5 p-0 col-md-5">
                                    <div class="room__pic__slider owl-carousel">
                                        <div class="room__pic__item set-bg" data-setbg="${hotel.image}"></div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>


                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="pagination__number">
                            <!--nếu page mà ít hơn 1 sẽ ko có pagination-->
                            <c:if test="${page > 1}">

                                <!--sẽ truyền các giá trị loc, rooms và page -->
                                <c:if test="${curPage > 1}">
                                    <a href="HotelRoom?page=${curPage - 1}&location=${location}&rooms=${rooms}">Previous <span class="arrow_left"></span></a>
                                    </c:if>


                                <c:forEach var="i" begin="1" end="${page}">
                                    <a href="HotelRoom?page=${i}&location=${location}&rooms=${rooms}">${i}</a>
                                </c:forEach>

                                <c:if test="${curPage < page}">
                                    <a href="HotelRoom?page=${curPage + 1}&location=${location}&rooms=${rooms}">Next <span class="arrow_right"></span></a>
                                    </c:if>

                            </c:if>
                        </div>
                    </div>
                </div>
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
                                <a href="#"><img src="img/logo/logo-1.png" alt=""></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-2.png" alt=""></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-3.png" alt=""></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-4.png" alt=""></a>
                            </div>
                            <div class="logo__carousel__item">
                                <a href="#"><img src="img/logo/logo-5.png" alt=""></a>
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
                                    <a href="#"><img src="img/logo.png" alt=""></a>
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
                                    <input type="text" placeholder="Your E-mail Address">
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
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
