<%-- 
    Document   : EditProduct
    Created on : Mar 15, 2024, 4:24:30 PM
    Author     : ADMIN
--%>

<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="author" content="Softnio">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description"
              content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
        <link rel="shortcut icon" href="images/favicon.png">
        <title>e-Commerce Home | DashLite Admin Template</title>
        <link rel="stylesheet" href="assets/css/dashlitee5ca.css">
        <link id="skin-default" rel="stylesheet" href="assets/css/themee5ca.css">
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-91615293-4"></script>
        <script>window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-91615293-4');</script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    </head>
    <body class="nk-body bg-lighter npc-general has-sidebar ">
        <div class="nk-app-root">
            <div class="nk-main ">
                <div class="nk-sidebar nk-sidebar-fixed is-light " data-content="sidebarMenu">
                    <div class="nk-sidebar-element nk-sidebar-head">
                        <div class="nk-sidebar-brand"><a href="AdminBoard.jsp"
                                                         class="logo-link nk-sidebar-logo"><img class="logo-light logo-img" src="assets/images/logo/logo.svg"
                                                                   srcset="demo2/images/logo2x.png 2x" alt="logo"><img class="logo-dark logo-img"
                                                                   src="assets/images/logo/logo.svg" srcset="/demo2/images/logo-dark2x.png 2x"
                                                                   alt="logo-dark"><img class="logo-small logo-img logo-img-small"
                                                                   src="assets/images/logo/logo.svg" srcset="/demo2/images/logo-small2x.png 2x"
                                                                   alt="logo-small"></a></div>
                        <div class="nk-menu-trigger me-n2"><a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none"
                                                              data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a><a href="#"
                                                                                                    class="nk-nav-compact nk-quick-nav-icon d-none d-xl-inline-flex"
                                                                                                    data-target="sidebarMenu"><span class="material-symbols-outlined">
                                    menu
                                </span></a></div>
                    </div>
                    <div class="nk-sidebar-element">
                        <div class="nk-sidebar-content">
                            <div class="nk-sidebar-menu" data-simplebar>
                                <ul class="nk-menu">
                                    <li class="nk-menu-item"><a href="AdminBoardControl" class="nk-menu-link"><span
                                                class="nk-menu-icon"><span class="material-symbols-outlined">Dashboard</span></span><span
                                                class="nk-menu-text">Dashboard</span></a></li>
                                    <li class="nk-menu-item"><a href="OrderAdminControl" class="nk-menu-link"><span
                                                class="nk-menu-icon"><span class="material-symbols-outlined">shopping_bag</span></span>
                                            <span class="nk-menu-text">Orders</span></a></li>

                                    <li class="nk-menu-item"><a href="ProductAdminControl" class="nk-menu-link"><span
                                                class="nk-menu-icon"><span class="material-symbols-outlined">
                                                    inventory_2
                                                </span></span><span
                                                class="nk-menu-text">Products</span></a></li>

                                    <li class="nk-menu-item"><a href="CustomerControl" class="nk-menu-link"><span
                                                class="nk-menu-icon"><span class="material-symbols-outlined">
                                                    group
                                                </span></span><span
                                                class="nk-menu-text">Customers</span></a></li>

                                    <li class="nk-menu-item"><a href="settings.html" class="nk-menu-link"><span
                                                class="nk-menu-icon"><span class="material-symbols-outlined">
                                                    settings
                                                </span></span><span
                                                class="nk-menu-text">Settings</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="nk-wrap ">
                    <div class="nk-header nk-header-fixed is-light">
                        <div class="container-fluid">
                            <div class="nk-header-wrap">
                                <div class="nk-menu-trigger d-xl-none ms-n1"><a href="#"
                                                                                class="nk-nav-toggle nk-quick-nav-icon" data-target="sidebarMenu"><em
                                            class="icon ni ni-menu"></em></a></div>
                                <div class="nk-header-brand d-xl-none"><a href="AdminBoard.jsp"
                                                                          class="logo-link"><img class="logo-light logo-img" src="assets/images/logo/logo.svg"
                                                           srcset="/demo2/images/logo2x.png 2x" alt="logo"><img class="logo-dark logo-img"
                                                           src="images/logo-dark.png" srcset="/demo2/images/logo-dark2x.png 2x"
                                                           alt="logo-dark"></a></div>
                                <div class="nk-header-search ms-3 ms-xl-0"><span class="material-symbols-outlined">
                                        search
                                    </span><input
                                        type="text" class="form-control border-transparent form-focus-none"
                                        placeholder="Search anything"></div>

                                <div class="nk-header-tools">
                                    <ul class="nk-quick-nav">
                                        <li class="dropdown notification-dropdown"><a href="#"
                                                                                      class="dropdown-toggle nk-quick-nav-icon" data-bs-toggle="dropdown">
                                                <div class="icon-status icon-status-info"><span class="material-symbols-outlined">
                                                        notifications
                                                    </span>
                                                </div>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-xl dropdown-menu-end">
                                                <div class="dropdown-head"><span
                                                        class="sub-title nk-dropdown-title">Notifications</span><a
                                                        href="#">Mark All as Read</a></div>
                                                <div class="dropdown-body">
                                                    <div class="nk-notification">
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">You have requested to
                                                                    <span>Widthdrawl</span></div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">Your <span>Deposit
                                                                        Order</span> is placed</div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">You have requested to
                                                                    <span>Widthdrawl</span></div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">Your <span>Deposit
                                                                        Order</span> is placed</div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">You have requested to
                                                                    <span>Widthdrawl</span></div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-notification-item dropdown-inner">
                                                            <div class="nk-notification-icon"><em
                                                                    class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                                                            </div>
                                                            <div class="nk-notification-content">
                                                                <div class="nk-notification-text">Your <span>Deposit
                                                                        Order</span> is placed</div>
                                                                <div class="nk-notification-time">2 hrs ago</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="dropdown-foot center"><a href="#">View All</a></div>
                                            </div>
                                        </li>
                                        <li class="dropdown user-dropdown"><a href="#" class="dropdown-toggle me-n1"
                                                                              data-bs-toggle="dropdown">
                                                <div class="user-toggle">
                                                    <div class="user-avatar sm"><span class="material-symbols-outlined">
                                                            person
                                                        </span></div>
                                                    <div class="user-info d-none d-xl-block">
                                                        <div class="user-status user-status-active">Administator</div>
                                                        <div class="user-name dropdown-indicator">Dora Elmigo</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-md dropdown-menu-end">
                                                <div class="dropdown-inner user-card-wrap bg-lighter d-none d-md-block">
                                                    <div class="user-card">
                                                        <div class="user-avatar"><span>AB</span></div>
                                                        <div class="user-info"><span class="lead-text">Dora Elmigo</span><span
                                                                class="sub-text">info@softnio.com</span></div>
                                                    </div>
                                                </div>
                                                <div class="dropdown-inner">
                                                    <ul class="link-list">
                                                        <li><a href="user-profile.html"><span class="material-symbols-outlined">
                                                                    person
                                                                </span><span style="margin-left: 10px">View
                                                                    Profile</span></a></li>
                                                        <li><a href="user-profile.html"><span class="material-symbols-outlined">
                                                                    manage_accounts
                                                                </span><span style="margin-left: 10px">Account
                                                                    Setting</span></a></li>
                                                        <li><a href="user-profile.html"><span class="material-symbols-outlined">
                                                                    work_history
                                                                </span><span style="margin-left: 10px">Login
                                                                    Activity</span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="dropdown-inner">
                                                    <ul class="link-list">
                                                        <li><a href="logoutControl"><span class="material-symbols-outlined">
                                                                    logout
                                                                </span><span style="margin-left: 10px">Sign
                                                                    out</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        HttpSession httpsession = request.getSession();
                        Product product = (Product) httpsession.getAttribute("product");
                    %>

                    <div class="nk-content nk-center-block">
                        <div class="container-fluid">
                            <div style="border: solid; border-color: #FFF; background: #fff; padding: 20px">
                                <div class="nk-content-inner">
                                    <div class="nk-content-body">
                                        <div class="nk-block-head nk-block-head-sm">
                                            <div class="nk-block-between">
                                                <div class="nk-block-head-content">
                                                    <h3 class="nk-block-title page-title">Edit Product</h3>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <form action="edit" method="post" enctype="multipart/form-data">
                                    <div class="nk-block">
                                        <div class="row g-3">
                                            <div class="col-mb-6">
                                                <div class="form-group"><label class="form-label"
                                                                               for="id">Product ID</label>
                                                    <div class="form-control-wrap"><input name="id" type="text"
                                                                                          class="form-control" value="<%= product.getID()%>" disabled></div>
                                                </div>
                                            </div>
                                            <div class="col-12">

                                                <div class="form-group"><label class="form-label"
                                                                               for="product-title">Product Title</label>
                                                    <div class="form-control-wrap"><input name = "productname" type="text"
                                                                                          class="form-control"  value="<%= product.getName()%>"></div>
                                                </div>
                                            </div>
                                            <div class="col-mb-6">
                                                <div class="form-group"><label class="form-label"
                                                                               for="regular-price">Regular Price</label>
                                                    <div class="form-control-wrap"><input name="price" type="text"
                                                                                          class="form-control"  value="<%= product.getPrice()%>"></div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group"><label class="form-label"
                                                                               for="tags">Quantity</label>
                                                    <div class="form-control-wrap"><input name="quantity" type="text"
                                                                                          class="form-control"  value="<%= product.getQuantity()%>"></div>
                                                </div>
                                            </div>
                                            <div class="col-mb-6">
                                                <div class="form-group"><label class="form-label"
                                                                               for="stock">Material</label>
                                                    <div class="form-control-wrap"><input name="material" type="text"
                                                                                          class="form-control" value="<%= product.getMaterial()%>"></div>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-group"><label class="form-label"
                                                                               for="category">Stock</label>
                                                    <div class="form-control-wrap"><input name="stock" type="text"
                                                                                          class="form-control" value="<%= product.getStatus()%>"></div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group"><label class="form-label"
                                                                               for="photo">Current Photo</label>
                                                    <div class="form-control-wrap"><label for="img"><img src="<%= product.getPathIMG()%>" alt="Current Photo" ></label></div>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <label class="form-label" for="img">Upload photo</label>
                                                <div class="form-control-wrap"><input type="file" name="img" id="img"></div>

                                            </div>
                                            <div class="col-12"><button class="btn btn-primary" type="submit"><span class="material-symbols-outlined">
                                                        save
                                                    </span><span>Save Changes</span></button></div>

                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                        <div class="nk-footer">
                            <div class="container-fluid">
                                <div class="nk-footer-wrap">
                                    <div class="nk-footer-copyright"> &copy; 2023 Helendo. Template by <a
                                            href="https://softnio.com/" target="_blank">Softnio</a></div>
                                    <div class="nk-footer-links">
                                        <ul class="nav nav-sm">
                                            <li class="nav-item dropup"><a href="#"
                                                                           class="dropdown-toggle dropdown-indicator has-indicator nav-link text-base"
                                                                           data-bs-toggle="dropdown" data-offset="0,10"><span>English</span></a>
                                                <div class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
                                                    <ul class="language-list">
                                                        <li><a href="#" class="language-item"><span
                                                                    class="language-name">English</span></a></li>
                                                        <li><a href="#" class="language-item"><span
                                                                    class="language-name">Español</span></a></li>
                                                        <li><a href="#" class="language-item"><span
                                                                    class="language-name">Français</span></a></li>
                                                        <li><a href="#" class="language-item"><span
                                                                    class="language-name">Türkçe</span></a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="nav-item"><a data-bs-toggle="modal" href="#region" class="nav-link"><em
                                                        class="icon ni ni-globe"></em><span class="ms-1">Select
                                                        Region</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" tabindex="-1" role="dialog" id="region">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content"><a href="#" class="close" data-bs-dismiss="modal"><em
                                class="icon ni ni-cross-sm"></em></a>
                        <div class="modal-body modal-body-md">
                            <h5 class="title mb-4">Select Your Country</h5>
                            <div class="nk-country-region">
                                <ul class="country-list text-center gy-2">
                                    <li><a href="#" class="country-item"><img src="../images/flags/arg.png" alt=""
                                                                              class="country-flag"><span class="country-name">Argentina</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/aus.png" alt=""
                                                                              class="country-flag"><span class="country-name">Australia</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/bangladesh.png" alt=""
                                                                              class="country-flag"><span class="country-name">Bangladesh</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/canada.png" alt=""
                                                                              class="country-flag"><span class="country-name">Canada
                                                <small>(English)</small></span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/china.png" alt=""
                                                                              class="country-flag"><span class="country-name">Centrafricaine</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/china.png" alt=""
                                                                              class="country-flag"><span class="country-name">China</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/french.png" alt=""
                                                                              class="country-flag"><span class="country-name">France</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/germany.png" alt=""
                                                                              class="country-flag"><span class="country-name">Germany</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/iran.png" alt=""
                                                                              class="country-flag"><span class="country-name">Iran</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/italy.png" alt=""
                                                                              class="country-flag"><span class="country-name">Italy</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/mexico.png" alt=""
                                                                              class="country-flag"><span class="country-name">México</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/philipine.png" alt=""
                                                                              class="country-flag"><span class="country-name">Philippines</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/portugal.png" alt=""
                                                                              class="country-flag"><span class="country-name">Portugal</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/s-africa.png" alt=""
                                                                              class="country-flag"><span class="country-name">South Africa</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/spanish.png" alt=""
                                                                              class="country-flag"><span class="country-name">Spain</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/switzerland.png" alt=""
                                                                              class="country-flag"><span class="country-name">Switzerland</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/uk.png" alt=""
                                                                              class="country-flag"><span class="country-name">United Kingdom</span></a></li>
                                    <li><a href="#" class="country-item"><img src="../images/flags/english.png" alt=""
                                                                              class="country-flag"><span class="country-name">United State</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="assets/js/bundlee5ca.js"></script>
            <script src="assets/js/scriptse5ca.js"></script>
            <script src="assets/js/demo-settingse5ca.js"></script>
    </body>
</html>
