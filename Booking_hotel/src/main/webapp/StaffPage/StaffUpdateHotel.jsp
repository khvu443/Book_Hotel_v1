
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>SB Admin 2 - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link
            href="http://localhost:8080/Booking_hotel/StaffPage/vendor/fontawesome-free/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet"
            />

        <!-- Custom styles for this template-->
        <link href="http://localhost:8080/Booking_hotel/StaffPage/css/sb-admin-2.min.css" rel="stylesheet" />

        <!-- Custom styles for this page -->
        <link
            rel="stylesheet"
            href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css"
            />

        <link
            href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Sidebar -->
            <ul
                class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                id="accordionSidebar"
                >
                <!-- Sidebar - Brand -->
                <a
                    class="sidebar-brand d-flex align-items-center justify-content-center"
                    href="StaffController"
                    >
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Staff Page</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0" />

                <!-- Nav Item - Dashboard -->
                <li class="nav-item">
                    <a class="nav-link" href="StaffController">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Bills</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider" />
                <!-- Nav Item - Tables -->
                <li class="nav-item active">
                    <a class="nav-link" href="StaffHotelTable">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Hotels</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <!-- Nav Item - Tables -->
                <li class="nav-item ">
                    <a class="nav-link" href="StaffTableController">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Staff Accounts</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="StaffCustomerTableController">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Customer Accounts</span></a>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block" />

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <nav
                        class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"
                        >
                        <!-- Sidebar Toggle (Topbar) -->
                        <button
                            id="sidebarToggleTop"
                            class="btn btn-link d-md-none rounded-circle mr-3"
                            >
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Nav Item - Alerts -->

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="userDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small"
                                          >${user.username}
                                    </span>
                                    <img
                                        class="img-profile rounded-circle"
                                        src="http://localhost:8080/Booking_hotel/StaffPage/img/undraw_profile.svg"
                                        />
                                </a>
                                <!-- Dropdown - User Information -->
                                <div
                                    class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown"
                                    >
                                    <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#updateAcc">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="HomePage">
                                        <i class="fa-solid fa-house fa-sm fa-fw mr-2 text-gray-400"></i>
                                        HomePage
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="LogoutController">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-2 text-gray-800">UPDATE HOTEL</h1>

                        <div class="card shadow">
                            <div class="card-header">Update Hotel ${hotel.getHotelID()}</div>   
                            <div class="card-body">
                                <form action="" method="post" enctype="multipart/form-data">
                                    <p class="text-danger">${error}</p>
                                    <input type="text" name="id" value="${hotel.getHotelID()}" hidden>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-thin fa-hotel"></i></span>
                                        <input type="text" class="form-control" placeholder="Hotel Name" aria-label="name" aria-describedby="Hotel Name" name="hotelname" value="${hotel.name_hotel}">
                                    </div>

                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Address Hotel" aria-label="address" aria-describedby="Address Hotel" name="address" value="${hotel.address}">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa-sharp fa-regular fa-location-dot"></i></span>
                                    </div>

                                    <label for="basic-url" class="form-label">Upload Image</label>
                                    <div class="input-group mb-3">
                                        <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload" name="image">
                                        <span class="input-group-text" id="image"><i class="fa-light fa-image"></i></span>
                                    </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text" ><i class="fa-solid fa-bed-front"></i></span>
                                        <input type="number" min="1" value="${hotel.getNumber_room()}" class="form-control" id="basic-url" aria-describedby="rooms" name="rooms">
                                        <span class="input-group-text"><i class="fa-solid fa-square-dollar"></i></span>
                                        <input type="number" min="1" step="any"  value="${hotel.getAmount()}" class="form-control" id="basic-url" aria-describedby="amount" name="amount">
                                    </div>

                                    <label for="basic-url" class="form-label">Type Hotel</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" aria-label="type" aria-describedby="Type Hotel" name="type" value="${hotel.type}">
                                    </div>

                                    <button class="btn btn-outline-primary" type="submit">Save Hotel ${id}</button>
                                </form>
                            </div>
                        </div>


                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2021</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->
                </div>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->


        <!-- Modal -->
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <jsp:include page="../Modal.jsp"></jsp:include>

        <!-- Bootstrap core JavaScript-->

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

        <script src="http://localhost:8080/Booking_hotel/StaffPage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="http://localhost:8080/Booking_hotel/StaffPage/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="http://localhost:8080/Booking_hotel/StaffPage/js/sb-admin-2.min.js"></script>

        <!-- Table level plugins -->

        <!-- Page level custom scripts -->
        <script>
            $(document).ready(function () {
                $("#databill").DataTable();
            });
        </script>
    </body>
</html>


