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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
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

            <!-- Room Details Slider Begin -->
            <div class="room-details-slider">
                <div class="container">
                    <div class="room__details__pic__slider owl-carousel">
                        <div class="room__details__pic__slider__item set-bg" data-setbg="img/rooms/details/rd-1.jpg"></div>
                        <div class="room__details__pic__slider__item set-bg" data-setbg="img/rooms/details/rd-2.jpg"></div>
                        <div class="room__details__pic__slider__item set-bg" data-setbg="img/rooms/details/rd-3.jpg"></div>
                        <div class="room__details__pic__slider__item set-bg" data-setbg="img/rooms/details/rd-4.jpg"></div>
                    </div>
                </div>
            </div>
            <!-- Room Details Slider End -->

            <!-- Rooms Details Section Begin -->
            <section class="room-details spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="room__details__content">
                                <div class="room__details__rating">
                                    <div class="room__details__hotel">
                                        <span>${hotel.type}</span>
                                    <ul class="list-group list-group-horizontal border border-0">
                                        <li class="list-group-item"> <span><i class="fa-duotone fa-map-location fa-xl" style="--fa-primary-color: gold;"></i> ${hotel.address}</span>
                                        </li>
                                        <li class="list-group-item"><span><i class="fa-duotone fa-bed fa-xl" style="--fa-primary-color: rgb(255, 231, 51); --fa-secondary-opacity: 0.60;"></i> Empty rooms: ${hotel.getNumber_room()}</span>
                                        </li>
                                        <li class="list-group-item"> <span><i class="fa-duotone fa-circle-dollar fa-xl" style="--fa-secondary-color: gold; --fa-secondary-opacity: 0.50;"></i> Cost: $${hotel.getAmount()}/days</span>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                            <div class="room__details__title">
                                <h2>${hotel.name_hotel}</h2>
                                <c:if test="${user.getRoleID() == 1}">
                                    <a class="primary-btn text-decoration-none" data-bs-toggle="modal" data-bs-target="#book-hotel">Booking Now</a>
                                </c:if>

                            </div>
                            <div class="room__details__desc">
                                <h2>Description:</h2>
                                <p>We’re halfway through the summer, but while plenty of people are kicking back and
                                    enjoying their vacations, the social media development teams likely aren’t doing the
                                    same. In the past two weeks alone, we’ve seen four big new updates that can directly
                                    impact the social marketing campaigns of hotels, resorts, and other businesses in the
                                    hospitality industry. Let’s take a close look at each one.</p>
                                <p>The new desktop version of the site is significantly improved, which will make it easier
                                    for hotels and resorts to navigate the platform.</p>
                                <p>There is one big change though that we want to note, and that’s the more live video and
                                    local moments (the latter of which are based on your location). These will be
                                    prioritized in users’ feeds, so take advantage of this and create this content to
                                    improve your reach and connect with more members of your target audience.</p>
                                <p>We’ve gotten yet another new feature for Instagram Stories, and this time it’s the Chat
                                    sticker, which allows you to invite Story followers to join in on a new group chat.
                                    Instagram is currently advertising this as a way to jumpstart big group conversations or
                                    make plans.</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="room__details__facilities">
                                        <h2>Others facilities:</h2>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <ul>
                                                    <li><span class="icon_check"></span> Takami Bridal Attire</li>
                                                    <li><span class="icon_check"></span> Esthetic Salon</li>
                                                    <li><span class="icon_check"></span> Multilingual staff</li>
                                                    <li><span class="icon_check"></span> Dry cleaning and laundry</li>
                                                    <li><span class="icon_check"></span> Credit cards accepted</li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-6">
                                                <ul>
                                                    <li><span class="icon_check"></span> Rent-a-car</li>
                                                    <li><span class="icon_check"></span> Reservation & confirmation</li>
                                                    <li><span class="icon_check"></span> Babysitter upon request</li>
                                                    <li><span class="icon_check"></span> 24-hour currency exchange</li>
                                                    <li><span class="icon_check"></span> 24-hour Manager on Duty</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="room__details__more__facilities">
                                        <h2>Most popular facilities:</h2>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-1.png"
                                                                           alt=""></div>
                                                    <h6>Air Conditioning</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-2.png"
                                                                           alt=""></div>
                                                    <h6>Cable TV</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-3.png"
                                                                           alt=""></div>
                                                    <h6>Free drinks</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-4.png"
                                                                           alt=""></div>
                                                    <h6>Unlimited Wifi</h6>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-5.png"
                                                                           alt=""></div>
                                                    <h6>Restaurant quality</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-6.png"
                                                                           alt=""></div>
                                                    <h6>Service 24/24</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-7.png"
                                                                           alt=""></div>
                                                    <h6>Gym Centre</h6>
                                                </div>
                                                <div class="room__details__more__facilities__item">
                                                    <div class="icon"><img src="img/rooms/details/facilities/fac-8.png"
                                                                           alt=""></div>
                                                    <h6>Spa & Wellness</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Rooms Details Section End -->

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
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            <div class="footer__copyright__text">
                                <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                            </div>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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

        <!--modal for booking-->

        <!-- Button trigger modal -->
        <div class="modal fade" id="book-hotel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Booking Hotel</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <form class="row g-3" action="BookHotel" method="POST">

                            <div class="col-md-12">
                                <label for="hotel" class="form-label">Hotel</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fa-duotone fa-hotel fa-xl" style="--fa-secondary-color:gold;"></i></span>
                                    <input type="text" class="form-control" id="hotel" name="hotelName" value="${hotel.name_hotel}" required>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="name" class="form-label">Full Name</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fa-duotone fa-user fa-xl" style="--fa-primary-color:gold;"></i></span>
                                    <input type="text" class="form-control" id="name" name="user" value="${user.fullname}" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="check-in" class="form-label">Check in</label>
                                <input type="date" class="form-control" id="check-in" name="check-in" required>
                            </div>
                            <div class="col-md-6">
                                <label for="check-out" class="form-label">Check out</label>
                                <input type="date" class="form-control" id="check" name="check-out" required>
                            </div>
                            <div class="col-md-6">
                                <label for="rooms" class="form-label">Rooms</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fa-duotone fa-bed-front fa-xl" style="--fa-primary-color:gold;"></i></span>
                                    <input type="number" min="1" max="${hotel.getNumber_room()}" class="form-control" name="rooms" id="rooms" required>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <label for="guests" class="form-label">Guests</label>

                                <div class="input-group">
                                    <span class="input-group-text"><i class="fa-duotone fa-user-group fa-xl" style="--fa-secondary-color:gold;"></i></span>
                                    <input type="number"  min="1" max="10" class="form-control" id="guests" name="guests" required>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-outline-primary" type="submit">Book</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <c:if test="${bookError != null}">
            <script>
                window.addEventListener("load", function () {
                    alert("${bookError}");
                })
            </script>
        </c:if>
        <jsp:include page="Modal.jsp"></jsp:include>
        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    </body>

</html>