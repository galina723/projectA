<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zxx" class="js">
    <!-- Mirrored from dashlite.net/demo2/ecommerce/products.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 03 Mar 2024 03:31:29 GMT -->
    <!-- Added by HTTrack -->
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

    <head>
        <meta charset="utf-8">
        <meta name="author" content="Softnio">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description"
              content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
        <link rel="shortcut icon" href="../images/favicon.png">
        <title>Products | DashLite Admin Template</title>
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
                                                                </span><span>View
                                                                    Profile</span></a></li>
                                                        <li><a href="user-profile.html"><span class="material-symbols-outlined">
                                                                    manage_accounts
                                                                </span><span>Account
                                                                    Setting</span></a></li>
                                                        <li><a href="user-profile.html"><span class="material-symbols-outlined">
                                                                    work_history
                                                                </span><span>Login
                                                                    Activity</span></a></li>
                                                    </ul>
                                                </div>
                                                <div class="dropdown-inner">
                                                    <ul class="link-list">
                                                        <li><a href="index.jsp"><span class="material-symbols-outlined">
                                                                    logout
                                                                </span><span>Sign
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
                                                <h3 class="nk-block-title page-title">Products</h3>
                                            </div>
                                            <div class="nk-block-head-content">
                                                <div class="toggle-wrap nk-block-tools-toggle"><a href="#"
                                                                                                  class="btn btn-icon btn-trigger toggle-expand me-n1"
                                                                                                  data-target="pageMenu"><span class="material-symbols-outlined">
                                                            more_horiz
                                                        </span></a>
                                                    <div class="toggle-expand-content" data-content="pageMenu">
                                                        <ul class="nk-block-tools g-3">
                                                            <li>
                                                                <div class="form-control-wrap">
                                                                    <div class="form-icon form-icon-right"><span class="material-symbols-outlined">
                                                                            search
                                                                        </span></div><input
                                                                        type="text" class="form-control" id="default-04"
                                                                        placeholder="Quick search by id">
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="drodown"><a href="#"
                                                                                        class="dropdown-toggle btn btn-outline-light btn-white"
                                                                                        data-bs-toggle="dropdown">Status <span class="material-symbols-outlined">
                                                                            keyboard_arrow_down
                                                                        </span></a>

                                                                    <div class="dropdown-menu dropdown-menu-end">
                                                                        <ul class="link-list-opt no-bdr">
                                                                            <li><a href="#"><span>New Items</span></a></li>
                                                                            <li><a href="#"><span>Featured</span></a></li>
                                                                            <li><a href="#"><span>Out of Stock</span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="nk-block-tools-opt"><a href="AddProduct.jsp"
                                                                                              data-target="addProduct"
                                                                                              class="toggle btn btn-icon btn-primary d-md-none"><span class="material-symbols-outlined">
                                                                        add
                                                                    </span></a><a href="AddProduct.jsp"
                                                                              data-target="addProduct"
                                                                              class="toggle btn btn-primary d-none d-md-inline-flex"><span class="material-symbols-outlined">
                                                                        add
                                                                    </span><span>Add
                                                                        Product</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nk-block">
                                        <div class="nk-tb-list is-separate mb-3">
                                            <div class="nk-tb-item nk-tb-head">
                                                <div class="nk-tb-col nk-tb-col-check">
                                                    <div class="custom-control custom-control-sm custom-checkbox notext">
                                                        <input type="checkbox" class="custom-control-input" id="pid"><label
                                                            class="custom-control-label" for="pid"></label></div>
                                                </div>
                                                <div class="nk-tb-col tb-col-sm"><span>ID</span></div>
                                                <div class="nk-tb-col"><span>Name</span></div>
                                                <div class="nk-tb-col"><span>Price</span></div>
                                                <div class="nk-tb-col"><span>Quantity</span></div>
                                                <div class="nk-tb-col"><span>Material</span></div>
                                                <div class="nk-tb-col tb-col-md"><span>Stock</span></div>

                                                <div class="nk-tb-col nk-tb-col-tools">
                                                    <ul class="nk-tb-actions gx-1 my-n1">
                                                        <li class="me-n1">
                                                            <div class="dropdown"><a href="#"
                                                                                     class="dropdown-toggle btn btn-icon btn-trigger"
                                                                                     data-bs-toggle="dropdown"><span class="material-symbols-outlined">
                                                                        more_horiz
                                                                    </span></a>
                                                                <div class="dropdown-menu dropdown-menu-end">
                                                                    <ul class="link-list-opt no-bdr">
                                                                        <li><a href="#"><span class="material-symbols-outlined">
                                                                                    edit
                                                                                </span><span style="margin-left: 10px">Edit
                                                                                    Selected</span></a></li>
                                                                        <li><a href="#"><span class="material-symbols-outlined">
                                                                                    delete
                                                                                </span><span style="margin-left: 10px">Remove
                                                                                    Selected</span></a></li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <!--product line start-->

                                            <c:forEach var="item" items="${sessionScope.productList}">

                                                <div class="nk-tb-item">

                                                    <div class="nk-tb-col nk-tb-col-check">
                                                        <div class="custom-control custom-control-sm custom-checkbox notext">
                                                            <input type="checkbox" class="custom-control-input" id="pid${item.ID}-checkbox">
                                                            <label class="custom-control-label" for="pid${item.ID}-checkbox"></label></div>
                                                    </div>
                                                    <div class="nk-tb-col tb-col-sm" name = "id"><span class="tb-sub"><c:out value='${item.ID}'/></span>
                                                    </div>
                                                    <div class="nk-tb-col"><span class="tb-product"><img
                                                                src="${item.pathIMG}" alt="" class="thumb"><span
                                                                class="title"><c:out value='${item.name}' /></span></span>
                                                    </div>
                                                    <div class="nk-tb-col"><span class="tb-sub"><c:out value='${item.price}'/></span></div>
                                                    <div class="nk-tb-col"><span class="tb-lead"><c:out value='${item.quantity}'/></span></div>
                                                    <div class="nk-tb-col"><span class="tb-sub"><c:out value='${item.material}'/></span></div>
                                                    <div class="nk-tb-col tb-col-md"><span class="tb-sub"><c:out value='${item.status}'/></span>
                                                    </div>

                                                    <div class="nk-tb-col nk-tb-col-tools">
                                                        <ul class="nk-tb-actions gx-1 my-n1">
                                                            <li class="me-n1">
                                                                <div class="dropdown"><a href="#"
                                                                                         class="dropdown-toggle btn btn-icon btn-trigger"
                                                                                         data-bs-toggle="dropdown"><span class="material-symbols-outlined">
                                                                            more_horiz
                                                                        </span></a>
                                                                    <div class="dropdown-menu dropdown-menu-end">
                                                                        <ul class="link-list-opt no-bdr">
                                                                            <li><a href="edit?id=${item.ID}"><span class="material-symbols-outlined">
                                                                                        edit
                                                                                    </span><span style="margin-left: 10px"> Edit
                                                                                        Product</span></a></li>
                                                                            <li><a href="ProductDetailControl?IDproduct=${item.ID}&nameProduct=${item.name}&price=${item.price}&pathIMG=${item.pathIMG}"><span class="material-symbols-outlined">
                                                                                        visibility
                                                                                    </span><span style="margin-left: 10px">View
                                                                                        Product</span></a></li>
                                                                            <li><a href="#"><span class="material-symbols-outlined">
                                                                                        analytics
                                                                                    </span><span style="margin-left: 10px">Product
                                                                                        Orders</span></a></li>
                                                                            <li><a href="delete?id=${item.ID}"><span class="material-symbols-outlined">
                                                                                        delete
                                                                                    </span><span style="margin-left: 10px">Remove Product</a></span></button></li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                </div>

                                            </c:forEach>

                                            <!--product line end-->
                                        </div>
                                        <div class="card">
                                            <div class="card-inner">
                                                <div class="nk-block-between-md g-3">
                                                    <div class="g">
                                                        <ul
                                                            class="pagination justify-content-center justify-content-md-start">

                                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                            <li class="page-item"><a class="page-link" href="#">2</a></li>

                                                        </ul>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nk-add-product toggle-slide toggle-slide-right" data-content="addProduct"
                                         data-toggle-screen="any" data-toggle-overlay="true" data-toggle-body="true"
                                         data-simplebar>
                                        <div class="nk-block-head">
                                            <div class="nk-block-head-content">
                                                <h5 class="nk-block-title">New Product</h5>
                                                <div class="nk-block-des">
                                                    <p>Add information and add new product.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <form action="addproduct" method="post" enctype="multipart/form-data">
                                            <div class="nk-block">
                                                <div class="row g-3">
                                                    <div class="col-mb-6">
                                                        <div class="form-group"><label class="form-label"
                                                                                       for="id">Product ID</label>
                                                            <div class="form-control-wrap"><input name="id" type="text"
                                                                                                  class="form-control" id="id" ></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">

                                                        <div class="form-group"><label class="form-label"
                                                                                       for="product-title">Product Title</label>
                                                            <div class="form-control-wrap"><input name = "productname" type="text"
                                                                                                  class="form-control" id="product-title" ></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-mb-6">
                                                        <div class="form-group"><label class="form-label"
                                                                                       for="regular-price">Regular Price</label>
                                                            <div class="form-control-wrap"><input name="price" type="text"
                                                                                                  class="form-control" id="regular-price" ></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-group"><label class="form-label"
                                                                                       for="tags">Quantity</label>
                                                            <div class="form-control-wrap"><input name="quantity" type="text"
                                                                                                  class="form-control" id="tags" ></div>
                                                        </div>
                                                    </div>

                                                    <div class="col-mb-6">
                                                        <div class="form-group"><label class="form-label"
                                                                                       for="stock">Material</label>
                                                            <div class="form-control-wrap"><input name="material" type="text"
                                                                                                  class="form-control" id="stock" ></div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="form-group"><label class="form-label"
                                                                                       for="category">Stock</label>
                                                            <div class="form-control-wrap"><input name="stock" type="text"
                                                                                                  class="form-control" id="category" ></div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label class="form-label" for="image">Upload photo</label>
                                                        <div class="form-control-wrap"><input type="file" name="img"></div>

                                                    </div>
                                                    <div class="col-12"><button class="btn btn-primary">
                                                            <span class="material-symbols-outlined">
                                                                add
                                                            </span><span>Add New</span></button></div>

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
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
