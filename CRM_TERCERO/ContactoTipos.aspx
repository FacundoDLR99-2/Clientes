<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContactoTipos.aspx.vb" Inherits="CRM_TERCERO.ContactoTipos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CRM PP2</title>

    <link rel="stylesheet" href="assets/css/main/app.css" />
    <link rel="stylesheet" href="assets/css/main/app-dark.css" />
    <link rel="shortcut icon" href="assets/images/logo/favicon.svg" type="image/x-icon" />
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/png" />

    <link rel="stylesheet" href="assets/css/pages/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/pages/datatables.css" />
    <link rel="stylesheet" href="assets/css/pages/icon.css" />
</head>
<body onload="ContactoTiposLlenarTabla()">
    <form id="form1" runat="server">
        <div id="app">
            <!--Barra Lateral -->
            <div id="sidebar">
                <div class="sidebar-wrapper active">
                    <div class="sidebar-header position-relative">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="logo">
                                <a href="#">
                                    <img src="assets/images/logo/logo.svg" alt="Logo" srcset="" />
                                </a>
                            </div>
                            <div class="theme-toggle d-flex gap-2  align-items-center mt-2">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--system-uicons" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 21 21">
                                    <g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M10.5 14.5c2.219 0 4-1.763 4-3.982a4.003 4.003 0 0 0-4-4.018c-2.219 0-4 1.781-4 4c0 2.219 1.781 4 4 4zM4.136 4.136L5.55 5.55m9.9 9.9l1.414 1.414M1.5 10.5h2m14 0h2M4.135 16.863L5.55 15.45m9.899-9.9l1.414-1.415M10.5 19.5v-2m0-14v-2" opacity=".3"></path>
                                        <g transform="translate(-210 -1)">
                                            <path d="M220.5 2.5v2m6.5.5l-1.5 1.5"></path>
                                            <circle cx="220.5" cy="11.5" r="4"></circle>
                                            <path d="m214 5l1.5 1.5m5 14v-2m6.5-.5l-1.5-1.5M214 18l1.5-1.5m-4-5h2m14 0h2"></path>
                                        </g>
                                    </g></svg>
                                <div class="form-check form-switch fs-6">
                                    <input class="form-check-input  me-0" type="checkbox" id="toggle-dark" />
                                    <label class="form-check-label"></label>
                                </div>
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--mdi" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
                                    <path fill="currentColor" d="m17.75 4.09l-2.53 1.94l.91 3.06l-2.63-1.81l-2.63 1.81l.91-3.06l-2.53-1.94L12.44 4l1.06-3l1.06 3l3.19.09m3.5 6.91l-1.64 1.25l.59 1.98l-1.7-1.17l-1.7 1.17l.59-1.98L15.75 11l2.06-.05L18.5 9l.69 1.95l2.06.05m-2.28 4.95c.83-.08 1.72 1.1 1.19 1.85c-.32.45-.66.87-1.08 1.27C15.17 23 8.84 23 4.94 19.07c-3.91-3.9-3.91-10.24 0-14.14c.4-.4.82-.76 1.27-1.08c.75-.53 1.93.36 1.85 1.19c-.27 2.86.69 5.83 2.89 8.02a9.96 9.96 0 0 0 8.02 2.89m-1.64 2.02a12.08 12.08 0 0 1-7.8-3.47c-2.17-2.19-3.33-5-3.49-7.82c-2.81 3.14-2.7 7.96.31 10.98c3.02 3.01 7.84 3.12 10.98.31Z"></path></svg>
                            </div>
                            <div class="sidebar-toggler  x">
                                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul class="menu">
                            <li class="sidebar-title">Menu</li>

                            <li class="sidebar-item  ">
                                <a href="Clientes.aspx" class='sidebar-link'>
                                    <i class="fa-solid fa-users-medical"></i>
                                    <span>Clientes</span>
                                </a>
                            </li>

                            <li class="sidebar-item  ">
                                <a href="ContactoTipos.aspx" class='sidebar-link'>
                                    <i class="fa-solid fa-phone-plus"></i>
                                    <span>Tipos de contacto</span>
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
                                                    <img src="assets/images/faces/1.jpg" />
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton" style="min-width: 11rem;">
                                        <li>
                                            <h6 class="dropdown-header">Hola, Usuario!</h6>
                                        </li>
                                        <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-person me-2"></i>
                                            Mi Perfil</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-gear me-2"></i>
                                            Configuración</a></li>
                                        <li><a class="dropdown-item" href="#"><i class="icon-mid bi bi-wallet me-2"></i>
                                            Wallet</a></li>
                                        <li>
                                            <hr class="dropdown-divider" />
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
                                    <h3>Tipos de contacto</h3>
                                    <p class="text-subtitle text-muted">Medios de comunicación con el cliente.</p>
                                </div>
                                <div class="col-12 col-md-6 order-md-2 order-first">
                                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Tipos de contacto</li>
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
                                            <h4 class="card-title">Tipos de contacto</h4>
                                        </div>
                                        <div class="card-content">
                                            <div class="card-body">
                                                <div class="form">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <h5 class="card-title text-muted">Contacto</h5>
                                                        </div>
                                                        <div class="col-md-5 col-12">
                                                            <div class="form-group">
                                                                <label for="cbo_Nombre">Nombre</label>
                                                                <fieldset class="form-group">
                                                                     <select class="form-select" id="cbo_Nombre">
                                                                         <option value="Facebook personal">Facebook personal</option>
                                                                         <option value="Facebook trabajo">Facebook trabajo</option>
                                                                         <option value="Fax personal">Fax personal</option>
                                                                         <option value="Fax trabajo">Fax trabajo</option>
                                                                         <option value="Instagram personal">Instagram personal</option>
                                                                         <option value="Instagram trabajo">Instagram trabajo</option>
                                                                         <option value="Mail personal">Mail personal</option>
                                                                         <option value="Mail trabajo">Mail trabajo</option>
                                                                         <option value="Teléfono fijo personal">Teléfono fijo personal</option>
                                                                         <option value="Teléfono fijo trabajo">Teléfono fijo trabajo</option>
                                                                         <option value="Telegram personal">Telegram personal</option>
                                                                         <option value="Telegram trabajo">Telegram trabajo</option>
                                                                         <option value="Skype personal">Skype personal</option>
                                                                         <option value="Skype trabajo">Skype trabajo</option>
                                                                         <option value="WhatsApp personal">WhatsApp personal</option>
                                                                         <option value="WhatsApp trabajo">WhatsApp trabajo</option>
                                                                     </select>
                                                                </fieldset>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5 col-12">
                                                            <div id="visorArchivo2">
                                                                <!--Aqui se desplegará el fichero-->
                                                            </div>
                                                        <span style="display: none" id="cadena"></span>
                                                        </div>
                                                        <div class="col-md-5 col-12">
                                                            <div class="form-group">
                                                                <label for="txt_Imagen">Imagen</label>
                                                                <input class="form-control" type="file" id="btn_Imagen" onchange="return validarExt3()" accept="image/*" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-2 col-12">
                                                            <div class="form-group">
                                                                <label for="chk_Activo">Activo</label>
                                                                <asp:CheckBox ID="chk_Activo" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class="col-12 d-flex justify-content-end">
                                                            <button type="button" class="btn btn-secondary me-1 mb-1">Cancelar</button>
                                                            <button type="button" class="btn btn-primary me-1 mb-1" onclick="validarCampos()">Enviar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Botón mostrar modal -->
                        <%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEditar">Mostrar Modal(reemplazar por lápiz en la tabla)</button>--%>
                        <!-- Modal Editar-->
                        <div class="modal fade text-left w-100" id="modalEditarContactoTipos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel16" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myModalLabel16">Tipos de contacto</h4>
                                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                            <i data-feather="x"></i>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="card">
                                            <div class="card-body p-0">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <h5 class="card-title text-muted">Contacto</h5>
                                                    </div>
                                                    <input type="hidden" id="txtEdit_IdContactoTipo" />
                                                    <div class="col-md-6 col-12">
                                                        <div class="form-group">
                                                            <label for="txtEdit_Nombre">Nombre</label>
                                                            <input type="text" id="txtEdit_Nombre" class="form-control" placeholder="Nombre" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-12">
                                                            <div id="visorArchivo3">
                                                                <!--Aqui se desplegará el fichero-->
                                                            </div>
                                                        <span style="display: none" id="cadena2"></span>
                                                        </div>
                                                    <div class="col-md-6 col-12">
                                                            <div class="form-group">
                                                                <label for="cmdEdit_Imagen">Imagen</label>
                                                                <input class="form-control" type="file" id="cmdEdit_Imagen" onchange="return validarExt4()" accept="image/*" />
                                                                
                                                            </div>
                                                    </div>
                                                    <div class="col-md-6 col-12">
                                                            <div class="form-group">
                                                                <label for="chkEdit_Activo">Activo</label>
                                                                <asp:CheckBox ID="chkEdit_Activo" runat="server" />
                                                            </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                            <i class="bx bx-x d-block d-sm-none"></i>
                                            <span class="d-none d-sm-block">Cancelar</span>
                                        </button>
                                        <button type="button" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                                            <i class="bx bx-check d-block d-sm-none"></i>
                                            <span class="d-none d-sm-block" onclick="ContactoTiposModificar()">Aceptar</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--Tabla -->
                        <section class="section">
                            <div class="card">
                                <div class="card-header">Tipos de contacto</div>
                                <div class="card-body">
                                    <table class="table table-hover" id="tablaContactoTipos">
                                        <thead>
                                            <tr>
                                                <th scope="col">Nombre</th>
                                                <th scope="col">Imagen</th>
                                                <th scope="col">Activo</th>
                                                <th scope="col">Editar</th>
                                                <th scope="col">Eliminar</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </section>

                    </div>

                    <footer>
                        <div class="footer clearfix mb-0 text-muted">
                            <div class="float-start">
                                <p>2022 &copy; ISVDR</p>
                            </div>
                            <div class="float-end">
                                <p>
                                    Estos son todos los tipos de contacto.
                                </p>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
    </form>
 

    <script>

        function validarCampos() {
            let nombre = document.getElementById('cbo_Nombre').value;
           
            let activo = document.getElementById('chk_Activo').value;

            let listaDeInputs = [nombre, activo]

            if (listaDeInputs.includes("")) {
                alertaError();
            } else {
                ContactoTiposAgregar();
            }
        }

        function alertaError() {
            Swal.fire({
                title: "Error al agregar los datos.",
                text: "Complete todos los campos solicitados.",
                icon: "error"
            });
        }

        function txtLimpiar() {
            for (let i = 0; i < arguments.length; i++) {
                const element = arguments[i];
                document.getElementById(element).value = null
            }
        }

        function ContactoTiposAgregar() {

            let nombre = document.getElementById('cbo_Nombre').value;

            /*alert(nombre)*/
            let activo = ""
            if (document.getElementById('chk_Activo').checked = true) {
                activo = true
           } else {
                activo = false
            }

            let imagen = document.getElementById("cadena").innerHTML;

            if (imagen.includes("data:image/png;base64,")) {
                var res = imagen.split("data:image/png;base64,");
                var cadenaFinalImagen = res[1];

            } else if (imagen.includes("data:image/jpg;base64,")) {
                var res = imagen.split("data:image/jpg;base64,");
                var cadenaFinalImagen = res[1];

            } else if (imagen.includes("data:image/jpeg;base64,")) {
                var res = imagen.split("data:image/jpeg;base64,");
                var cadenaFinalImagen = res[1];
            }

            var cadena = {
                Nombre: nombre,
                
                Activo: activo,

                Imagen: cadenaFinalImagen
            };

            var payload = {
                cadena: JSON.stringify(cadena)
            };

            $.ajax({
                type: "POST",
                url: "ContactoTipos.aspx/ContactoTiposAgregar",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(payload),
                dataType: "json",
                success: function (data) {
                    var json = $.parseJSON(data.d);
                    var status = json.Status;

                    if (status == 200) {
                        Swal.fire({
                            title: "Éxito.",
                            html: "Datos agregados correctamente.",
                            icon: "success"
                        });
                        txtLimpiar('cbo_Nombre', 'chk_Activo');
                        ContactoTiposLlenarTabla();

                    } else {
                        Swal.fire({
                            title: "Lo sentimos, algo salió mal.",
                            text: "Verificá los datos ingresados.",
                            icon: "error"
                        });
                    }
                }
            });
        }

        function ContactoTiposModificar() {

            var archivoInput = document.getElementById('cmdEdit_Imagen');
            var archivoRuta = archivoInput.value;

            let cadena = document.getElementById("cadena2").innerHTML;

            if (cadena.includes("data:image/png;base64,")) {
                var res = cadena.split("data:image/png;base64,");
                var cadenaFinalImagen = res[1];
            } else if (cadena.includes("data:image/jpg;base64,")) {
                var res = cadena.split("data:image/jpg;base64,");
                var cadenaFinalImagen = res[1];
            } else if (cadena.includes("data:image/jpeg;base64,")) {
                var res = cadena.split("data:image/jpeg;base64,");
                var cadenaFinalImagen = res[1];
            }

            let IdContactoTipo = document.getElementById('txtEdit_IdContactoTipo').value
            let Nombre = document.getElementById('txtEdit_Nombre').value
            let Imagen = document.getElementById('cmdEdit_Imagen').value
            let Activo = document.getElementById('chkEdit_Activo').value

            var cadenaJson = {
                IdContactoTipo: IdContactoTipo,
                Nombre: Nombre,
                Imagen: cadenaFinalImagen,
                Activo: Activo
            }

            var payload = {
                cadena: JSON.stringify(cadenaJson)
            };

            $.ajax({
                type: "POST",
                url: "ContactoTipos.aspx/ContactoTiposModificar",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(payload),
                dataType: "json",
                success: function (data) {
                    var json = $.parseJSON(data.d);
                    var status = json.Status;

                    if (status == 200) {
                        Swal.fire({
                            title: "Éxito",
                            html: "Datos modificados correctamente",
                            icon: "success"
                        });
                        //txtLimpiar("txtRazonSocial", "txtFantasia", "txtNroCuit", "selectIdLocalidad", "txtDomicilio", "txtLat", "txtLng", "txtImagen", "selectEmpresaTipo", "txtObservaciones", "txtPrioridad", "txtFechaInicioActividad");
                        llenarTabla();
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

        function ContactoTiposLlenarTabla() {
            var tabla = $('#tablaContactoTipos').DataTable();
            tabla.destroy();
            $('#tablaContactoTipos').DataTable({
                language: {
                    url: "//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json"
                },

                ajax: {
                    "type": "POST",
                    "url": "ContactoTipos.aspx/ContactoTiposBuscarTodos",
                    "contentType": "application/json; charset=utf-8",
                    "dataType": "json",
                    "dataSrc": function (data) {

                        var json = $.parseJSON(data.d);

                        if (json.Data.length > 0) {
                            var return_data = new Array();
                            for (var i = 0; i < json.Data.length; i++) {
                                return_data.push({
                                    'IdContactoTipo': json.Data[i].IdContactoTipo,
                                    'Nombre': json.Data[i].Nombre,
                                    'Imagen': json.Data[i].Imagen,
                                    'Activo': json.Data[i].Activo
                                })
                            }
                            return return_data;
                        } else {
                            Swal.fire("No  hay registros cargados.", "Gracias por consultar", "success");
                        }
                    }
                },
                columns: [
                    { 'data': 'Nombre' },
                    { 'data': 'Imagen' },
                    { 'data': 'Activo' },
                    {
                        'data': 'IdContactoTipo',
                        orderable: false,
                        'render': function (data, type, row) {
                            return '<a onclick="ContactoTiposBuscarPorIdModal(' + row.IdContactoTipo + ')" data-bs-toggle="modal" data-bs-target="#modalEditarContactoTipos"><i class="material-icons" role="button">edit</i></a> '
                        }
                    },
                    {
                        'data': 'IdContactoTipo',
                        orderable: false,
                        'render': function (data, type, row) {
                            return '<a onclick="ContactoTiposEliminar(' + row.IdContactoTipo + ')"><i class="material-icons" role="button">delete</i></a> '
                        }
                    },
                ],
            });

        }

        function ContactoTiposBuscarPorIdModal(id) {
            //alert(id)
            //Swal.fire({
            //    title: 'Por favor espere',
            //    text: "Cargando...",
            //    html: `<img src="assets/images/svg-loaders/oval.svg" class="me-4" style="width: 3rem" alt="audio">`,
            //    allowOutsideClick: false,
            //    showConfirmButton: false,
            //});


            let IdContactoTipo = document.getElementById('txtEdit_IdContactoTipo')
            IdContactoTipo.value = id
            let Nombre = document.getElementById('txtEdit_Nombre')
            let Imagen = document.getElementById('cmdEdit_Imagen')
            let Activo = document.getElementById('chkEdit_Activo')

            var cadena = {
                IdContactoTipo: id
            }
            var payload = {
                cadena: JSON.stringify(cadena)
            }

/*            alert(payload)*/

            $.ajax({
                type: "POST",
                url: "ContactoTipos.aspx/ContactoTiposBuscarPorId",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(payload),
                dataType: "json",
                success: function (data) {
                    var json = $.parseJSON(data.d);
                    var status = json.Status;
                    if (status == 200) {
                        //IdContactoTipo.value = json.IdContactoTipo
                        Nombre.value = json.Nombre
                        Imagen.src = json.Imagen
                       // Imagen.innerHTML += '<img src="' + json.Imagen + '" width="200" alt="Imagen del tipo de contacto"/>';
                        // Imagen.src = json.Imagen
                        Activo.value = json.Activo
                       /* $('#modalEditarContactoTipos').modal('show')*/
                    } else {
                        Swal.fire({
                            title: "Lo sentimos, algo salió mal",
                            html: "Verifica los datos ingresados",
                            type: "warning",
                            showCancelButton: false,
                            showConfirmButton: true,
                            cancelButtonColor: "#DD6B55",
                            confirmButtonColor: "#DD6B55",
                        });
                    }
                }
            });
        }

        //function llenarTabla() {
        //    var tabla = $('#tabla1').DataTable();
        //    tabla.destroy();
        //    $('#tabla1').DataTable({
        //        language: {
        //            url: "//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json"
        //        }
        //    });
        //}
       
        function validarExt3() {
            var archivoInput = document.getElementById('btn_Imagen');
            var archivoRuta = archivoInput.value;
            document.getElementById('visorArchivo2').innerHTML = ""

            var extPermitidas = /(.png|.jpg|.jpeg)$/i;
            if (!extPermitidas.exec(archivoRuta)) {
                Swal.fire({
                    title: "LO SIENTO ALGO SALIO MAL",
                    text: "Verifica el archivo ingresado",
                    icon: "error"
                });
                archivoInput.value = '';
                return false;
            } else {
                if (archivoInput.files.length) {

                    for (let i = 0; i < archivoInput.files.length; i++) {
                        let visor = new FileReader();
                        visor.onload = function (e) {
                            document.getElementById('visorArchivo2').innerHTML +=
                                '<embed src="' + e.target.result + '" width="400" height="375" />';
                            // console.log(e.target.result);
                            let cadena = document.getElementById("cadena");
                            cadena.innerHTML = e.target.result;
                        };

                        visor.readAsDataURL(archivoInput.files[i]);
                        //visorArchivo = visor;
                        //console.log(visorArchivo);
                    }
                }
                /// document.getElementById("nombreArchivo2").style = "display:none;margin-left:-100px";
                //document.getElementById("nombreArchivo2").innerHTML = archivoRuta;
            }


        }

        function validarExt4() {
            var archivoInput = document.getElementById('cmdEdit_Imagen');
            var archivoRuta = archivoInput.value;
            document.getElementById('visorArchivo3').innerHTML = ""

            var extPermitidas = /(.png|.jpg|.jpeg)$/i;
            if (!extPermitidas.exec(archivoRuta)) {
                Swal.fire({
                    title: "LO SIENTO ALGO SALIO MAL",
                    text: "Verifica el archivo ingresado",
                    icon: "error"
                });
                archivoInput.value = '';
                return false;
            } else {
                if (archivoInput.files.length) {

                    for (let i = 0; i < archivoInput.files.length; i++) {
                        let visor = new FileReader();
                        visor.onload = function (e) {
                            document.getElementById('visorArchivo3').innerHTML +=
                                '<embed src="' + e.target.result + '" width="400" height="375" />';
                            // console.log(e.target.result);
                            let cadena = document.getElementById("cadena2");
                            cadena.innerHTML = e.target.result;
                        };

                        visor.readAsDataURL(archivoInput.files[i]);
                        //visorArchivo = visor;
                        //console.log(visorArchivo);
                    }
                }
                /// document.getElementById("nombreArchivo2").style = "display:none;margin-left:-100px";
                //document.getElementById("nombreArchivo2").innerHTML = archivoRuta;
            }


        }

        function agregarDocCap() {

            var archivoInput = document.getElementById('btn_Imagen');
            var archivoRuta = archivoInput.value;

            let cadena = document.getElementById("cadena").innerHTML;

            if (cadena.includes("data:image/png;base64,")) {
                var res = cadena.split("data:image/png;base64,");
                var cadenaFinalImagen = res[1];

            } else if (cadena.includes("data:image/jpg;base64,")) {
                var res = cadena.split("data:image/jpg;base64,");
                var cadenaFinalImagen = res[1];

            } else if (cadena.includes("data:image/jpeg;base64,")) {
                var res = cadena.split("data:image/jpeg;base64,");
                var cadenaFinalImagen = res[1];
            }

            Swal.fire({
                title: "Espere...",
                html: "<br><img src='https://crear.net.ar/CLIENTES/loader.gif'>",
                type: "warning",
                showCancelButton: false,
                showConfirmButton: false,
                cancelButtonColor: "#DD6B55",
                confirmButtonColor: "#DD6B55",
                didOpen: () => {
                    Swal.showLoading()
                }
            });

            let Nombre = document.getElementById('cbo_Nombre').value
            let Lat = document.getElementById('txtLat').value
            let Lng = document.getElementById('txtLng').value
            let Imagen = document.getElementById('btn_Imagen').value
            let Activo = document.getElementById('chk_Activo').value

            var cadenaJson = {
                Nombre: Nombre,
                Lat: Lat,
                Lng: Lng,
                Imagen: cadenaFinalImagen,
                Activo: Activo,
            }

            let jsonPush = { cadena: JSON.stringify(cadenaJson) };

            $.ajax({
                type: "POST",
                url: "ContactoTipos.aspx/ContactoTiposAgregar",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(jsonPush),
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
                        txtLimpiar("cbo_Nombre", "txtLat", "txtLng", "txt_Imagen", "chk_Activo");
                        llenarTabla();
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

    </script>

       <script src="assets/js/app.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/extensions/datatables.js"></script>

    <script src="assets/js/extensions/datatables.js"></script>


    

</body>
</html>