<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Clientes.aspx.vb" Inherits="CRM_TERCERO.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>CRM PP2</title>

    <link rel="stylesheet" href="assets/css/main/app.css"/>
    <link rel="stylesheet" href="assets/css/main/app-dark.css"/>
    <link rel="shortcut icon" href="assets/images/logo/favicon.svg" type="image/x-icon"/>
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/png"/>

<link rel="stylesheet" href="assets/css/pages/fontawesome.css"/>
<link rel="stylesheet" href="assets/css/pages/datatables.css"/>
<link rel="stylesheet" href="assets/css/pages/icon.css" />
</head>
<body onload="clienteLlenarTabla()">
    <form id="form1" runat="server">
        <div id="app">
        <div id="sidebar">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header position-relative">
        <div class="d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="index.html"><img src="assets/images/logo/logo.svg" alt="Logo" srcset=""/></a>
            </div>
            <div class="theme-toggle d-flex gap-2  align-items-center mt-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--system-uicons" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 21 21"><g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><path d="M10.5 14.5c2.219 0 4-1.763 4-3.982a4.003 4.003 0 0 0-4-4.018c-2.219 0-4 1.781-4 4c0 2.219 1.781 4 4 4zM4.136 4.136L5.55 5.55m9.9 9.9l1.414 1.414M1.5 10.5h2m14 0h2M4.135 16.863L5.55 15.45m9.899-9.9l1.414-1.415M10.5 19.5v-2m0-14v-2" opacity=".3"></path><g transform="translate(-210 -1)"><path d="M220.5 2.5v2m6.5.5l-1.5 1.5"></path><circle cx="220.5" cy="11.5" r="4"></circle><path d="m214 5l1.5 1.5m5 14v-2m6.5-.5l-1.5-1.5M214 18l1.5-1.5m-4-5h2m14 0h2"></path></g></g></svg>
                <div class="form-check form-switch fs-6">
                    <input class="form-check-input  me-0" type="checkbox" id="toggle-dark" />
                    <label class="form-check-label" ></label>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--mdi" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="m17.75 4.09l-2.53 1.94l.91 3.06l-2.63-1.81l-2.63 1.81l.91-3.06l-2.53-1.94L12.44 4l1.06-3l1.06 3l3.19.09m3.5 6.91l-1.64 1.25l.59 1.98l-1.7-1.17l-1.7 1.17l.59-1.98L15.75 11l2.06-.05L18.5 9l.69 1.95l2.06.05m-2.28 4.95c.83-.08 1.72 1.1 1.19 1.85c-.32.45-.66.87-1.08 1.27C15.17 23 8.84 23 4.94 19.07c-3.91-3.9-3.91-10.24 0-14.14c.4-.4.82-.76 1.27-1.08c.75-.53 1.93.36 1.85 1.19c-.27 2.86.69 5.83 2.89 8.02a9.96 9.96 0 0 0 8.02 2.89m-1.64 2.02a12.08 12.08 0 0 1-7.8-3.47c-2.17-2.19-3.33-5-3.49-7.82c-2.81 3.14-2.7 7.96.31 10.98c3.02 3.01 7.84 3.12 10.98.31Z"></path></svg>
            </div>
            <div class="sidebar-toggler  x">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>

            <li
                class="sidebar-item  ">
                <a href="index.html" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard 2</span>
                </a>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-stack"></i>
                    <span>Components</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="component-alert.html">Alert</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-badge.html">Badge</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-breadcrumb.html">Breadcrumb</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-button.html">Button</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-card.html">Card</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-carousel.html">Carousel</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-dropdown.html">Dropdown</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-list-group.html">List Group</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-modal.html">Modal</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-navs.html">Navs</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-pagination.html">Pagination</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-progress.html">Progress</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-spinner.html">Spinner</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="component-tooltip.html">Tooltip</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-collection-fill"></i>
                    <span>Extra Components</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="extra-component-avatar.html">Avatar</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="extra-component-sweetalert.html">Sweet Alert</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="extra-component-toastify.html">Toastify</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="extra-component-rating.html">Rating</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="extra-component-divider.html">Divider</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-grid-1x2-fill"></i>
                    <span>Layouts</span>
                </a>
                <ul class="submenu">
                    <li class="submenu-item ">
                        <a href="layout-default.html">Default Layout</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="layout-vertical-1-column.html">1 Column</a>
                    </li>
                    <li class="submenu-item">
                        <a href="layout-vertical-navbar.html">Vertical Navbar</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="layout-rtl.html">RTL Layout</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="layout-horizontal.html">Horizontal Menu</a>
                    </li>
                </ul>
            </li>

            <li class="sidebar-title">Forms &amp; Tables</li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-hexagon-fill"></i>
                    <span>Form Elements</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="form-element-input.html">Input</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-element-input-group.html">Input Group</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-element-select.html">Select</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-element-radio.html">Radio</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-element-checkbox.html">Checkbox</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-element-textarea.html">Textarea</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  ">
                <a href="form-layout.html" class='sidebar-link'>
                    <i class="bi bi-file-earmark-medical-fill"></i>
                    <span>Form Layout</span>
                </a>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-pen-fill"></i>
                    <span>Form Editor</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="form-editor-quill.html">Quill</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-editor-ckeditor.html">CKEditor</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-editor-summernote.html">Summernote</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="form-editor-tinymce.html">TinyMCE</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  ">
                <a href="table.html" class='sidebar-link'>
                    <i class="bi bi-grid-1x2-fill"></i>
                    <span>Table</span>
                </a>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-file-earmark-spreadsheet-fill"></i>
                    <span>Datatables</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="table-datatable.html">Datatable</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="table-datatable-jquery.html">Datatable (jQuery)</a>
                    </li>
                </ul>
            </li>

            <li class="sidebar-title">Extra UI</li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-pentagon-fill"></i>
                    <span>Widgets</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="ui-widgets-chatbox.html">Chatbox</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-widgets-pricing.html">Pricing</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-widgets-todolist.html">To-do List</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-egg-fill"></i>
                    <span>Icons</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="ui-icons-bootstrap-icons.html">Bootstrap Icons </a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-icons-fontawesome.html">Fontawesome</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-icons-dripicons.html">Dripicons</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-bar-chart-fill"></i>
                    <span>Charts</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="ui-chart-chartjs.html">ChartJS</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-chart-apexcharts.html">Apexcharts</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  ">
                <a href="ui-file-uploader.html" class='sidebar-link'>
                    <i class="bi bi-cloud-arrow-up-fill"></i>
                    <span>File Uploader</span>
                </a>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-map-fill"></i>
                    <span>Maps</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="ui-map-google-map.html">Google Map</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="ui-map-jsvectormap.html">JS Vector Map</a>
                    </li>
                </ul>
            </li>

            <li class="sidebar-title">Pages</li>

            <li
                class="sidebar-item  ">
                <a href="application-email.html" class='sidebar-link'>
                    <i class="bi bi-envelope-fill"></i>
                    <span>Email Application</span>
                </a>
            </li>

            <li
                class="sidebar-item  ">
                <a href="application-chat.html" class='sidebar-link'>
                    <i class="bi bi-chat-dots-fill"></i>
                    <span>Chat Application</span>
                </a>
            </li>

            <li
                class="sidebar-item  ">
                <a href="application-gallery.html" class='sidebar-link'>
                    <i class="bi bi-image-fill"></i>
                    <span>Photo Gallery</span>
                </a>
            </li>

            <li
                class="sidebar-item  ">
                <a href="application-checkout.html" class='sidebar-link'>
                    <i class="bi bi-basket-fill"></i>
                    <span>Checkout Page</span>
                </a>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-person-badge-fill"></i>
                    <span>Authentication</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="auth-login.html">Login</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="auth-register.html">Register</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="auth-forgot-password.html">Forgot Password</a>
                    </li>
                </ul>
            </li>

            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-x-octagon-fill"></i>
                    <span>Errors</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="error-403.html">403</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="error-404.html">404</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="error-500.html">500</a>
                    </li>
                </ul>
            </li>

            <li class="sidebar-title">Raise Support</li>

            <li
                class="sidebar-item  ">
                <a href="https://zuramai.github.io/mazer/docs" class='sidebar-link'>
                    <i class="bi bi-life-preserver"></i>
                    <span>Documentation</span>
                </a>
            </li>

            <li
                class="sidebar-item  ">
                <a href="https://github.com/zuramai/mazer/blob/main/CONTRIBUTING.md" class='sidebar-link'>
                    <i class="bi bi-puzzle"></i>
                    <span>Contribute</span>
                </a>
            </li>

            <li
                class="sidebar-item  ">
                <a href="https://github.com/zuramai/mazer#donation" class='sidebar-link'>
                    <i class="bi bi-cash"></i>
                    <span>Donate</span>
                </a>
            </li>

        </ul>
    </div>
</div>
        </div>
        <div id="main" class='layout-navbar'>
            <header class='mb-3'>
                <nav class="navbar navbar-expand navbar-light ">
                    <div class="container-fluid">
                        <a href="#" class="burger-btn d-block">
                            <i class="bi bi-justify fs-3"></i>
                        </a>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item dropdown me-1">
                                    <a class="nav-link active dropdown-toggle text-gray-600" href="#" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <i class='bi bi-envelope bi-sub fs-4'></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                                        <li>
                                            <h6 class="dropdown-header">Mail</h6>
                                        </li>
                                        <li><a class="dropdown-item" href="#">No new mail</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown me-3">
                                    <a class="nav-link active dropdown-toggle text-gray-600" href="#" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <i class='bi bi-bell bi-sub fs-4'></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                                        <li>
                                            <h6 class="dropdown-header">Notificaciones</h6>
                                        </li>
                                        <li><a class="dropdown-item">No notification available</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="dropdown">
                                <a href="#" data-bs-toggle="dropdown" aria-expanded="false">
                                    <div class="user-menu d-flex">
                                        <div class="user-name text-end me-3">
                                            <h6 class="mb-0 text-gray-600">John Ducky</h6>
                                            <p class="mb-0 text-sm text-gray-600">Administrador</p>
                                        </div>
                                        <div class="user-img d-flex align-items-center">
                                            <div class="avatar avatar-md">
                                                <img src="assets/images/faces/1.jpg"/>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton" style="min-width: 11rem;">
                                    <li>
                                        <h6 class="dropdown-header">Hello, John!</h6>
                                    </li>
                                    <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-person me-2"></i>
                                            Mi Perfil</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-gear me-2"></i>
                                            Configuraciones</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-wallet me-2"></i>
                                            Wallet</a></li>
                                    <li>
                                        <hr class="dropdown-divider"/>
                                    </li>
                                    <li><a class="dropdown-item" href="#"><i
                                                class="icon-mid bi bi-box-arrow-left me-2"></i>Salir</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <div id="main-content">

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Ejemplo de ABM</h3>
                <p class="text-subtitle text-muted">Este es un ejemplo de abm con dos columnas.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Ejemplo ABM</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>

    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Cliente</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body pt-0">
                            <form class="form">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-body p-0">
                                                <ul class="nav nav-tabs pb-4" id="myTab" role="tablist">
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link active" id="basic-information-tab" data-bs-toggle="tab" href="#basic-information" role="tab"
                                                            aria-controls="basic-information" aria-selected="true">Información Básica</a>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#contact" role="tab"
                                                            aria-controls="contact" aria-selected="false">Contacto</a>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link" id="company-tab" data-bs-toggle="tab" href="#company" role="tab"
                                                            aria-controls="company" aria-selected="false">Empresa</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content" id="myTabContent">

                                                    <div class="tab-pane fade show active" id="basic-information" role="tabpanel" aria-labelledby="basic-information-tab">
                                                        <div class="row">
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtNombre">Nombre</label>
                                                                    <input type="text" id="txtNombre" class="form-control"
                                                                        placeholder="Nombre" name="fname"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtApellido">Apellido</label>
                                                                    <input type="text" id="txtApellido" class="form-control"
                                                                        placeholder="Apellido" name="lname-column"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="cboPais">País</label>
                                                                    <fieldset class="form-group">
                                                                        <select class="form-select" id="cboPais">
                                                                            <option value="12">Argentina</option>
                                                                            <option value="237">Uruguay</option>
                                                                            <option value="31">Brasil</option>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="cboProvincia">Provincia</label>
                                                                    <fieldset class="form-group">
                                                                        <select class="form-select" id="cboProvincia">
                                                                            <option value="8">Córdoba</option>
                                                                            <option value="23">Buenos Aires</option>
                                                                            <option value="15">Santa Fe</option>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="cboCiudad">Ciudad</label>
                                                                    <fieldset class="form-group">
                                                                        <select class="form-select" id="cboCiudad">
                                                                            <option value="407">Villa del Rosario</option>
                                                                            <option value="201">Pilar</option>
                                                                            <option value="215">Rio Segundo</option>
                                                                        </select>
                                                                    </fieldset>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtDireccion">Direccion</label>
                                                                    <input type="text" id="txtDireccion" class="form-control"
                                                                        name="direccion" placeholder="Direccion"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtFechaNacimiento">Fecha de Nacimiento</label>
                                                                    <input type="date" id="txtFechaNacimiento" class="form-control"
                                                                        name="fechaNacimiento" placeholder="Fecha de Nacimiento"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                                        <div class="row">
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                   <label for="txtEmail">Email</label>
                                                                    <input type="email" id="txtEmail" class="form-control"
                                                                        placeholder="Email" name="email"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtTelefono">Teléfono</label>
                                                                    <input type="tel" id="txtTelefono" class="form-control"
                                                                        placeholder="Teléfono" name="phone"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <a href="#" class="btn icon btn-outline-secondary"><i data-feather="plus"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="company" role="tabpanel" aria-labelledby="company-tab">
                                                        <div class="row">
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtEmpresa">Empresa</label>
                                                                    <input type="text" id="txtEmpresa" class="form-control"
                                                                        name="company" placeholder="Empresa"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-12">
                                                                <div class="form-group">
                                                                    <label for="txtCargo">Cargo</label>
                                                                    <input type="text" id="txtCargo" class="form-control"
                                                                        name="cargo" placeholder="Cargo"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-12 d-flex justify-content-end">
                                            <button type="button" class="btn btn-primary me-1 mb-1" onclick="validarCampos()">Enviar</button>
                                            <button type="button" class="btn btn-light-secondary me-1 mb-1">Limpiar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal Editar Cliente -->
    <div class="modal fade text-left w-100" id="modalEditarCliente" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel16" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl"
            role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel16">Editar Cliente</h4>
                    <button type="button" class="close" data-bs-dismiss="modal"
                        aria-label="Close">
                        <i data-feather="x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-body p-0">
                            <ul class="nav nav-tabs pb-4" id="editarClientesTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="edit-basic-information-tab" data-bs-toggle="tab" href="#edit-basic-information" role="tab"
                                        aria-controls="edit-basic-information" aria-selected="true">Información Básica</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="edit-contact-tab" data-bs-toggle="tab" href="#edit-contact" role="tab"
                                        aria-controls="edit-contact" aria-selected="false">Contacto</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="edit-company-tab" data-bs-toggle="tab" href="#edit-company" role="tab"
                                        aria-controls="edit-company" aria-selected="false">Empresa</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="editTabContent">

                                <div class="tab-pane fade show active" id="edit-basic-information" role="tabpanel" aria-labelledby="edit-basic-information-tab">
                                    <div class="row">
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditNombre">Nombre</label>
                                                <input type="text" id="txtEditNombre" class="form-control"
                                                    placeholder="Nombre" name="fname"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditApellido">Apellido</label>
                                                <input type="text" id="txtEditApellido" class="form-control"
                                                    placeholder="Apellido" name="lname-column"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="cboEditPais">País</label>
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="cboEditPais">
                                                        <option value="12">Argentina</option>
                                                        <option value="237">Uruguay</option>
                                                        <option value="31">Brasil</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="cboEditProvincia">Provincia</label>
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="cboEditProvincia">
                                                        <option value="8">Córdoba</option>
                                                        <option value="23">Buenos Aires</option>
                                                        <option value="15">Santa Fe</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="cboEditCiudad">Ciudad</label>
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="cboEditCiudad">
                                                        <option value="407">Villa del Rosario</option>
                                                        <option value="201">Pilar</option>
                                                        <option value="215">Rio Segundo</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditDireccion">Direccion</label>
                                                <input type="text" id="txtEditDireccion" class="form-control"
                                                    name="direccion" placeholder="Direccion"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditFechaNacimiento">Fecha de Nacimiento</label>
                                                <input type="date" id="txtEditFechaNacimiento" class="form-control"
                                                    name="fechaNacimiento" placeholder="Fecha de Nacimiento"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="edit-contact" role="tabpanel" aria-labelledby="edit-contact-tab">
                                    <div class="row">
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditEmail">Email</label>
                                                <input type="email" id="txtEditEmail" class="form-control"
                                                    placeholder="Email" name="email"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditTelefono">Teléfono</label>
                                                <input type="tel" id="txtEditTelefono" class="form-control"
                                                    placeholder="Teléfono" name="phone"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <a href="#" class="btn icon btn-outline-secondary"><i data-feather="plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="edit-company" role="tabpanel" aria-labelledby="edit-company-tab">
                                    <div class="row">
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditEmpresa">Empresa</label>
                                                <input type="text" id="txtEditEmpresa" class="form-control"
                                                    name="edit-company" placeholder="Empresa"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <label for="txtEditCargo">Cargo</label>
                                                <input type="text" id="txtEditCargo" class="form-control"
                                                    name="cargo" placeholder="Cargo"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary"
                        data-bs-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button type="button" class="btn btn-primary ml-1"
                        data-bs-dismiss="modal">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Accept</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!--Tabla Clientes  -->
    <section class="section">
        <div class="card">
            <div class="card-header">
                Simple Datatable
            </div>
            <div class="card-body">
                <table class="table table-hover" id="tablaClientes">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Pais</th>
                            <th scope="col">Email</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Empresa</th>
                            <th scope="col">Cargo</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Editar</th>
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>

                <footer>
                    <div class="footer clearfix mb-0 text-muted">
                        <div class="float-start">
                            <p>2021 &copy; Mazer</p>
                        </div>
                        <div class="float-end">
                            <p>Crafted with <span class="text-danger"><i class="bi bi-heart-fill icon-mid"></i></span>
                                by <a href="https://ahmadsaugi.com">Saugi</a></p>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </div>
    </form>
    <script src="assets/js/app.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/extensions/datatables.js"></script>
    <script>
        function validarCampos() {
            let nombre = document.getElementById('txtNombre').value;
            let apellido = document.getElementById('txtApellido').value;
            let pais = document.getElementById('cboPais').value;
            let provincia = document.getElementById('cboProvincia').value;
            let ciudad = document.getElementById('cboCiudad').value;
            let direccion = document.getElementById('txtDireccion').value;
            let fechaNacimiento = document.getElementById('txtFechaNacimiento').value;
            let email = document.getElementById('txtEmail').value;
            let telefono = document.getElementById('txtTelefono').value;
            let empresa = document.getElementById('txtEmpresa').value;
            let cargo = document.getElementById('txtCargo').value;

            let listaDeInputs = [nombre, apellido, pais, provincia, ciudad, direccion, fechaNacimiento, email, telefono, empresa, cargo]

            if (listaDeInputs.includes("")) {
                alertaError();
            } else {
                clienteAgregar();
            }
        }

        function alertaError() {
            Swal.fire({
                title: "Error al agregar cliente",
                text: "Complete todos los campos solicitados",
                icon: "error"
            });
        }

        function txtLimpiar() {
            for (let i = 0; i < arguments.length; i++) {
                const element = arguments[i];
                document.getElementById(element).value = null
            }
        }

        function clienteAgregar() {
            var dateObj = new Date();
            var month = dateObj.getUTCMonth() + 1; //months from 1-12
            var day = dateObj.getUTCDate();
            var year = dateObj.getUTCFullYear();

            var fecha = day + "/" + month + "/" + year;

            let nombre = document.getElementById('txtNombre').value;
            let apellido = document.getElementById('txtApellido').value;
            let pais = document.getElementById('cboPais').value;
            let provincia = document.getElementById('cboProvincia').value;
            let ciudad = document.getElementById('cboCiudad').value;
            let direccion = document.getElementById('txtDireccion').value;
            let fechaNacimiento = document.getElementById('txtFechaNacimiento').value;
            let email = document.getElementById('txtEmail').value;
            let telefono = document.getElementById('txtTelefono').value;
            let empresa = document.getElementById('txtEmpresa').value;
            let cargo = document.getElementById('txtCargo').value;

            var cadena = {
                Nombre: nombre,
                Apellido: apellido,
                IdPais: pais,
                IdProvincia: provincia,
                IdCiudad: ciudad,
                Direccion: direccion,
                CodPostal: '0',
                FechaNacimiento: fechaNacimiento,
                Correo: email,
                Telefono: telefono,
                IdOrganizacion: '1',
                IdCargo: '1',
                FechaIngreso: fecha,
                IdEstado: '1',
            };

            var payload = {
                cadena: JSON.stringify(cadena)
            };

            $.ajax({
                type: "POST",
                url: "Clientes.aspx/ClientesAgregar",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(payload),
                dataType: "json",
                success: function (data) {
                    var json = $.parseJSON(data.d);
                    var status = json.Status;

                    if (status == 200) {
                        Swal.fire({
                            title: "Éxito",
                            html: "Datos agregados correctamente",
                            icon: "success"
                        });
                        txtLimpiar('txtNombre', 'txtApellido', 'txtDireccion', 'txtFechaNacimiento', 'txtEmail', 'txtTelefono', 'txtEmpresa', 'txtCargo');
                        clienteLlenarTabla();

                    } else {
                        Swal.fire({
                            title: "LO SIENTO ALGO SALIO MAL",
                            text: "Verifica los datos ingresados",
                            icon: "error"
                        });
                    }
                }
            });
        }

        function clienteLlenarTabla() {
            var tabla = $('#tablaClientes').DataTable();
            tabla.destroy();
            $('#tablaClientes').DataTable({
                language: {
                    url: "//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json"
                },

                ajax: {
                     "type": "POST",
                     "url": "Clientes.aspx/ClientesBuscarTodos",
                     "contentType": "application/json; charset=utf-8",
                     "dataType": "json",
                     "dataSrc": function (data) {

                         var json = $.parseJSON(data.d);

                         if (json.Data.length > 0) {
                             var return_data = new Array();
                             for (var i = 0; i < json.Data.length; i++) {
                                 return_data.push({
                                     'IdCliente': json.Data[i].IdCliente,
                                     'Nombre': json.Data[i].Nombre,
                                     'Apellido': json.Data[i].Apellido,
                                     'Pais': json.Data[i].IdPais,
                                     'Email': json.Data[i].Correo,
                                     'Teléfono': json.Data[i].Telefono,
                                     'Empresa': json.Data[i].IdOrganizacion,
                                     'Cargo': json.Data[i].IdCargo,
                                     'Estado': json.Data[i].IdEstado
                                 })
                             }
                             return return_data;
                         } else {
                             Swal.fire("NO HAY REGISTROS CARGADOS", "Gracias por consultar", "success");
                         }
                     }
                 },
                columns: [
                    { 'data': 'Nombre' },
                    { 'data': 'Apellido' },
                    { 'data': 'Pais' },
                    { 'data': 'Email' },
                    { 'data': 'Teléfono' },
                    { 'data': 'Empresa' },
                    { 'data': 'Cargo' },
                    { 'data': 'Estado' },
                    {
                        'data': 'IdCliente',
                        orderable: false,
                        'render': function (data, type, row) {
                            return '<a onclick="clienteBuscarPorIdModal(' + row.IdUsuario + ')" data-bs-toggle="modal" data-bs-target="#modalEditarCliente"><i class="material-icons" role="button">edit</i></a> '
                        }
                    },
                    {
                        'data': 'IdCliente',
                        orderable: false,
                        'render': function (data, type, row) {
                            return '<a onclick="clienteEliminar(' + row.IdUsuario + ')"><i class="material-icons" role="button">delete</i></a> '
                        }
                    },
                ],
            });

        }

        function clienteBuscarPorIdModal(id) {

        }

    </script>
</body>
</html>
