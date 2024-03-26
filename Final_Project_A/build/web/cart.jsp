<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html class="no-js" lang="zxx">


    <!-- Mirrored from htmldemo.net/helendo/helendo/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Feb 2024 08:48:43 GMT -->
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Helendo Furniture Store</title>
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
                                <a href="HomePageControl"><img src="assets/images/logo/logo.svg" alt=""></a>
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
                                <h2 class="breadcrumb-title">Wishlist</h2>
                            </div>
                            <div class="col-lg-6  col-md-6 col-sm-6">
                                <!-- breadcrumb-list start -->
                                <ul class="breadcrumb-list text-center text-sm-end">
                                    <li class="breadcrumb-item"><a href="index_LogInSuccess.jsp">Home</a></li>
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
                <!-- cart start -->
                <div class="cart-main-area  section-space--ptb_90">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="#">
                                    <div class="table-content table-responsive cart-table-content header-color-gray">
                                        <table>
                                            <thead>
                                                <tr class="bg-gray">
                                                    <th></th>
                                                    <th></th>
                                                    <th class="product-name">Product</th>
                                                    <th class="product-price"> Price</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="item" items="${sessionScope.userCart}" >
                                                    <c:set var="imageSrc" value="${item.pathIMG}" />
                                                    <c:set var="totalPayment" value="${totalPayment + (item.quantity * item.price)}" />

                                                    <tr>
                                                        <td></td>
                                                        <td class="product-img">
                                                            <a href="#"><img src="<c:url value='${imageSrc}'/>" alt="productImage" style="max-width: 70px;max-height: 70px"></a>
                                                        </td>
                                                        <td class="product-name"><a href="#"><c:out value='${item.productName}' /></a></td>

                                                        <td class="product-price"><span class="amount"><c:out value='${item.price}'/></span></td>

                                                        <td class="cart-quality">
                                                            <div class="quickview-quality quality-height-dec2">
                                                                <div class="cart-plus-minus">
                                                                    <input class="cart-plus-minus-box" type="number" name="qtybutton" value='${item.quantity}'>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="price-total">
                                                            <span class="amount"><c:out value='${item.quantity*item.price}'/></span>
                                                        </td>
                                                        <td class="product-remove">
                                                            <a href="RemoveProductControl?id=${item.ID}"><i class="icon-cross2"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                                <div class="shoping-update-area row">
                                    <div class="continue-shopping-butotn col-6 mt-30">
                                        <a href="loading-home" class="btn btn--lg btn--black"><i class="icon-arrow-left"></i> Continue Shopping </a>
                                    </div>
                                    <div class="update-cart-button col-6 text-end mt-30">
                                        <a href="#" class="btn btn--lg btn--border_1">Update cart</a>
                                    </div>
                                </div>
                                <div class="cart-buttom-area" style="align-self: baseline">
                                    <div class="row" >
                                        <div class="col-lg-6" style="visibility: hidden">
                                            <div class="discount-code section-space--mt_60">
                                                <h6 class="mb-30">Coupon Discount</h6>
                                                <p>Enter your coupon code if you have one.</p>
                                                <input type="text" name="name" placeholder="Coupon code">
                                                <button class="coupon-btn btn btn--lg btn--border_1" type="submit">Apply coupon</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="cart_totals section-space--mt_60 ms-md-auto">
                                                <div class="grand-total-wrap">
                                                    <div class="grand-total-content">
                                                        <ul>
                                                            <li>Subtotal <span> $<c:out value="${totalPayment}"/></span></li>
                                                            <li>Total <span>$<c:out value="${totalPayment}"/></span> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="grand-btn mt-30">
                                                    <b> <a href="checkout-to-order.jsp" class="btn--black btn--full text-center btn--lg" style="background-color: #dcb14a; color: black">Proceed to order these products</a></b>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- cart end -->

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


        <!-- Modal -->
        <div class="product-modal-box modal fade" id="prodect-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog  modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span class="icon-cross" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="quickview-product-active mr-lg-5">
                                    <a href="#" class="images">
                                        <img src="assets/images/product/2-570x570.webp" class="img-fluid" alt="">
                                    </a>
                                    <a href="#" class="images">
                                        <img src="assets/images/product/3-600x600.webp" class="img-fluid" alt="">
                                    </a>
                                    <a href="#" class="images">
                                        <img src="assets/images/product/4-768x768.webp" class="img-fluid" alt="">
                                    </a>
                                </div>
                                <!-- Thumbnail Large Image End -->
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="product-details-content quickview-content-wrap ">

                                    <h5 class="font-weight--reguler mb-10">Teapot with black tea</h5>
                                    <div class="quickview-ratting-review mb-10">
                                        <div class="quickview-ratting-wrap">
                                            <div class="quickview-ratting">
                                                <i class="yellow icon_star"></i>
                                                <i class="yellow icon_star"></i>
                                                <i class="yellow icon_star"></i>
                                                <i class="yellow icon_star"></i>
                                                <i class="yellow icon_star"></i>
                                            </div>
                                            <a href="#"> 2 customer review</a>
                                        </div>
                                    </div>
                                    <h3 class="price">�59.99</h3>

                                    <div class="stock in-stock mt-10">
                                        <p>Available: <span>In stock</span></p>
                                    </div>

                                    <div class="quickview-peragraph mt-10">
                                        <p>At vero accusamus et iusto odio dignissimos blanditiis praesentiums dolores molest.</p>
                                    </div>


                                    <div class="quickview-action-wrap mt-30">
                                        <div class="quickview-cart-box">
                                            <div class="quickview-quality">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="0">
                                                </div>
                                            </div>

                                            <div class="quickview-button">
                                                <div class="quickview-cart button">
                                                    <a href="product-details.html" class="btn--lg btn--black font-weight--reguler text-white">Add to cart</a>
                                                </div>
                                                <div class="quickview-wishlist button">
                                                    <a title="Add to wishlist" href="#"><i class="icon-heart"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="product_meta mt-30">
                                        <div class="sku_wrapper item_meta">
                                            <span class="label"> SKU: </span>
                                            <span class="sku"> 502 </span>
                                        </div>
                                        <div class="posted_in item_meta">
                                            <span class="label">Categories: </span><a href="#">Furniture</a>, <a href="#">Table</a>
                                        </div>
                                        <div class="tagged_as item_meta">
                                            <span class="label">Tag: </span><a href="#">Pottery</a>
                                        </div>
                                    </div>

                                    <div class="product_socials section-space--mt_60">
                                        <span class="label">Share this items :</span>
                                        <ul class="helendo-social-share socials-inline">
                                            <li>
                                                <a class="share-twitter helendo-twitter" href="#" target="_blank"><i class="social_twitter"></i></a>
                                            </li>
                                            <li>
                                                <a class="share-facebook helendo-facebook" href="#" target="_blank"><i class="social_facebook"></i></a>
                                            </li>
                                            <li>
                                                <a class="share-google-plus helendo-google-plus" href="#" target="_blank"><i class="social_googleplus"></i></a>
                                            </li>
                                            <li>
                                                <a class="share-pinterest helendo-pinterest" href="#" target="_blank"><i class="social_pinterest"></i></a>
                                            </li>
                                            <li>
                                                <a class="share-linkedin helendo-linkedin" href="#" target="_blank"><i class="social_linkedin"></i></a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

        <!-- Modal -->
        <div class="header-login-register-wrapper modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-box-wrapper">
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
                                <form action="#" class="account-form-box">
                                    <h6>Login your account</h6>
                                    <div class="single-input">
                                        <input type="text" placeholder="Username">
                                    </div>
                                    <div class="single-input">
                                        <input type="password" placeholder="Password">
                                    </div>
                                    <div class="checkbox-wrap mt-10">
                                        <label class="label-for-checkbox inline mt-15">
                                            <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                                        </label>
                                        <a href="#" class=" mt-10">Lost your password?</a>
                                    </div>
                                    <div class="button-box mt-25">
                                        <a href="#" class="btn btn--full btn--black">Log in</a>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="tab_list_07" role="tabpanel">

                                <form action="#" class="account-form-box">
                                    <h6>Register An Account</h6>
                                    <div class="single-input">
                                        <input type="text" placeholder="Username">
                                    </div>
                                    <div class="single-input">
                                        <input type="text" placeholder="Email address">
                                    </div>
                                    <div class="single-input">
                                        <input type="password" placeholder="Password">
                                    </div>
                                    <p class="mt-15">Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="#" class="privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                    <div class="button-box mt-25">
                                        <a href="#" class="btn btn--full btn--black">Register</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Modal -->
        <div class="header-login-register-wrapper modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-box-wrapper">
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
                                <form action="#" class="account-form-box">
                                    <h6>Login your account</h6>
                                    <div class="single-input">
                                        <input type="text" placeholder="Username">
                                    </div>
                                    <div class="single-input">
                                        <input type="password" placeholder="Password">
                                    </div>
                                    <div class="checkbox-wrap mt-10">
                                        <label class="label-for-checkbox inline mt-15">
                                            <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                                        </label>
                                        <a href="#" class=" mt-10">Lost your password?</a>
                                    </div>
                                    <div class="button-box mt-25">
                                        <a href="#" class="btn btn--full btn--black">Log in</a>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="tab_list_07" role="tabpanel">

                                <form action="#" class="account-form-box">
                                    <h6>Register An Account</h6>
                                    <div class="single-input">
                                        <input type="text" placeholder="Username">
                                    </div>
                                    <div class="single-input">
                                        <input type="text" placeholder="Email address">
                                    </div>
                                    <div class="single-input">
                                        <input type="password" placeholder="Password">
                                    </div>
                                    <p class="mt-15">Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="#" class="privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                    <div class="button-box mt-25">
                                        <a href="#" class="btn btn--full btn--black">Register</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--====================  mobile menu overlay ====================-->
        <div class="mobile-menu-overlay" id="mobile-menu-overlay">
            <div class="mobile-menu-overlay__inner">
                <div class="mobile-menu-close-box text-start">
                    <span class="mobile-navigation-close-icon" id="mobile-menu-close-trigger"> <i class="icon-cross2"></i></span>
                </div>
                <div class="mobile-menu-overlay__body">
                    <div class="offcanvas-menu-header d-md-block d-none">
                        <div class="helendo-language-currency row-flex row section-space--mb_60 ">
                            <div class="widget-language col-md-6">
                                <h6> Language</h6>
                                <ul>
                                    <li class="actived"> <a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">Arabric</a></li>
                                </ul>
                            </div>
                            <div class="widget-currency col-md-6">
                                <h6> Currencies</h6>
                                <ul>
                                    <li class="actived"><a href="#">USD - US Dollar</a></li>
                                    <li><a href="#">Euro</a></li>
                                    <li><a href="#">Pround</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <nav class="offcanvas-navigation">
                        <ul>
                            <li class="has-children">
                                <a href="#">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.html"><span>Home V1 ? Default</span></a></li>
                                    <li><a href="index-7.html"><span>Home V2 ? Boxed</span></a></li>
                                    <li><a href="index-8.html"><span>Home V3 ? Carousel</span></a></li>
                                    <li><a href="index-11.html"><span>Home V4 ? Categories</span></a></li>
                                    <li><a href="index-10.html"><span>Home V5 ? Collection</span></a></li>
                                    <li><a href="index-5.html"><span>Home V6 ? Full Width</span></a></li>
                                    <li><a href="index-4.html"><span>Home V7 ? Left Sidebar</span></a></li>
                                    <li><a href="index-3.html"><span>Home V8 ? Metro</span></a></li>
                                    <li><a href="index-2.html"><span>Home V9 ? Minimal</span></a></li>
                                    <li><a href="index-6.html"><span>Home V10 ? Parallax</span></a></li>
                                    <li><a href="index-12.html"><span>Home V11 ? Video Feature</span></a></li>
                                    <li><a href="index-9.html"><span>Home V12 ? 02 Feature</span></a></li>
                                    <li><a href="index-13.html"><span>Home V13 ? 03 Feature</span></a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Shop</a>
                                <ul class="sub-menu">
                                    <li class="has-children">
                                        <a href="#"><span>Shop Pages</span></a>
                                        <ul class="sub-menu">
                                            <li><a href="shop-3-column.html"><span>Shop 3 Columns</span></a></li>
                                            <li><a href="shop-4-column.html"><span>Shop 4 Columns</span></a></li>
                                            <li><a href="shop-5-column.html"><span>Shop 5 Columns</span></a></li>
                                            <li><a href="shop-6-column.html"><span>Shop 6 Columns</span></a></li>
                                            <li><a href="shop-categories.html"><span>Shop Categories</span></a></li>
                                            <li><a href="shop-carousel.html"><span>Shop Carousel</span></a></li>
                                            <li><a href="shop-with-boder.html"><span>Shop With Border</span></a></li>
                                            <li><a href="shop-left-sidebar.html"><span>Shop Left Sidebar</span></a></li>
                                            <li><a href="shop-right-sidebar.html"><span>Shop Right Sidebar</span></a></li>
                                            <li><a href="shop-without-gutter.html"><span>Shop Without Gutter</span></a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#"><span>Product Pages</span></a>
                                        <ul class="sub-menu">
                                            <li><a href="product-details.html"><span>Default</span></a></li>
                                            <li><a href="product-simple.html"><span>Simple</span></a></li>
                                            <li><a href="product-variable.html"><span>Variable</span></a></li>
                                            <li><a href="product-groupped.html"><span>Groupped</span></a></li>
                                            <li><a href="product-on-sale.html"><span>On Sale</span></a></li>
                                            <li><a href="product-out-of-stock.html"><span>Out Of Stock</span></a></li>
                                            <li><a href="product-affiliate.html"><span>Affiliate</span></a></li>
                                            <li><a href="product-image-swatches.html"><span>Image Swatches</span></a></li>
                                            <li><a href="product-countdown-timer.html"><span>With Countdown Timer</span></a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#"><span>Other Pages</span></a>
                                        <ul class="sub-menu">
                                            <li><a href="cart.html"><span>Cart</span></a></li>
                                            <li><a href="checkout.html"><span>Checkout</span></a></li>
                                            <li><a href="my-account.html"><span>My Account</span></a></li>
                                            <li><a href="wishlist.html"><span>Wishlist</span></a></li>
                                            <li><a href="order-tracking.html"><span>Order Tracking</span></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="#">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="about-us.html"><span>About Us</span></a></li>
                                    <li><a href="contact-us.html"><span>Contact</span></a></li>
                                    <li><a href="faq.html"><span>FAQ Pages</span></a></li>
                                    <li><a href="coming-soon.html"><span>Coming Soon</span></a></li>
                                    <li><a href="404-page.html"><span>404 Page</span></a></li>
                                </ul>
                            </li>
                            <li class="has-children">
                                <a href="javascript:void(0)">Blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog-grid.html"><span>Blog Grid</span></a></li>
                                    <li><a href="blog-listing.html"><span>Blog List</span></a></li>
                                    <li><a href="blog-masonry.html"><span>Blog Masonry</span></a></li>
                                    <li><a href="blog-left-sidebar.html"><span>Blog Sidebar</span></a></li>
                                    <li><a href="single-blog-post.html"><span>Single Post V1</span></a></li>
                                    <li><a href="single-blog-post-2.html"><span>Single Post V2</span></a></li>
                                </ul>
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



        <!--  offcanvas Minicart Start -->
        <div class="offcanvas-minicart_wrapper" id="miniCart">
            <div class="offcanvas-menu-inner">
                <div class="close-btn-box">
                    <a href="#" class="btn-close"><i class="icon-cross2"></i></a>
                </div>
                <div class="minicart-content">
                    <ul class="minicart-list">
                        <li class="minicart-product">
                            <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                            <a class="product-item_img">
                                <img class="img-fluid" src="assets/images/product/small/cart-01.webp" alt="Product Image">
                            </a>
                            <div class="product-item_content">
                                <a class="product-item_title" href="product-details.html">Plant pots</a>
                                <label>Qty : <span>1</span></label>
                                <label class="product-item_quantity">Price: <span> $20.00</span></label>
                            </div>
                        </li>
                        <li class="minicart-product">
                            <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                            <a class="product-item_img">
                                <img class="img-fluid" src="assets/images/product/small/cart-02.webp" alt="Product Image">
                            </a>
                            <div class="product-item_content">
                                <a class="product-item_title" href="product-details.html">Teapot with black tea</a>
                                <label>Qty : <span>1</span></label>
                                <label class="product-item_quantity">Price: <span> $20.00</span></label>
                            </div>
                        </li>
                        <li class="minicart-product">
                            <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                            <a class="product-item_img">
                                <img class="img-fluid" src="assets/images/product/small/cart-03.webp" alt="Product Image">
                            </a>
                            <div class="product-item_content">
                                <a class="product-item_title" href="product-details.html">Simple Chair</a>
                                <label>Qty : <span>1</span></label>
                                <label class="product-item_quantity">Price: <span> $20.00</span></label>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="minicart-item_total">
                    <span class="font-weight--reguler">Subtotal:</span>
                    <span class="ammount font-weight--reguler">$60.00</span>
                </div>
                <div class="minicart-btn_area">
                    <a href="cart.html" class="btn btn--full btn--border_1">View cart</a>
                </div>
                <div class="minicart-btn_area">
                    <a href="checkout.html" class="btn btn--full btn--black">Checkout</a>
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


    <!-- Mirrored from htmldemo.net/helendo/helendo/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Feb 2024 08:48:43 GMT -->
</html>