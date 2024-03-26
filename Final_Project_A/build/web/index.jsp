<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html class="no-js" lang="zxx">


    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Helendo Minimalis Furniture Store</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="icon" href="assets/images/favicon.ico">

        <!-- CSS
                ============================================ -->

        <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
        <link rel="stylesheet" href="assets/css/plugins/plugins.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.min.css">


    </head>

    <body class="">

        <!--====================  header area ====================-->
        <div class="header-area header-area--default bg-white">

            <!-- Header Bottom Wrap Start -->
            <header class="header-area header_absolute header_height-90 header-sticky">
                <div class="container">
                    <div class="row align-items-center">

                        <div class="col-lg-3 col-lg-3 col-6">
                            <div class="logo text-start">
                                <a href="HomePageControl"><img src="assets/images/logo/logo.svg" alt=""></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-lg-6  d-none d-lg-block">
                            <!-- navigation menu -->
                            <div class="header__navigation d-none d-lg-block">
                                <nav class="navigation-menu">
                                    <ul class="justify-content-center">
                                        <li class="has-children has-children--multilevel-submenu">
                                            <a href="HomePageControl"><span>Home</span></a>

                                        </li>
                                        <li class="has-children">
                                            <a href="#"><span>Shop</span></a>
                                            <!-- mega menu -->
                                            <ul class="megamenu megamenu--mega">
                                                <li>
                                                    <h2 class="page-list-title"><a href="loading-home"> All Products</a></h2>
                                                </li>
                                                <li>
                                                    <h2 class="page-list-title">Product Categories</h2>
                                                    <ul>
                                                        <li><a href="living-room.jsp"><span>Living Room</span></a></li>
                                                        <li><a href="bed-room.jsp"><span>Bed Room</span></a></li>
                                                        <li><a href="kitchen.jsp"><span>Kitchen</span></a></li>
                                                        <li><a href="rest-room.jsp"><span>Rest Room</span></a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <h2 class="page-list-title">Other Pages</h2>
                                                    <ul>
                                                        <li><a href="#" onclick="showCartAlert()"><span>Cart</span></a></li>
                                                        <li><a href="#" onclick="showCheckoutAlert()"><span>Checkout</span></a></li>
                                                        <script>
                                                            function showCheckoutAlert() {
                                                                alert("Please Log In To Checkout Your Cart");
                                                            }
                                                        </script>
                                                    </ul>
                                                </li>
                                                <li>

                                                </li>
                                            </ul>
                                        </li>
                                        <li class="has-children has-children--multilevel-submenu">

                                            <a href="#"><span>About Us</span></a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-3 col-lg-3 col-6">
                            <div class="header-right-side text-end">
                                <div class="header-right-items  d-none d-md-block">
                                    <a href="login.jsp">
                                        <i class="icon-user"></i>
                                    </a>
                                </div>

                                <script>
                                    function showCartAlert() {
                                        alert("Please Log In To See Your Cart");
                                    }
                                </script>
                                <div class="header-right-items">
                                    <a href="#" class="">
                                        <i class="icon-bag2" onclick="showCartAlert()"></i>
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

        <div id="main-wrapper">
            <div class="site-wrapper-reveal">

                <!-- Hero Slider Area Start -->
                <div class="hero-area hero-slider-five">
                    <div class="single-hero-slider-nine">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="hero-content-wrap">
                                        <div class="hero-text-five mt-lg-5">
                                            <h6 class=" mb-30 small-title">
                                                CHAIR <br> COLLECTION <br> 2024
                                            </h6>
                                            <h1>Chanel Chair <br> High Quality Walnut</h1>

                                            <div class="button-box section-space--mt_60">
                                                <a href="#" class="text-btn-normal font-weight--reguler font-lg-p">Discover Collection <i class="icon-arrow-right"></i></a>
                                            </div>
                                        </div>
                                        <div class="inner-images">
                                            <div class="image-one">
                                                <img src="assets/images/hero/home-full-width-2.webp" class="img-fluid" width="515" height="515" alt="Image">
                                            </div>
                                            <div class="image-two">
                                                <img src="assets/images/hero/home-full-width-4.webp" class="img-fluid" width="370" height="480" alt="Image">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="single-hero-slider-nine">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="hero-content-wrap">
                                        <div class="hero-text-five mt-lg-5">
                                            <h6 class=" mb-30 small-title">
                                                CHAIR <br> COLLECTION <br> 2024
                                            </h6>
                                            <h1>Flower Vase <br>  Made Of Ceramic</h1>

                                            <div class="button-box section-space--mt_60">
                                                <a href="#" class="text-btn-normal font-weight--reguler font-lg-p">Discover Collection <i class="icon-arrow-right"></i></a>
                                            </div>
                                        </div>
                                        <div class="inner-images">
                                            <div class="image-one">
                                                <img src="assets/images/hero/home-full-width-2.webp" class="img-fluid" width="515" height="515" alt="Image">
                                            </div>
                                            <div class="image-two">
                                                <img src="assets/images/hero/home-full-width-1.webp" class="img-fluid" width="597" height="407" alt="Image">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
                <!-- Hero Slider Area End -->

                <!-- Shopping Support Area Start -->
                <div class="shopping-support-area border-bottom section-space--pt_60">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="single-shopping-support">
                                    <div class="icon">
                                        <i class="icon-phone-wave"></i>
                                    </div>
                                    <div class="content">
                                        <h6>Support 24/7</h6>
                                        <p>We are committed to serving you 24/7</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="single-shopping-support">
                                    <div class="icon">
                                        <i class="icon-truck"></i>
                                    </div>
                                    <div class="content">
                                        <h6>Free Shipping</h6>
                                        <p>Free shipping international transport</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6s">
                                <div class="single-shopping-support">
                                    <div class="icon">
                                        <i class="icon-tab"></i>
                                    </div>
                                    <div class="content">
                                        <h6>Free Returns</h6>
                                        <p>You can return the item within 30 days.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Shopping Support Area End -->

                <!-- Category Section Start -->
                <div class="category-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="single-category-item">
                                    <a href="living-room.jsp" class="category-item-thum">
                                        <img src="assets\images\product\main4Category\livingRoom.jpg" width="240" height="240" alt="">
                                    </a>
                                    <div class="content">
                                        <h6 class="title">Living Room</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="single-category-item">
                                    <a href="bed-room.jsp" class="category-item-thum">
                                        <img src="assets\images\product\main4Category\bedRoom.jpg" width="240" height="240" alt="">
                                    </a>
                                    <div class="content">
                                        <h6 class="title">Bed Room</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="single-category-item">
                                    <a href="kitchen.jsp" class="category-item-thum">
                                        <img src="assets\images\product\main4Category\kitchen.jpg" width="240" height="240" alt="">
                                    </a>
                                    <div class="content">
                                        <h6 class="title">Kitchen</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="single-category-item">
                                    <a href="rest-room.jsp" class="category-item-thum">
                                        <img src="assets\images\product\main4Category\restRoom.jpg" width="240" height="240" alt="">
                                    </a>
                                    <div class="content">
                                        <h6 class="title">Rest Room</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Category Section End -->


                <!-- Product Area Start -->
                <div class="product-wrapper section-space--ptb_120">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-sm-12">
                                <div class="section-title text-center mb-30">
                                    <h2>New Products</h2>
                                </div>
                            </div>                            
                        </div>

                        <div class="tab-content mt-30">
                            <div class="tab-pane fade show active" id="tab_list_01">
                                <!-- product-slider-active -->
                                <div class="product-slider-active">
                                    <c:forEach var="item" items="${sessionScope.ListNewProduct}">
                                        <c:set var="imageSrc" value="${item.pathIMG}" />
                                        <div class="single-product-item text-center">
                                            <div class="products-images">
                                                <a href="product-details.html" class="product-thumbnail">
                                                    <div style="width: 300px; height: 300px;">
                                                        <img src="${imageSrc}" class="img-fluid" alt="Product Images" style="width: 88%; height: 100%; object-fit: cover; align-items: center">
                                                    </div>
                                                </a>
                                                <div class="product-actions">
                                                    <a href="ProductDetailControl?IDproduct=${item.ID}&nameProduct=${item.name}&price=${item.price}&pathIMG=${imageSrc}" data-bs-toggle="" data-bs-target=""><i class="p-icon icon-plus"></i><span class="tool-tip">Quick View</span></a>
                                                    <a href="#" onclick="showCartAlert()"><i class="p-icon icon-bag2"></i> <span class="tool-tip">Add to cart</span></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h6 class="prodect-title"><a href="product-details.html"><c:out value='${item.name}' /></span>
                                                    </a></h6>
                                                <div class="prodect-price">
                                                    <span class="new-price">$<c:out value='${item.price}' /></span>
                                                </span> - <span class="old-price">$<c:out value='${item.price}' />.00</span>
                                        </div>
                                    </div>
                                </div><!-- Single Product Item End -->
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  Best selling part-->
        <div class="product-wrapper section-space--ptb_120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title text-center mb-30">
                            <h3 class="section-title">Best selling</h3>
                        </div>
                    </div>
                    <div class="col-lg-12">

                    </div>

                </div>

                <div class="tab-content mt-30">
                    <div class="tab-pane fade show active" id="tab_list_11">
                        <!-- product-slider-active -->
                        <div class="row">
                            <c:forEach var="item" items="${sessionScope.ListBestSellProduct}">
                                <c:set var="imageSrc" value="${item.pathIMG}" />
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <!-- Single Product Item Start -->
                                    <div class="single-product-item text-center">
                                        <div class="products-images">
                                            <a href="product-details.html" class="product-thumbnail">
                                                <img src="<c:url value="${imageSrc}"/>" class="img-fluid" alt="Product Images" width="300" height="300">
                                                <span class="ribbon out-of-stock ">
                                                    <c:out value='${item.status}' />                                                    </span>
                                            </a>
                                            <div class="product-actions">
                                                <a href="ProductDetailControl?IDproduct=${item.ID}&nameProduct=${item.name}&price=${item.price}&pathIMG=${imageSrc}" data-bs-toggle="" data-bs-target=""><i class="p-icon icon-plus"></i><span class="tool-tip">Quick View</span></a>
                                                <a href="#" onclick="showCartAlert()()"><i class="p-icon icon-bag2"></i> <span class="tool-tip">Add to cart</span></a>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h6 class="prodect-title"><a href="#"><c:out value='${item.name}' /></a></h6>
                                            <div class="prodect-price">
                                                <span class="new-price">$<c:out value='${item.price}' /></span> - <span class="old-price">$ <c:out value='${item.price}' /></span>
                                            </div>
                                        </div>
                                    </div><!-- Single Product Item End -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Area End -->
        <!-- Our Blog Area Start -->
        <div class="our-blog-area section-space--pb_90">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="section-title text-center mb-20">
                            <h2 class="section-title">Latest from our blog</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                        <!-- Single Blog Item Start -->
                        <div class="single-blog-item mt-30">
                            <div class="blog-thumbnail-box">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/blog/8-570x370.webp" width="366" height="238" class="img-fluid" alt="Blog Images">
                                </a>
                                <a href="#" class="btn-blog"> Read more </a>
                            </div>
                            <div class="blog-contents">
                                <h6 class="blog-title"><a href="#">Interior design is the art, the interior designer is the artist.</a></h6>
                                <div class="meta-tag-box">
                                    <div class="meta date"><span>October 15, 2022</span></div>
                                    <div class="meta author"><span><a href="#">Hastheme</a></span></div>
                                    <div class="meta cat"><span>in <a href="#">Chair</a></span></div>
                                </div>
                            </div>
                        </div><!-- Single Blog Item End -->
                    </div>
                    <div class="col-lg-4 col-md-6  col-sm-6 col-12">
                        <!-- Single Blog Item Start -->
                        <div class="single-blog-item mt-30">
                            <div class="blog-thumbnail-box">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/blog/9-570x370.webp" width="366" height="238" class="img-fluid" alt="Blog Images">
                                </a>
                                <a href="#" class="btn-blog"> Read more </a>
                            </div>
                            <div class="blog-contents">
                                <h6 class="blog-title"><a href="#">Decorate your home with the most modern furnishings.</a></h6>
                                <div class="meta-tag-box">
                                    <div class="meta date"><span>October 02, 2022</span></div>
                                    <div class="meta author"><span><a href="#">Hastheme</a></span></div>
                                    <div class="meta cat"><span>in <a href="#">Chair</a></span></div>
                                </div>
                            </div>
                        </div><!-- Single Blog Item End -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                        <!-- Single Blog Item Start -->
                        <div class="single-blog-item mt-30">
                            <div class="blog-thumbnail-box">
                                <a href="#" class="thumbnail">
                                    <img src="assets/images/blog/10-570x370.webp" width="366" height="238" class="img-fluid" alt="Blog Images">
                                </a>
                                <a href="#" class="btn-blog"> Read more </a>
                            </div>
                            <div class="blog-contents">
                                <h6 class="blog-title"><a href="#">Spatialize with the decorations of the Helendo store.</a></h6>
                                <div class="meta-tag-box">
                                    <div class="meta date"><span>October 18, 2022</span></div>
                                    <div class="meta author"><span><a href="#">Hastheme</a></span></div>
                                    <div class="meta cat"><span>in <a href="#">Chair</a></span></div>
                                </div>
                            </div>
                        </div><!-- Single Blog Item End -->
                    </div>
                </div>

            </div>
        </div>
        <!-- Our Blog Area End -->
    </div>

    <!--====================  footer area ====================-->
    <div class="footer-area-wrapper reveal-footer bg-gray">
        <div class="footer-area section-space--ptb_90">
            <div class="container">
                <div class="row footer-widget-wrapper">
                    <div class="col-lg-3 col-md-3 col-sm-6 footer-widget">
                        <div class="footer-widget__logo mb-20">
                            <a href="HomePageControl"><img src="assets/images/logo/logo.svg" alt=""></a>
                        </div>
                        <ul class="footer-widget__list">
                            <li><i class="icon_pin"></i> Helendo, Chicago, USA 2018</li>
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

                    <div class="col-lg-3 col-md-5 col-sm-6 footer-widget">
                        <h6 class="footer-widget__title mb-20">Customer Service</h6>
                        <ul class="footer-widget__list">
                            <li><a href="#" class="hover-style-link">Help & Contact Us</a></li>
                            <li><a href="#" class="hover-style-link">Returns & Refunds</a></li>
                            <li><a href="#" class="hover-style-link">Online Stores</a></li>
                            <li><a href="#" class="hover-style-link">Terms & Conditions</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-4 col-sm-6 footer-widget">
                        <h6 class="footer-widget__title mb-20">Quick Link</h6>
                        <ul class="footer-widget__list">
                            <li><a href="#" class="hover-style-link">About Us</a></li>
                            <li><a href="#" class="hover-style-link">What We Do</a></li>
                            <li><a href="#" class="hover-style-link">FAQ Page</a></li>
                            <li><a href="#" class="hover-style-link">Contact Us</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 col-sm-6 footer-widget">
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
        <hr>
        <div class="footer-copyright-area section-space--ptb_30">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12 col-md-12">
                        <span class="copyright-text text-center">2023 Helendo. <a  href="https://hasthemes.com/" target="_blank">All Rights Reserved.</a></span>
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