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
                                        <ul class="menu__class">
                                            <li class="active nav-link"><a href="HomePage">Home</a></li>
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
                        <div class="col-lg-12">
                            <div class="hero__text">
                                <h5>WELCOME HIROTO</h5>
                                <h2>Experience the greatest for you holidays.</h2>
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

            <!-- Home About Section Begin -->
            <section class="home-about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="home__about__text">
                                <div class="section-title">
                                    <h5>ABOUT US</h5>
                                    <h2>Welcome Hiroto Hotel In Street L’Abreuvoir</h2>
                                </div>
                                <p class="first-para">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
                                    fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                <p class="last-para">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                    doloremque.</p>
                                <img src="img/home-about/sign.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="home__about__pic">
                                <img src="img/home-about/home-about.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Home About Section End -->

            <!-- Services Section Begin -->
            <section class="services spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-1.png" alt="">
                                <h4>Free Wi-Fi</h4>
                                <p>The massive investment in a hotel or resort requires constant reviews and control in order to
                                    make it a successful investment.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-2.png" alt="">
                                <h4>Premium Pool</h4>
                                <p>Choose from 4 unique ready made concepts, let us help you create the concept perfect for you
                                    or let HCA.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-3.png" alt="">
                                <h4>Coffee Maker</h4>
                                <p>HCA's Owner's Representation is taking care of just these important factors, may it be
                                    through regular site visits and spot checks.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-4.png" alt="">
                                <h4>Bar Wine</h4>
                                <p>For properties with third party management companies, HCA Consultants will as well administer
                                    the terms and conditions.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-5.png" alt="">
                                <h4>TV HD</h4>
                                <p>We provide a critical analysis of a hotel's marketing strategy, bench-marking it against
                                    industry and competitive practices.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="services__item">
                                <img src="img/services/services-6.png" alt="">
                                <h4>Restaurant</h4>
                                <p>A hotel and restaurant investment deserves careful and market oriented financial planning and
                                    projections.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services Section End -->

            <!-- Home Room Section Begin -->
            <section class="home-room spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title">
                                <h5>OUR ROOM</h5>
                                <h2>Explore Our Hotel</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                    <c:forEach items="${listHotels}" var="hotel">
                        <div class="col-lg-3 col-md-6 col-sm-6 p-0">
                            <div class="home__room__item set-bg" data-setbg="img/home-room/hr-1.jpg"> <!-- Image need Add-->
                                <div class="home__room__title">
                                    <h4>${hotel.name_hotel}</h4>
                                    <h2><sup>$</sup>${hotel.getAmount()}<span>/day</span></h2>
                                </div>
                                <a href="DetailHotel?hotelId=${hotel.getHotelID()}">Booking Now</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="container">
                <div class="home__explore">
                    <div class="row">
                        <div class="col-lg-9 col-md-8">
                            <h3>Planning your next trip? Save up to 25% on your hotel</h3>
                        </div>
                        <div class="col-lg-3 col-md-4 text-center">
                            <a href="#" class="primary-btn">Explorer More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Home Room Section End -->

        <!-- Testimonial Section Begin -->
        <section class="testimonial spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="testimonial__pic">
                            <img src="img/testimonial-left.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="testimonial__text">
                            <div class="section-title">
                                <h5>Testimonials</h5>
                                <h2>What do customers say about us?</h2>
                            </div>
                            <div class="testimonial__slider__content">
                                <div class="testimonial__slider owl-carousel">
                                    <div class="testimonial__item">
                                        <h5>Detailed Review:</h5>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                                            fugiat nulla pariatur. Excepteur sint occaecat cupidat non proident, sunt in
                                            culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde
                                            omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                        <div class="testimonial__author">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__title">
                                                        <h5>Ridchard Houston</h5>
                                                        <span>Director Colorlib</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__social">
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial__item">
                                        <h5>Detailed Review:</h5>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                                            fugiat nulla pariatur. Excepteur sint occaecat cupidat non proident, sunt in
                                            culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde
                                            omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                        <div class="testimonial__author">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__title">
                                                        <h5>John Smith</h5>
                                                        <span>Director Colorlib</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__social">
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial__item">
                                        <h5>Detailed Review:</h5>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                                            fugiat nulla pariatur. Excepteur sint occaecat cupidat non proident, sunt in
                                            culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde
                                            omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                        <div class="testimonial__author">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__title">
                                                        <h5>Jack Kelly</h5>
                                                        <span>Director Colorlib</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__social">
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="testimonial__item">
                                        <h5>Detailed Review:</h5>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                                            fugiat nulla pariatur. Excepteur sint occaecat cupidat non proident, sunt in
                                            culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde
                                            omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                        <div class="testimonial__author">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__title">
                                                        <h5>Richard Hobson</h5>
                                                        <span>Director Colorlib</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="testimonial__author__social">
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-num" id="snh-1"></div>
                                <div class="slider__progress"><span></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section End -->

        <!-- Chooseus Section Begin -->
        <div class="chooseus spad set-bg" data-setbg="img/chooseus-bg.jpg">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8 text-center">
                        <div class="chooseus__text">
                            <div class="section-title">
                                <h5>WHY CHOOSE US</h5>
                                <h2>Contact us now to get the latest deals and for the next booking</h2>
                            </div>
                            <a href="#" class="primary-btn">Booking Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Chooseus Section End -->

        <!-- Gallery Section Begin -->
        <section class="gallery spad">
            <div class="gallery__text">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="section-title">
                                <h5>OUR GALLERY</h5>
                                <h2>Explore The Most Beautiful In The Hotel</h2>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="gallery__title">
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                    nulla pariatur. Sunt in culpa qui officia deserunt mollit anim.</p>
                                <a href="#" class="primary-btn">View Gallery <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery__slider owl-carousel">
                <div class="gallery__item small__item set-bg" data-setbg="img/gallery/gallery-1.jpg"></div>
                <div class="gallery__item set-bg" data-setbg="img/gallery/gallery-2.jpg"></div>
                <div class="gallery__item set-bg" data-setbg="img/gallery/gallery-3.jpg"></div>
                <div class="gallery__item set-bg" data-setbg="img/gallery/gallery-4.jpg"></div>
            </div>
        </section>
        <!-- Gallery Section End -->

        <!-- Latest Blog Section Begin -->
        <section class="latest-blog spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h5>NEWS & EVENT</h5>
                            <h2>From Our Blog</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 p-0 order-lg-1 col-md-6 order-md-1">
                        <div class="latest__blog__pic set-bg" data-setbg="img/latest-blog/lb-1.jpg"></div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-2 col-md-6 order-md-2">
                        <div class="latest__blog__text">
                            <div class="label">Hotel</div>
                            <h5>Ut enim ad minim veniam, quis nostrud</h5>
                            <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-3 col-md-6 order-md-4">
                        <div class="latest__blog__pic set-bg" data-setbg="img/latest-blog/lb-2.jpg"></div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-4 col-md-6 order-md-3">
                        <div class="latest__blog__text">
                            <div class="label">Restaurant</div>
                            <h5>Ut enim ad minim veniam, quis nostrud</h5>
                            <p><i class="fa fa-clock-o"></i> 22th March, 2019</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-6 col-md-6 order-md-5">
                        <div class="latest__blog__pic latest__blog__pic__last__row set-bg"
                             data-setbg="img/latest-blog/lb-3.jpg"></div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-5 col-md-6 order-md-6">
                        <div class="latest__blog__text">
                            <div class="label">Travel</div>
                            <h5>Ut enim ad minim veniam, quis nostrud</h5>
                            <p><i class="fa fa-clock-o"></i> 25th March, 2019</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-8 col-md-6 order-md-8">
                        <div class="latest__blog__pic latest__blog__pic__last__row set-bg"
                             data-setbg="img/latest-blog/lb-4.jpg"></div>
                    </div>
                    <div class="col-lg-3 p-0 order-lg-7 col-md-6 order-md-7">
                        <div class="latest__blog__text">
                            <div class="label">Booking</div>
                            <h5>Ut enim ad minim veniam, quis nostrud</h5>
                            <p><i class="fa fa-clock-o"></i> 29th March, 2019</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Latest Blog Section End -->

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

        <jsp:include page="Modal.jsp"></jsp:include>

        <c:if test="${updateNotice != null}">
            <script>
                window.addEventListener("load", function () {
                    alert("${updateNotice}");
                })
            </script>
        </c:if>

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