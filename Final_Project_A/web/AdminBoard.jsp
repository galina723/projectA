<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zxx" class="js">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />

    <head>
        <meta charset="utf-8">
        <meta name="author" content="Softnio">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description"
              content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
        <link rel="shortcut icon" href="images/favicon.png">
        <title>e-Commerce Home | DashLite Admin Template</title>
        <link rel="stylesheet" href="assets/css/dashlitee5ca.css?ver=3.2.3">
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

    <body class="nk-body bg-lighter npc-general has-sidebar " onload = "DrawChart()">
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
                                                class="nk-menu-icon"><span class="material-symbols-outlined">shopping_bag</span></span><span
                                                class="nk-menu-text">Orders</span></a></li>

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
                                                    <div class="user-info d-none d-xl-block has-indicator">
                                                        <div class="user-status user-status-active">Administator</div>
                                                        <div class="user-name">Dora Elmigo</div>
                                                    </div>

                                                </div>
                                                <span class="material-symbols-outlined">
                                                    keyboard_arrow_down
                                                </span>
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
                    <div class="nk-content ">
                        <div class="container-fluid">
                            <div class="nk-content-inner">
                                <div class="nk-content-body">
                                    <div class="nk-block-head nk-block-head-sm">
                                        <div class="nk-block-between">
                                            <div class="nk-block-head-content">
                                                <h4 class="nk-block-title page-title">Dashboard</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nk-block">
                                        <div class="row g-gs">
                                            <div class="col-xxl-4 col-md-6">
                                                <div class="card is-dark h-100">
                                                    <div class="nk-ecwg nk-ecwg1">
                                                        <div class="card-inner">
                                                            <div class="card-title-group">
                                                                <div class="card-title">
                                                                    <h6 class="title">Total Sales</h6>
                                                                </div>
                                                                <div class="card-tools"><a href="#" class="link">View
                                                                        Report</a></div>
                                                            </div>
                                                            <div class="data">
                                                                <div class="amount">$74,958.49</div>
                                                                <div class="info"><strong>$7,395.37</strong> in last month
                                                                </div>
                                                            </div>
                                                            <div class="data">
                                                                <h6 class="sub-title">This week so far</h6>
                                                                <div class="data-group">
                                                                    <div class="amount">$1,338.72</div>
                                                                    <div class="info text-end"><span
                                                                            class="change up text-danger"><span class="material-symbols-outlined">
                                                                                arrow_upward
                                                                            </span>4.63%</span><br><span>vs.
                                                                            last week</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="nk-ck-wrap mt-auto overflow-hidden rounded-bottom">
                                                            <div class="graphBox"><canvas class="ecommerce-line-chart-s1"
                                                                                          id="totalSales" width="800vh" style="margin-bottom: 10px"></canvas></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xxl-4 col-md-6">
                                                <div class="card h-100">
                                                    <div class="nk-ecwg nk-ecwg2">
                                                        <div class="card-inner">
                                                            <div class="card-title-group mt-n1">
                                                                <div class="card-title">
                                                                    <h6 class="title">Average order</h6>
                                                                </div>
                                                                <div class="card-tools me-n1">
                                                                    <div class="dropdown"><a href="#"
                                                                                             class="dropdown-toggle btn btn-icon btn-trigger"
                                                                                             data-bs-toggle="dropdown"><span class="material-symbols-outlined">
                                                                                more_horiz
                                                                            </span</em></a>

                                                                        <div class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
                                                                            <ul class="link-list-opt no-bdr">
                                                                                <li><a href="#" ><span>15
                                                                                            Days</span><span class="material-symbols-outlined" style="margin-left: 30px">done</span></a>
                                                                                </li>
                                                                                <li><a href="#"><span>30 Days</span></a>
                                                                                </li>
                                                                                <li><a href="#"><span>3 Months</span></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="data">
                                                                <div class="data-group">
                                                                    <div class="amount">$463.35</div>
                                                                    <div class="info text-end"><span
                                                                            class="change up text-danger"><span class="material-symbols-outlined">
                                                                                arrow_upward
                                                                            </span>4.63%</span><br><span>vs.
                                                                            last week</span></div>
                                                                </div>
                                                            </div>
                                                            <h6 class="sub-title">Orders over time</h6>
                                                        </div>

                                                        <div class="graphBox" style="width: 600px; margin-left: 30px"><canvas class="ecommerce-bar-chart-s1"
                                                                                                                              id="averageOrder" style="width: 1000px;"></canvas></div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xxl-4">
                                                <div class="row g-gs">
                                                    <div class="col-xxl-12 col-md-6">
                                                        <div class="card">
                                                            <div class="nk-ecwg nk-ecwg3">
                                                                <div class="card-inner pb-2">
                                                                    <div class="card-title-group">
                                                                        <div class="card-title">
                                                                            <h6 class="title">Orders</h6>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data">
                                                                        <div class="data-group">
                                                                            <div class="amount">329</div>
                                                                            <div class="info text-end"><span
                                                                                    class="change up text-danger"><span class="material-symbols-outlined">
                                                                                        arrow_upward
                                                                                    </span>4.63%</span><br><span>vs.
                                                                                    last week</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="nk-ck-wrap mt-auto overflow-hidden rounded-bottom">
                                                                    <div class="nk-ecwg3-ck"><canvas
                                                                            class="ecommerce-line-chart-s1"
                                                                            id="totalOrders"></canvas></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-12 col-md-6">
                                                        <div class="card">
                                                            <div class="nk-ecwg nk-ecwg3">
                                                                <div class="card-inner pb-2">
                                                                    <div class="card-title-group">
                                                                        <div class="card-title">
                                                                            <h6 class="title">Customers</h6>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data">
                                                                        <div class="data-group">
                                                                            <div class="amount">194</div>
                                                                            <div class="info text-end"><span
                                                                                    class="change up text-danger"><span class="material-symbols-outlined">
                                                                                        arrow_upward
                                                                                    </span>4.63%</span><br><span>vs.
                                                                                    last week</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                    class="nk-ck-wrap mt-auto overflow-hidden rounded-bottom">
                                                                    <div class="nk-ecwg3-ck"><canvas
                                                                            class="ecommerce-line-chart-s1"
                                                                            id="totalCustomers"></canvas></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-xxl-4 col-md-6">
                                                <div class="card h-100">
                                                    <div class="card-inner">
                                                        <div class="card-title-group mb-2">
                                                            <div class="card-title">
                                                                <h6 class="title">Top products</h6>
                                                            </div>
                                                            <div class="card-tools">
                                                                <div class="dropdown"><a href="#"
                                                                                         class="dropdown-toggle link link-light link-sm"
                                                                                         data-bs-toggle="dropdown">Weekly <span class="material-symbols-outlined">
                                                                            keyboard_arrow_down
                                                                        </span></a>
                                                                    <div
                                                                        class="dropdown-menu dropdown-menu-sm dropdown-menu-end">
                                                                        <ul class="link-list-opt no-bdr">
                                                                            <li><a href="#"><span>Daily</span></a></li>
                                                                            <li><a href="#"
                                                                                   ><span>Weekly</span><span class="material-symbols-outlined" style="margin-left: 30px">done</span></a>
                                                                            </li>
                                                                            <li><a href="#"><span>Monthly</span></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <ul class="nk-top-products">
                                                            <c:forEach var="item" items="${sessionScope.bestsellingList}">
                                                                <!-- item start -->
                                                                <li class="item">
                                                                    <div class="thumb"><img src="${item.pathIMG}"
                                                                                            alt=""></div>
                                                                    <div class="info">
                                                                        <div class="title"><c:out value='${item.name}'/></div>
                                                                        <div class="price"><c:out value='${item.price}'/></div>
                                                                    </div>
                                                                    <div class="total">
                                                                        <div class="amount">$990.00</div>
                                                                        <div class="count">10 Sold</div>
                                                                    </div>
                                                                </li>
                                                                <!-- item end -->
                                                            </c:forEach>

                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xxl-3 col-md-6">
                                                <div class="card h-100">
                                                    <div class="card-inner">
                                                        <div class="card-title-group mb-2">
                                                            <div class="card-title">
                                                                <h6 class="title">Store Statistics</h6>
                                                            </div>
                                                        </div>
                                                        <ul class="nk-store-statistics">
                                                            <li class="item">
                                                                <div class="info">
                                                                    <div class="title">Orders</div>
                                                                    <div class="count">1,795</div>
                                                                </div><span class="material-symbols-outlined">
                                                                    shopping_bag
                                                                </span>
                                                            </li>
                                                            <li class="item">
                                                                <div class="info">
                                                                    <div class="title">Customers</div>
                                                                    <div class="count">2,327</div>
                                                                </div><span class="material-symbols-outlined">
                                                                    group
                                                                </span>
                                                            </li>
                                                            <li class="item">
                                                                <div class="info">
                                                                    <div class="title">Products</div>
                                                                    <div class="count">674</div>
                                                                </div><<span class="material-symbols-outlined">
                                                                    inventory_2
                                                                </span>
                                                            </li>
                                                            <li class="item">
                                                                <div class="info">
                                                                    <div class="title">Categories</div>
                                                                    <div class="count">68</div>
                                                                </div><span class="material-symbols-outlined">
                                                                    dns
                                                                </span>
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
                    </div>
                    <div class="nk-footer">
                        <div class="container-fluid">
                            <div class="nk-footer-wrap">
                                <div class="nk-footer-copyright"> &copy; 2023 Helendo</div>
                                <div class="nk-footer-links">
                                    <ul class="nav nav-sm">
                                        <li class="nav-item dropup"><a href="#"
                                                                       class="dropdown-toggle  has-indicator nav-link text-base"
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
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/bundlee5ca.js?ver=3.2.3"></script>
        <script src="assets/js/scriptse5ca.js?ver=3.2.3"></script>
        <script src="assets/js/demo-settingse5ca.js?ver=3.2.3"></script>
        <script src="assets/js/charts/chart-ecommercee5ca.js?ver=3.2.3"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script type="text/javascript"></script>
    </body>

</html>