<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--        <meta http-equiv="refresh" content="5">-->
        <title>Helendo Minimalis Furniture Store</title>
        <meta name="description" content="">
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
                                <a href="index_LogInSuccess.jsp"><img src="assets/images/logo/logo.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-6">
                            <div class="header-right-side text-end">
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
                                <h2 class="breadcrumb-title">All Products</h2>
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
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="shop-toolbar__items shop-toolbar__item--left">
                                    <div class="shop-toolbar__item shop-toolbar__item--result">
                                        <p class="result-count"> Showing results</p>
                                    </div>
                                    <div class="shop-toolbar__item shop-short-by">
                                        <ul>
                                            <li>
                                                <a href="#">Sort by <i class="fa fa-angle-down angle-down"></i></a>
                                                <ul>
                                                    <li class="active"><a href="#">Default sorting</a></li>
                                                    <li><a href="#">Sort by popularity</a></li>
                                                    <li><a href="#">Sort by average rating</a></li>
                                                    <li><a href="#">Sort by latest</a></li>
                                                    <li><a href="#">Sort by price: low to high</a></li>
                                                    <li><a href="#">Sort by price: high to low</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="shop-toolbar__items shop-toolbar__item--right">
                                    <div class="shop-toolbar__items-wrapper">
                                        <div class="shop-toolbar__item">
                                            <ul class="nav toolber-tab-menu justify-content-start" role="tablist">
                                                <li class="tab__item nav-item active">
                                                    <a class="nav-link active" data-bs-toggle="tab" href="#tab_columns_01" role="tab">
                                                        <img src="assets/images/svg/column-03.svg" class="img-fluid" alt="Columns 03">
                                                    </a>
                                                </li>
                                                <li class="tab__item nav-item">
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab_columns_02" role="tab"><img src="assets/images/svg/column-04.svg" class="img-fluid" alt="Columns 03"> </a>
                                                </li>
                                                <li class="tab__item nav-item">
                                                    <a class="nav-link" data-bs-toggle="tab" href="#tab_columns_03" role="tab"><img src="assets/images/svg/column-05.svg" class="img-fluid" alt="Columns 03"> </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="shop-toolbar__item shop-toolbar__item--filter ">
                                            <a class="shop-filter-active" href="#">Filter<i class="icon-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-filter-wrapper">
                            <div class="row">
                                <!-- Product Filter -->
                                <div class=" mb-20 col__20">
                                    <div class="product-filter">
                                        <h5>Color</h5>
                                        <ul class="widget-nav-list">
                                            <li><a href="#"><span class="swatch-color black"></span> Black</a></li>
                                            <li><a href="#"><span class="swatch-color green"></span> Green</a></li>
                                            <li><a href="#"><span class="swatch-color grey"></span> Grey</a></li>
                                            <li><a href="#"><span class="swatch-color red"></span> Red</a></li>
                                            <li><a href="#"><span class="swatch-color white"></span> White</a></li>
                                            <li><a href="#"><span class="swatch-color yellow"></span> Yellow</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Product Filter -->
                                <div class=" mb-20 col__20">
                                    <div class="product-filter">
                                        <h5>Size</h5>
                                        <ul class="widget-nav-list">
                                            <li><a href="#">Large</a></li>
                                            <li><a href="#">Medium</a></li>
                                            <li><a href="#">Small</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Product Filter -->
                                <div class=" mb-20 col__20">
                                    <div class="product-filter">
                                        <h5>Price</h5>
                                        <ul class="widget-nav-list">
                                            <li><a href="#">$0.00 - $20.00</a></li>
                                            <li><a href="#">$20.00 - $40.00</a></li>
                                            <li><a href="#">£40.00 - £50.00</a></li>
                                            <li><a href="#">£50.00 - £60.00</a></li>
                                            <li><a href="#">£60.00 +</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- Product Filter -->
                                <div class=" mb-20 col__20">
                                    <div class="product-filter">
                                        <h5>Categories</h5>
                                        <ul class="widget-nav-list">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Accessories</a></li>
                                            <li><a href="#">Chair</a></li>
                                            <li><a href="#">Decoration</a></li>
                                            <li><a href="#">Furniture</a></li>
                                            <li><a href="#">Table</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class=" mb-20 col__20">
                                    <div class="product-filter">
                                        <h5>Tags</h5>
                                        <div class="tagcloud"><a href="#" class="selected">All</a><a href="#" class="">Accesssories</a><a href="#" class="">Box</a><a href="#" class="">chair</a><a href="#" class="">Deco</a><a href="#" class="">Furniture</a><a href="#" class="">Glass</a><a href="#" class="">Pottery</a><a href="#" class="">Table</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab_columns_01">
                                <div class="row">
                                    <c:forEach var="item" items="${sessionScope.ListProduct}">
                                        <c:set var="imageSrc" value="${item.pathIMG}" />
                                        <c:set var="name" value="${item.name}" />

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
                                                        <a href="AddProductControl?id=${item.ID}&name=${item.name}&price=${item.price}&pathIMG=${imageSrc}"><i class="p-icon icon-bag2"></i> <span class="tool-tip">Add to cart</span></a>
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
                                                    <span class="copyright-text text-center  section-space--mt_40"> 2023 Helendo. <a  href="https://hasthemes.com/" target="_blank">All Rights Reserved.</a></span>
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
                                                    <h6 style="display: inline;">Hi, <c:out value="${sessionScope.UserName}"/>!</h6>
                                                </li>
                                                <li class="has-children">
                                                    <a href="index_LogInSuccess.jsp">Home</a>
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
                                                                <li><a href="living-room_LogInSuccess.jsp"><span>Living Room</span></a></li>
                                                                <li><a href="product-simple.html"><span>Bed Room</span></a></li>
                                                                <li><a href="product-variable.html"><span>Kitchen</span></a></li>
                                                                <li><a href="product-groupped.html"><span>Rest Room</span></a></li>

                                                            </ul>
                                                        </li>
                                                        <li class="has-children">
                                                            <a href="#"><span>Other Pages</span></a>
                                                            <ul class="sub-menu">
                                                                <li><a href="cart.jsp"><span>Cart</span></a></li>
                                                                <li><a href="checkout-to-order.jsp"><span>Checkout</span></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="has-children">
                                                    <a href="#">About Us</a>
                                                </li>
                                                 <li class="has-children">
                                                    <a href="logoutControl" style="color: black; border: solid #dcb14a; background: #dcb14a; text-align: center; padding: 10px; margin-top: 20px " onmouseover="this.style.color = '#fff';" onmouseout="this.style.color = 'black';"><i class="fa fa-sign-out"></i>Log Out</a>
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
                            !--  offcanvas Minicart Start -->
                            <div class="offcanvas-minicart_wrapper" id="miniCart">
                                <div class="offcanvas-menu-inner">
                                    <div class="close-btn-box">
                                        <a href="#" class="btn-close"><i class="icon-cross2"></i></a>
                                    </div>
                                    <div class="minicart-content">
                                        <ul class="minicart-list">
                                            <!--shopping cart start-->
                                            <c:forEach var="item" items="${sessionScope.userCart}">
                                                <c:set var="imageSrc" value="${item.pathIMG}" />
                                                <c:set var="totalPayment" value="${totalPayment + (item.quantity * item.price)}" />
                                                <li class="minicart-product">
                                                    <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                                                    <a class="product-item_img">
                                                        <div style="width: 160px; height: 160px">
                                                            <img class="img-fluid" src="<c:url value="${imageSrc}"/>" alt="Product Image">
                                                        </div>
                                                    </a>
                                                    <div class="product-item_content">
                                                        <a class="product-item_title" href="product-details.html"><c:out value='${item.productName}' /></a>
                                                        <label>Qty : <span><c:out value='${item.quantity}'/></span></label>
                                                        <label class="product-item_quantity">Unit Price: <span> $<c:out value='${item.price}' /></span></label>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                            <!--shopping cart end-->
                                        </ul>
                                    </div>
                                    <div class="minicart-item_total">
                                        <span class="font-weight--reguler">Subtotal:</span>
                                        <span class="ammount font-weight--reguler">$<c:out value="${totalPayment}"/></span>
                                    </div>
                                    <div class="minicart-btn_area">
                                        <a href="cart.jsp" class="btn btn--full btn--border_1">View cart</a>
                                    </div>
                                    <div class="minicart-btn_area">
                                        <a href="checkout-to-order.jsp" class="btn btn--full btn--black">Checkout</a>
                                    </div>
                                </div>
                                <div class="global-overlay"></div>
                            </div>
                            <!--  offcanvas Minicart End -->
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