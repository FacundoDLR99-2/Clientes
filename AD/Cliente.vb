Imports Microsoft.Practices.EnterpriseLibrary.Data

Public Class Cliente

    Dim o_Database As Database
    Public Sub New()
        o_Database = DatabaseFactory.CreateDatabase("Conn")
    End Sub
    Public Function BuscarTodos() As DataSet
        Return o_Database.ExecuteDataSet("ClientesBuscarTodos")
    End Function
    Public Function BuscarPorId(ByVal IdCliente As String) As DataSet
        Return o_Database.ExecuteDataSet("ClientesBuscarPorId", IdCliente)
    End Function
    Public Function Agregar(ByVal Nombre As String, ByVal Apellido As String, ByVal IdPais As Integer, ByVal IdProvincia As Integer, ByVal IdCiudad As Integer, ByVal Direccion As String, ByVal CodPostal As String, ByVal FechaNacimiento As DateTime, ByVal FechaIngreso As DateTime, ByVal IdEstado As Integer) As DataSet
        o_Database.ExecuteDataSet("ClientesAgregar", Nombre, Apellido, IdPais, IdProvincia, IdCiudad, Direccion, CodPostal, FechaNacimiento, FechaIngreso, IdEstado)
        Return Nothing
    End Function
    Public Function Modificar(ByVal IdCliente As Integer, ByVal Nombre As String, ByVal Apellido As String, ByVal IdPais As Integer, ByVal IdProvincia As Integer, ByVal IdCiudad As Integer, ByVal Direccion As String, ByVal CodPostal As String, ByVal FechaNacimiento As DateTime, ByVal FechaIngreso As DateTime, ByVal IdEstado As Integer) As DataSet
        o_Database.ExecuteDataSet("ClientesModificar", Nombre, Apellido, IdPais, IdProvincia, IdCiudad, Direccion, CodPostal, FechaNacimiento, FechaIngreso, IdEstado)
        Return Nothing
    End Function
    Public Function Eliminar(ByVal IdCliente As Integer) As DataSet
        o_Database.ExecuteDataSet("ClientesEliminar", IdCliente)
        Return Nothing
    End Function
End Class

