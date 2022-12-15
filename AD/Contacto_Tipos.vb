Imports Microsoft.Practices.EnterpriseLibrary.Data
Public Class Contacto_Tipos
    Dim o_Database As Database
    Public Sub New()
        o_Database = DatabaseFactory.CreateDatabase("Conn")
    End Sub
    Public Function ContactoTiposBuscarPorId(ByVal IdContactoTipo As Integer) As DataSet
        Return o_Database.ExecuteDataSet("ContactoTiposBuscarPorId", IdContactoTipo)
    End Function
    Public Function ContactoTiposBuscarTodos() As DataSet
        Return o_Database.ExecuteDataSet("ContactoTiposBuscarTodos")
    End Function
    Public Function ContactoTiposAgregar(ByVal Nombre As String, ByVal Imagen As String, ByVal Activo As Boolean) As DataSet
        o_Database.ExecuteDataSet("ContactoTiposAgregar", Nombre, Imagen, Activo)
        Return Nothing
    End Function

    Public Function ContactoTiposModificar(ByVal IdContactoTipo As Integer, ByVal Nombre As String, ByVal Imagen As String, ByVal Activo As Boolean) As DataSet
        o_Database.ExecuteDataSet("ContactoTiposModificar", IdContactoTipo, Nombre, Imagen, Activo)
        Return Nothing
    End Function

    Public Function ContactoTiposEliminar(ByVal IdContactoTipo As Integer) As DataSet
        o_Database.ExecuteDataSet("ContactoTiposEliminar", IdContactoTipo)
        Return Nothing
    End Function
End Class
