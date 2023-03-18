<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__logo">
        <a href="HomePage"><img src="img/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__btn__widget">
        <a href="hotels.jsp">Book Now <span class="arrow_right"></span></a>
    </div>
    <div class="offcanvas__widget">
        <ul>
            <li><span class="icon_pin_alt"></span> 96 Ernser Vista Suite 437, NY, US</li>
            <li><span class="icon_phone"></span> (123) 456-78-910</li>
        </ul>
    </div>
    <div class="offcanvas__auth">
        <c:if test="${user == null}">
            <ul>
                <li><a href="http://localhost:8080/Booking_hotel/Authenticate/Login.jsp">Login</a></li>
                <li><a href="http://localhost:8080/Booking_hotel/Authenticate/Register.jsp">Register</a></li>
            </ul>
        </c:if>

        <c:if test="${user != null}">
            <ul>
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle text-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-user"></i> <a>Welcome, ${user.username}</a>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-dark" data-bs-toggle="modal" data-bs-target="#updateAcc">Update Account</a></li>
                                <c:if test="${user.getRoleID() == 1}">
                                <li><a class="dropdown-item text-dark" href="BookCusHistory?id=${user.ID}">Booking History</a></li>
                                </c:if>

                            <c:if test="${user.getRoleID() == 2}">
                                <li><a class="dropdown-item text-dark" href="StaffController">Staff Page</a></li>
                                </c:if>

                            <li><a class="dropdown-item text-dark" href="LogoutController">Logout</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </c:if>
    </div>
</div>
<!-- Offcanvas Menu End -->
