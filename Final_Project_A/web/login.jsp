

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Helendo Minimalis Furniture Store</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
        <link rel="stylesheet" href="assets/css/plugins/plugins.min.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.min.css">

    </head>

    <body class="">


        <!--====================  header area ====================-->
        <div class="header-area header-area--default">

            <!-- Header Bottom Wrap Start -->
            <header class="header-area  header_height-90 header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-4 d-none d-md-block">
                            <div class="header-left-search">
                                <form action="#" class="header-search-box">
                                    <input class="search-field" type="text" placeholder="Search Anything...">
                                    <button class="search-icon"><i class="icon-magnifier"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-6">
                            <div class="logo text-md-center">
                                <a href="index.jsp"><img src="assets/images/logo/logo.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-6">
                            <div class="header-right-side text-end">
                                <div class="header-right-items  d-none d-md-block">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        <i class="icon-user"></i>
                                    </a>
                                </div>
                                <div class="header-right-items d-none d-md-block">
                                    <a href="wishlist.jsp" class="header-cart">
                                        <i class="icon-heart"></i>
                                        
                                    </a>
                                </div>

                                <div class="header-right-items">
                                    <a href="#miniCart" class=" header-cart minicart-btn toolbar-btn header-icon">
                                        <i class="icon-bag2"></i>
                                       
                                    </a>
                                </div>
                                <div class="header-right-items d-block d-md-none">
                                    <a href="javascript:void(0)" class="search-icon" id="search-overlay-trigger">
                                        <i class="icon-magnifier"></i>
                                    </a>
                                </div>
                                <div class="header-right-items">
                                    <a href="javascript:void(0)" class="mobile-navigation-icon" id="mobile-menu-trigger">
                                        <i class="icon-menu"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header Bottom Wrap End -->

        </div>
        <!--====================  End of header area  ====================-->

        <!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row breadcrumb_box  align-items-center">
                            <div class="col-lg-6 col-md-6 col-sm-6 text-center text-sm-start">
                                <h2 class="breadcrumb-title">Login</h2>
                            </div>
                            <div class="col-lg-6  col-md-6 col-sm-6">
                                <!-- breadcrumb-list start -->
                                <ul class="breadcrumb-list text-center text-sm-end">
                                    <li><a href= "index.jsp">Home</a> /</li>
                                    <li class="breadcrumb-item active">Login</li>
                                </ul>
                                <!-- breadcrumb-list end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->

        <div id="main-wrapper">
            <div class="site-wrapper-reveal border-bottom">

                <div class="my-account-page-warpper section-space--ptb_120">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-7 m-auto">
                                <div class="myaccount-box-wrapper">
                                    <div class="helendo-tabs">
                                        <ul class="nav" role="tablist">
                                            <li class="tab__item nav-item active">
                                                <a class="nav-link active" data-bs-toggle="tab" href="#tab_list_06" role="tab">Login</a>
                                            </li>
                                            <li class="tab__item nav-item">
                                                <a class="nav-link" data-bs-toggle="tab" href="#tab_list_07" role="tab">Our Register</a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="tab-content content-modal-box">
                                        <div class="tab-pane fade show active" id="tab_list_06" role="tabpanel">
                                            <form action="login" class="account-form-box" method="post">
                                                <h6>Login your account</h6>
                                                <div class="single-input">
                                                    <input name="name"type="text" placeholder="Username">
                                                </div>
                                                <div class="single-input">
                                                    <input name ="pass" type="password" placeholder="Password">
                                                </div>
                                                <div class="checkbox-wrap mt-10">
                                                    <label class="label-for-checkbox inline mt-15">
                                                        <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                                                    </label>
                                                    <a href="#" class=" mt-10">Lost your password?</a>
                                                </div>
                                                <div class="button-box mt-25">
                                                    <button class="btn btn--full btn--black" type="submit">Log in</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="tab_list_07" role="tabpanel">

                                            <form action="signup" class="account-form-box">
                                                <h6>Register An Account</h6>
                                                <div class="single-input">
                                                    <input name="name" type="text" placeholder="Username">
                                                </div>
                                                <div class="single-input">
                                                    <input name="email" type="email" placeholder="Email address">
                                                </div>
                                                <div class="single-input">
                                                    <input name="pass" type="password" placeholder="Password">
                                                </div>
                                                <p class="mt-15">Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="#" class="privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                                <div class="button-box mt-25">
                                                    <button class="btn btn--full btn--black" type="submit">Register</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!--====================  footer area ====================-->
            <div class="footer-area-wrapper">
                <div class="footer-area section-space--ptb_120">
                    <div class="container">
                        <div class="row footer-widget-wrapper">
                            <div class="col-lg-4 col-md-4 col-sm-6 footer-widget">
                                <h6 class="footer-widget__title mb-20">Address</h6>
                                <ul class="footer-widget__list">
                                    <li><i class="icon_pin"></i> Helendo, Chicago, USA 2023</li>
                                    <li> <i class="icon_phone"></i><a href="tel:846677028028" class="hover-style-link">+846677028028</a></li>

                                </ul>
                                <ul class="list footer-social-networks mt-25">

                                    <li class="item">
                                        <a href="https://twitter.com/" target="_blank" aria-label="Twitter">
                                            <i class="social social_facebook"></i>
                                        </a>
                                    </li>
                                    <li class="item">
                                        <a href="https://facebook.com/" target="_blank" aria-label="Facebook">
                                            <i class="social social_twitter"></i>
                                        </a>
                                    </li>
                                    <li class="item">
                                        <a href="https://instagram.com/" target="_blank" aria-label="Instagram">
                                            <i class="social social_tumblr"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
                                <h6 class="footer-widget__title mb-20">Help & Information</h6>
                                <ul class="footer-widget__list">
                                    <li><a href="#" class="hover-style-link">Help & Contact Us</a></li>
                                    <li><a href="#" class="hover-style-link">Returns & Refunds</a></li>
                                    <li><a href="#" class="hover-style-link">Online Stores</a></li>
                                    <li><a href="#" class="hover-style-link">Terms & Conditions</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-6 footer-widget">
                                <h6 class="footer-widget__title mb-20">About Us</h6>
                                <ul class="footer-widget__list">
                                    <li><a href="#" class="hover-style-link">About Us</a></li>
                                    <li><a href="#" class="hover-style-link">What We Do</a></li>
                                    <li><a href="#" class="hover-style-link">FAQ Page</a></li>
                                    <li><a href="#" class="hover-style-link">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 footer-widget">
                                <h6 class="footer-widget__title mb-20">Newsletter</h6>
                                <div class="footer-widget__newsletter mt-30">
                                    <input type="text" placeholder="Your email address">
                                    <button class="submit-button"><i class="icon-arrow-right"></i></button>
                                </div>
                                <ul class="footer-widget__footer-menu  section-space--mt_60 d-none d-lg-block">
                                    <li><a href="#">Term & Condition</a></li>
                                    <li><a href="#">Policy</a></li>
                                    <li><a href="#">Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright-area section-space--pb_30">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-4 col-md-5 text-center text-md-start">
                                <ul class="footer-widget__footer-menu">
                                    <li><a href="#">Term & Condition</a></li>
                                    <li><a href="#">Policy</a></li>
                                    <li><a href="#">Map</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-2 text-center">
                                <div class="footer-logo">
                                    <a href="#"><img src="assets/images/logo/logo.svg" alt="Logo images"></a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-5 order-md-3">
                                <div class="footer-bottom-social">
                                    <h6 class="title">Follow Us On Social</h6>
                                    <ul class="list footer-social-networks ">
                                        <li class="item">
                                            <a href="https://twitter.com/" target="_blank" aria-label="Twitter">
                                                <i class="social social_facebook"></i>
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="https://facebook.com/" target="_blank" aria-label="Facebook">
                                                <i class="social social_twitter"></i>
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="https://instagram.com/" target="_blank" aria-label="Instagram">
                                                <i class="social social_tumblr"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <span class="copyright-text text-center  section-space--mt_40"> 2023 Helendo. <a  href="https://hasthemes.com/" target="_blank">All Rights Reserved.</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--====================  End of footer area  ====================-->


        <!--====================  End of search overlay  ====================-->


        <!--====================  scroll top ====================-->
        <a href="#" class="scroll-top" id="scroll-top">
            <i class="arrow-top icon-arrow-up"></i>
            <i class="arrow-bottom icon-arrow-up"></i>
        </a>
        <!--====================  End of scroll top  ====================-->



        <!-- JS
        ============================================ -->
        <!-- Modernizer JS -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

        <!-- jQuery JS -->
        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>

        <!-- Bootstrap JS -->
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->

        <script src="assets/js/plugins/plugins.js"></script>


        <!-- Main JS -->
        <script src="assets/js/main.js"></script>

    </body>
</html>