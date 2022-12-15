Imports System.Web.Script.Serialization
Imports System.Web.Script.Services
Imports System.Web.Services
Imports AD

Public Class Clientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ClientesBuscarTodos() As String
        Try
            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.BuscarTodos
            Dim IdTabla As Integer = 0

            Dim e As ClienteWS() = New ClienteWS(oDs.Tables(IdTabla).Rows.Count - 1) {}

            For i = 0 To oDs.Tables(IdTabla).Rows.Count - 1
                e(i) = New ClienteWS With {
                    .IdCliente = oDs.Tables(IdTabla).Rows(i).Item("IdCliente").ToString(),
                    .Nombre = oDs.Tables(IdTabla).Rows(i).Item("Nombre").ToString(),
                    .Apellido = oDs.Tables(IdTabla).Rows(i).Item("Apellido").ToString(),
                    .IdPais = oDs.Tables(IdTabla).Rows(i).Item("IdPais").ToString(),
                    .IdProvincia = oDs.Tables(IdTabla).Rows(i).Item("IdProvincia").ToString(),
                    .IdCiudad = oDs.Tables(IdTabla).Rows(i).Item("IdCiudad").ToString(),
                    .Direccion = oDs.Tables(IdTabla).Rows(i).Item("Direccion").ToString(),
                    .CodPostal = oDs.Tables(IdTabla).Rows(i).Item("CodPostal").ToString(),
                    .FechaNacimiento = oDs.Tables(IdTabla).Rows(i).Item("FechaNacimiento").ToString(),
                    .FechaIngreso = oDs.Tables(IdTabla).Rows(i).Item("FechaIngreso").ToString(),
                    .IdEstado = oDs.Tables(IdTabla).Rows(i).Item("IdEstado").ToString()
                }
            Next

            Dim data = New With {
                Key .Status = "200",
                Key .Data = e
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try
    End Function
    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ClientesBuscarPorId(ByVal cadena As String) As String
        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of ClienteWS))("[" & cadena & "]")

            Dim IdCliente = dict(0).IdCliente.ToString

            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.BuscarPorId(IdCliente)

            Dim IdTabla As Integer = 0

            Dim data = New With {
                Key .Status = "200",
                Key .IdUsuario = oDs.Tables(IdTabla).Rows(0).Item("IdCliente").ToString(),
                .Nombre = oDs.Tables(IdTabla).Rows(0).Item("Nombre").ToString(),
                    .Apellido = oDs.Tables(IdTabla).Rows(0).Item("Apellido").ToString(),
                    .IdPais = oDs.Tables(IdTabla).Rows(0).Item("IdPais").ToString(),
                    .IdProvincia = oDs.Tables(IdTabla).Rows(0).Item("IdProvincia").ToString(),
                    .IdCiudad = oDs.Tables(IdTabla).Rows(0).Item("IdCiudad").ToString(),
                    .Direccion = oDs.Tables(IdTabla).Rows(0).Item("Direccion").ToString(),
                    .CodPostal = oDs.Tables(IdTabla).Rows(0).Item("CodPostal").ToString(),
                    .FechaNacimiento = oDs.Tables(IdTabla).Rows(0).Item("FechaNacimiento").ToString(),
                    .FechaIngreso = oDs.Tables(IdTabla).Rows(0).Item("FechaIngreso").ToString(),
                    .IdEstado = oDs.Tables(IdTabla).Rows(0).Item("IdEstado").ToString()
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try

    End Function

    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ClientesAgregar(ByVal cadena As String) As String
        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of ClienteWS))("[" & cadena & "]")

            Dim Nombre = dict(0).Nombre.ToString
            Dim Apellido = dict(0).Apellido.ToString
            Dim IdPais = dict(0).IdPais.ToString
            Dim IdProvincia = dict(0).IdProvincia.ToString
            Dim IdCiudad = dict(0).IdCiudad.ToString
            Dim Direccion = dict(0).Direccion.ToString
            Dim CodPostal = dict(0).CodPostal.ToString
            Dim FechaNacimiento = dict(0).FechaNacimiento.ToString
            Dim FechaIngreso = dict(0).FechaIngreso.ToString
            Dim IdEstado = dict(0).IdEstado.ToString

            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.Agregar(Nombre, Apellido, IdPais, IdProvincia, IdCiudad, Direccion, CodPostal, FechaNacimiento, FechaIngreso, IdEstado)

            Dim data = New With {
                Key .Status = "200"
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try
    End Function

    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ClientesModificar(ByVal cadena As String) As String
        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of ClienteWS))("[" & cadena & "]")

            Dim IdCliente = dict(0).IdCliente.ToString
            Dim Nombre = dict(0).Nombre.ToString
            Dim Apellido = dict(0).Apellido.ToString
            Dim IdPais = dict(0).IdPais.ToString
            Dim IdProvincia = dict(0).IdProvincia.ToString
            Dim IdCiudad = dict(0).IdCiudad.ToString
            Dim Direccion = dict(0).Direccion.ToString
            Dim CodPostal = dict(0).CodPostal.ToString
            Dim FechaNacimiento = dict(0).FechaNacimiento.ToString
            Dim FechaIngreso = dict(0).FechaIngreso.ToString
            Dim IdEstado = dict(0).IdEstado.ToString

            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.Modificar(IdCliente, Nombre, Apellido, IdPais, IdProvincia, IdCiudad, Direccion, CodPostal, FechaNacimiento, FechaIngreso, IdEstado)

            Dim data = New With {
                Key .Status = "200"
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try
    End Function

    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ClientesEliminar(ByVal cadena As String) As String
        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of ClienteWS))("[" & cadena & "]")

            Dim IdCliente = dict(0).IdCliente.ToString

            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.Eliminar(IdCliente)

            Dim data = New With {
                Key .Status = "200"
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try
    End Function
    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function ContactosTipoBuscarTodo() As String
        Try
            Dim oDs As New DataSet

            Dim oobjeto As New Cliente

            oDs = oobjeto.BuscarTodos
            Dim IdTabla As Integer = 0

            Dim e As ContactoTiposWS() = New ContactoTiposWS(oDs.Tables(IdTabla).Rows.Count - 1) {}

            For i = 0 To oDs.Tables(IdTabla).Rows.Count - 1
                e(i) = New ContactoTiposWS With {
                    .IdContactoTipo = oDs.Tables(IdTabla).Rows(i).Item("IdContactoTipo").ToString(),
                    .Nombre = oDs.Tables(IdTabla).Rows(i).Item("Nombre").ToString(),
                    .Imagen = oDs.Tables(IdTabla).Rows(i).Item("Imagen").ToString(),
                    .Activo = oDs.Tables(IdTabla).Rows(i).Item("Activo").ToString()
                }
            Next

            Dim data = New With {
                Key .Status = "200",
                Key .Data = e
            }

            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Dim jsondatos = New JavaScriptSerializer().Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)
        Catch ex As Exception
            Return Error401()
        End Try
    End Function

    Public Shared Function Error401()
        Dim data = New With {
                         Key .Status = "401"
                     }
        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)

        Return New JavaScriptSerializer().Serialize(data)
    End Function

End Class