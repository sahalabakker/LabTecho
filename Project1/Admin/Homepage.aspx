<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<body class="crm_body_bg">
    






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
                                                <img src="Assets/img/icon/man.svg" alt="">
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
                                                <img src="Assets/img/icon/wheel.svg" alt="">
                                            </div>
                                            <div class="count_content">
                                                <h3>
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                </h3>
                                                <p>Patients</p>
                                            </div>
                                        </div>
                                        <div class="single_quick_activity d-flex">
                                            <div class="icon">
                                                <img src="Assets/img/icon/pharma.svg" alt="">
                                            </div>
                                            <div class="count_content">
                                                <h3>
                                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                </h3>
                                                <p>Pharmacusts</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-lg-12 col-xl-12">
                    <div class="white_box mb_30 ">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25" >Hospital Survey</h3>
                            </div>
                        </div>
                        <div class="income_servay">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="count_content">
                                        <h3>$ <span class="counter">305</span> </h3>
                                        <p>Today's Income</p>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="count_content">
                                        <h3>$ <span class="counter">1005</span> </h3>
                                        <p>This Week's Income</p>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="count_content">
                                        <h3>$ <span class="counter">5505</span> </h3>
                                        <p>This Month's Income</p>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="count_content">
                                        <h3>$ <span class="counter">155615</span> </h3>
                                        <p>This Year's Income</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="bar_wev"></div>
                    </div>
                </div>--%>
                <%--<div class="col-xl-7">
                    <div class="white_box QA_section card_height_100">
                        <div class="white_box_tittle list_header m-0 align-items-center">
                            <div class="main-title mb-sm-15">
                                <h3 class="m-0 nowrap">Patients</h3>
                            </div>
                            <div class="box_right d-flex lms_block">
                                <div class="serach_field-area2">
                                    <div class="search_inner">
                                        <form Active="#">
                                            <div class="search_field">
                                                <input type="text" placeholder="Search here...">
                                            </div>
                                            <button type="submit"> <i class="ti-search"></i> </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <table class="table lms_table_active2">
                                <thead>
                                    <tr>
                                        <th scope="col">Patients Name</th>
                                        <th scope="col">department</th>
                                        <th scope="col">Appointment Date</th>
                                        <th scope="col">Serial Number</th>
                                        <th scope="col">Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/pataint.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/2.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/3.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/4.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/5.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/6.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <div class="patient_thumb d-flex align-items-center">
                                                <div class="student_list_img mr_20">
                                                    <img src="Assets/img/patient/6.png" alt="" srcset="">
                                                </div>
                                                <p>Jhon Kural</p>
                                            </div>
                                        </th>
                                        <td>Monte Carlo</td>
                                        <td>11/03/2020</td>
                                        <td>MDC65454</td>
                                        <td>
                                            <div class="amoutn_action d-flex align-items-center">
                                                $29,192
                                                <div class="dropdown ml-4">
                                                    <a class=" dropdown-toggle hide_pils" href="Assets/#" role="button" id="A6" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </a>
                                                  
                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                                      <a class="dropdown-item" href="Assets/#">View</a>
                                                      <a class="dropdown-item" href="Assets/#">Edit</a>
                                                      <a class="dropdown-item" href="Assets/#">Delete</a>
                                                    </div>
                                                  </div>
                                            </div> </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="col-xl-5 ">
                    <div class="white_box card_height_50 mb_30">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25">Total Recover Report</h3>
                            </div>
                        </div>
                        <div id="chart-7"></div>
                        <div class="row text-center mt-3">
                            <div class="col-sm-6">
                                <h6 class="heading_6 d-block">Last Month</h6>
                                <p class="m-0">358</p>
                            </div>
                            <div class="col-sm-6">
                                <h6 class="heading_6 d-block">Current Month</h6>
                                <p class="m-0">194</p>
                            </div>
                        </div>
                    </div>
                    <div class="white_box card_height_50 mb_30">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25">Total Death Report</h3>
                            </div>
                        </div>
                        <div id="chart-8"></div>
                        <div class="row text-center mt-3">
                            <div class="col-sm-6">
                                <h6 class="heading_6 d-block">Last Month</h6>
                                <p class="m-0">358</p>
                            </div>
                            <div class="col-sm-6">
                                <h6 class="heading_6 d-block">Current Month</h6>
                                <p class="m-0">194</p>
                            </div>
                        </div>
                    </div>
                </div>--%>
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
                                    <img src="Assets/img/staf/1.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/2.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/3.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/4.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/5.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/1.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/2.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                            <!-- single carousel  -->
                            <div class="single_staf">
                                <div class="staf_thumb">
                                    <img src="Assets/img/staf/3.png" alt="">
                                </div>
                                <h4>Dr. Sysla J Smith</h4>
                                <p>Doctor</p>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="col-xl-6">
                    <div class="white_box card_height_100">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25">Recent Activity</h3>
                            </div>
                        </div>
                        <div class="Activity_timeline">
                            <ul>
                                <li>
                                    <div class="activity_bell"></div>
                                    <div class="activity_wrap">
                                        <h6>5 min ago</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="activity_bell"></div>
                                    <div class="activity_wrap">
                                        <h6>5 min ago</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="activity_bell"></div>
                                    <div class="activity_wrap">
                                        <h6>5 min ago</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="activity_bell"></div>
                                    <div class="activity_wrap">
                                        <h6>5 min ago</h6>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="col-xl-6">
                    <div class="white_box mb_30">
                        <div class="box_header border_bottom_1px  ">
                            <div class="main-title">
                                <h3 class="mb_25">Recent Activity</h3>
                            </div>
                        </div>
                        <div class="activity_progressbar">
                            <div class="single_progressbar">
                                <h6>USA</h6>
                                <div id="bar1" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="95"></span>
                                </div>
                            </div>
                            <div class="single_progressbar">
                                <h6>AFRICA</h6>
                                <div id="bar2" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="75"></span>
                                </div>
                            </div>
                            <div class="single_progressbar">
                                <h6>UK</h6>
                                <div id="bar3" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="55"></span>
                                </div>
                            </div>
                            <div class="single_progressbar">
                                <h6>CANADA</h6>
                                <div id="bar4" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="25"></span>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>



</body>
</asp:Content>


