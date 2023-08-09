﻿    <!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Hospital</title>

    <!-- <link rel="icon" href="img/favicon.png" type="image/png"> -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- themefy CSS -->
    <link rel="stylesheet" href="vendors/themefy_icon/themify-icons.css" />
    <!-- swiper slider CSS -->
    <link rel="stylesheet" href="vendors/swiper_slider/css/swiper.min.css" />
    <!-- select2 CSS -->
    <link rel="stylesheet" href="vendors/select2/css/select2.min.css" />
    <!-- select2 CSS -->
    <link rel="stylesheet" href="vendors/niceselect/css/nice-select.css" />
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="vendors/owl_carousel/css/owl.carousel.css" />
    <!-- gijgo css -->
    <link rel="stylesheet" href="vendors/gijgo/gijgo.min.css" />
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="vendors/font_awesome/css/all.min.css" />
    <link rel="stylesheet" href="vendors/tagsinput/tagsinput.css" />
    <!-- datatable CSS -->
    <link rel="stylesheet" href="vendors/datatable/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="vendors/datatable/css/responsive.dataTables.min.css" />
    <link rel="stylesheet" href="vendors/datatable/css/buttons.dataTables.min.css" />
    <!-- text editor css -->
    <link rel="stylesheet" href="vendors/text_editor/summernote-bs4.css" />
    <!-- morris css -->
    <link rel="stylesheet" href="vendors/morris/morris.css">
    <!-- metarial icon css -->
    <link rel="stylesheet" href="vendors/material_icon/material-icons.css" />

    <!-- menu css  -->
    <link rel="stylesheet" href="css/metisMenu.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/colors/default.css" id="colorSkinCSS">
</head>
<body class="crm_body_bg">
    


    <form id="form1" runat="server">
    


<!-- main content part here -->
 
 <!-- sidebar  -->
 <!-- sidebar part here -->
<nav class="sidebar">
    <div class="logo d-flex justify-content-between">
        <a href="index.html"><img src="img/logo.png" alt=""></a>
        <div class="sidebar_close_icon d-lg-none">
            <i class="ti-close"></i>
        </div>
    </div>
    <ul id="sidebar_menu">
        <li class="mm-active">
          <a class="has-arrow"  href="Home.aspx"  aria-expanded="false">
          <!-- <i class="fas fa-th"></i> -->
          <img src="img/menu-icon/1.svg" alt="">
            <span>Dashboard</span>
          </a>

        </li>
        <li class="side_menu_title">
            <span>verifications</span>
          </li>
        <li class="">
          <a   class="has-arrow" href="#" aria-expanded="false">
            <img src="img/menu-icon/2.svg" alt="">
            <span>Pages</span>
          </a>
          <ul>
            <li><a href="Jobseeker verifications.aspx">Job Seeker</a></li>
            <li><a href="VerificationList.aspx">List</a></li>
            <li><a href="Labverifications.aspx">lab</a></li>
          </ul>
        </li>

        

      </ul>
    
</nav>
<!-- sidebar part end -->
 <!--/ sidebar  -->


<section class="main_content dashboard_part">
        <!-- menu  -->
    
    <!--/ menu  -->
    <div class="main_content_iner ">
        <div class="container-fluid p-0">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="single_element">
                        <div class="quick_activity">
                            <div class="row">
                                <div class="col-12">
                                    <div class="quick_activity_wrap">
                                        <div class="single_quick_activity d-flex">
                                            <div class="icon">
                                                <img src="img/icon/man.svg" alt="">
                                            </div>
                                            <div class="count_content">
                                                <h3>
                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;</h3>
                                                <p>Doctors</p>
                                            </div>
                                        </div>
                                        <div class="single_quick_activity d-flex">
                                            <div class="icon">
                                                <img src="img/icon/wheel.svg" alt="">
                                            </div>
                                            <div class="count_content">
                                                <h3>
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                </h3>
                                                <p>Patients</p>
                                            </div>
                                        </div>
                                        <div class="single_quick_activity d-flex">
                                            <div class="icon">
                                                <img src="img/icon/pharma.svg" alt="">
                                            </div>
                                            <div class="count_content">
                                                <h3>
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;</h3>
                                                <p>Pharmacusts</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                <%--<div class="col-xl-12">
                    <div class="white_box card_height_100">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25">Hospital Staff</h3>
                            </div>
                        </div>
                        <div class="staf_list_wrapper sraf_active owl-carousel">
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/1.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/2.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/3.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/4.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/5.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/1.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/2.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="img/staf/3.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                        </div>
                    </div>
                </div>--%>
                
            </div>
        </div>
    </div>


</section>
<!-- main content part end -->

<!-- footer  -->
<!-- jquery slim -->
<script src="js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- bootstarp js -->
<script src="js/bootstrap.min.js"></script>
<!-- sidebar menu  -->
<script src="js/metisMenu.js"></script>
<!-- waypoints js -->
<script src="vendors/count_up/jquery.waypoints.min.js"></script>
<!-- waypoints js -->
<script src="vendors/chartlist/Chart.min.js"></script>
<!-- counterup js -->
<script src="vendors/count_up/jquery.counterup.min.js"></script>
<!-- swiper slider js -->
<script src="vendors/swiper_slider/js/swiper.min.js"></script>
<!-- nice select -->
<script src="vendors/niceselect/js/jquery.nice-select.min.js"></script>
<!-- owl carousel -->
<script src="vendors/owl_carousel/js/owl.carousel.min.js"></script>
<!-- gijgo css -->
<script src="vendors/gijgo/gijgo.min.js"></script>
<!-- responsive table -->
<script src="vendors/datatable/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatable/js/dataTables.responsive.min.js"></script>
<script src="vendors/datatable/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatable/js/buttons.flash.min.js"></script>
<script src="vendors/datatable/js/jszip.min.js"></script>
<script src="vendors/datatable/js/pdfmake.min.js"></script>
<script src="vendors/datatable/js/vfs_fonts.js"></script>
<script src="vendors/datatable/js/buttons.html5.min.js"></script>
<script src="vendors/datatable/js/buttons.print.min.js"></script>

<script src="js/chart.min.js"></script>
<!-- progressbar js -->
<script src="vendors/progressbar/jquery.barfiller.js"></script>
<!-- tag input -->
<script src="vendors/tagsinput/tagsinput.js"></script>
<!-- text editor js -->
<script src="vendors/text_editor/summernote-bs4.js"></script>

<script src="vendors/apex_chart/apexcharts.js"></script>

<!-- custom js -->
<script src="js/custom.js"></script>

<script src="vendors/apex_chart/bar_active_1.js"></script>
<script src="vendors/apex_chart/apex_chart_list.js"></script>
    </form>
</body>
</html>