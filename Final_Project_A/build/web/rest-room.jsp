<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/loading-home" />


<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Helendo Minimalis Furniture Store</title>
        <meta name="description" content="">
        <!--        <meta http-equiv="refresh" content="5">-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="icon" href="assets/images/favicon.ico">
        <!-- CSS
                ============================================ -->
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
                                    <a href="login.jsp" data-bs-toggle="" data-bs-target="#exampleModal">
                                        <i class="icon-user"></i>
                                    </a>
                                </div>
                                <div class="header-right-items">
                                    <a href="#" class=" header-cart minicart-btn toolbar-btn header-icon" onclick="showCartAlert()">
                                        <i class="icon-bag2"></i>
                                        <script>
                                            function showCartAlert() {
                                                alert("Please Log In To See Your Cart");
                                            }
                                        </script>
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
                                <h2 class="breadcrumb-title">Rest Room Products</h2>
                            </div>
                            <div class="col-lg-6  col-md-6 col-sm-6">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->
        <div id="main-wrapper">
            <div class="site-wrapper-reveal border-bottom">
                <!-- Product Area Start -->
                <div class="product-wrapper section-space--ptb_120">
                    <div class="container">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab_columns_01">
                                <div class="row">
                                    <c:forEach var="item" items="${sessionScope.ListRestRoomProduct}">
                                        <c:set var="imageSrc" value="${item.pathIMG}" />
                                        <div class="col-lg-4 col-md-4 col-sm-6">
                                            <!-- Single Product Item Start --> 
                                            <div class="single-product-item text-center">
                                                <div class="products-images">
                                                    <a href="#" class="product-thumbnail">
                                                        <img src="<c:url value="${imageSrc}"/>" class="img-fluid" alt="Product Images" width="300" height="300" />
                                                        <span class="ribbon out-of-stock">
                                                            ${item.status}
                                                        </span>
                                                    </a>
                                                    <div class="product-actions">
                                                        <a href="ProductDetailControl?IDproduct=${item.ID}&nameProduct=${item.name}&price=${item.price}&pathIMG=${imageSrc}" data-bs-toggle="" data-bs-target="#prodect-modal"><i class="p-icon icon-plus"></i><span class="tool-tip">Quick View</span></a>
                                                        <a href=""><i class="p-icon icon-bag2" onclick="showAddToCartAlert()"></i> <span class="tool-tip">Add to cart</span></a>
                                                        <script>
                                                            function showAddToCartAlert() {
                                                                alert("Please Log In To Add Products To Your Cart");
                                                            }
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h6 class="prodect-title"><a href="#"><c:out value='${item.name}' /></a></h6>
                                                    <div class="prodect-price">
                                                        <span class="new-price">£<c:out value='${item.price}' /></span> - <span class="old-price"> £<c:out value='${item.price}' /></span>
                                                    </div>
                                                </div>
                                            </div><!-- Single Product Item End -->
                                        </div>
                                    </c:forEach>
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
                                                    <span class="copyright-text text-center  section-space--mt_40">&copy; 2023 Helendo. <a  href="https://hasthemes.com/" target="_blank">All Rights Reserved.</a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--====================  End of footer area  ====================-->
                            </div>                           
                            <!--====================  mobile menu overlay ====================-->
                            <div class="mobile-menu-overlay" id="mobile-menu-overlay">
                                <div class="mobile-menu-overlay__inner">
                                    <div class="mobile-menu-close-box text-start">
                                        <span class="mobile-navigation-close-icon" id="mobile-menu-close-trigger"> <i class="icon-cross2"></i></span>
                                    </div>
                                    <div class="mobile-menu-overlay__body">

                                        <nav class="offcanvas-navigation">
                                            <ul>
                                                <li class="has-children">
                                                    <a href="HomePageControl">Home</a>

                                                </li>
                                                <li class="has-children">
                                                    <a href="#">Shop</a>
                                                    <ul class="sub-menu">
                                                        <li class="has-children">
                                                            <a href="loading-home"><span>All Products</span></a>

                                                        </li>
                                                        <li class="has-children">
                                                            <a href="#"><span>Product Categories</span></a>
                                                            <ul class="sub-menu">
                                                                <li><a href="living-room.jsp"><span>Living Room</span></a></li>
                                                                <li><a href="bed-room.jsp"><span>Bed Room</span></a></li>
                                                                <li><a href="kitchen.jsp"><span>Kitchen</span></a></li>
                                                                <li><a href="rest-room.jsp"><span>Rest Room</span></a></li>

                                                            </ul>
                                                        </li>
                                                        <li class="has-children">
                                                            <a href="#"><span>Other Pages</span></a>
                                                            <ul class="sub-menu">
                                                                <li><a href="#" onclick="showCartAlert()"><span>Cart</span></a></li>
                                                                <li><a href="#" onclick="showCheckoutAlert()"><span>Checkout</span></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="has-children">
                                                    <a href="#">About Us</a>
                                                </li>
                                            </ul>
                                        </nav>

                                        <div class="mobile-menu-contact-info section-space--mt_60">
                                            <h6>Contact Us</h6>
                                            <p>69 Halsey St, Ny 10002, New York, United States <br>support.center@unero.co <br>(0091) 8547 632521</p>
                                        </div>

                                        <div class="mobile-menu-social-share section-space--mt_60">
                                            <h6>Follow US On Socials</h6>
                                            <ul class="social-share">
                                                <li><a href="#"><i class="social social_facebook"></i></a></li>
                                                <li><a href="#"><i class="social social_twitter"></i></a></li>
                                                <li><a href="#"><i class="social social_googleplus"></i></a></li>
                                                <li><a href="#"><i class="social social_linkedin"></i></a></li>
                                                <li><a href="#"><i class="social social_pinterest"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--====================  End of mobile menu overlay  ====================-->
                            <!--====================  search overlay ====================-->
                            <div class="search-overlay" id="search-overlay">
                                <div class="search-overlay__header">
                                    <div class="container">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6 col-8">
                                                <div class="search-title">
                                                    <h4 class="font-weight--normal">Search</h4>
                                                </div>
                                            </div>
                                            <div class="col-md-6 ms-auto col-4">
                                                <!-- search content -->
                                                <div class="search-content text-end">
                                                    <span class="mobile-navigation-close-icon" id="search-close-trigger"><i class="icon-cross"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="search-overlay__inner">
                                    <div class="search-overlay__body">
                                        <div class="search-overlay__form">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-lg-9 m-auto">
                                                        <form action="#">
                                                            <div class="product-cats section-space--mb_60 text-center">
                                                                <label> <input type="radio" name="product_cat" value="" checked="checked"> <span class="line-hover">All</span> </label>
                                                                <label> <input type="radio" name="product_cat" value="decoration"> <span class="line-hover">Decoration</span> </label>
                                                                <label> <input type="radio" name="product_cat" value="furniture"> <span class="line-hover">Furniture</span> </label>
                                                                <label> <input type="radio" name="product_cat" value="table"> <span class="line-hover">Table</span> </label> <label> <input type="radio" name="product_cat" value="chair"> <span class="line-hover">Chair</span> </label>
                                                            </div>
                                                            <div class="search-fields">
                                                                <input type="text" placeholder="Search">
                                                                <button class="submit-button"><i class="icon-magnifier"></i></button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
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