Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim connAuthenticate As New SqlConnection
        connAuthenticate.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("GradesCentralConnectionString").ConnectionString
        connAuthenticate.Open()
        Dim strSQL As String = "SELECT * FROM Students WHERE Username = '" & tbUsername.Text & "' and Password = '" & tbPassword.Text & "'"
        Dim drAuthenticate As SqlDataReader
        Dim cmdAuthenticate As New SqlCommand(strSQL, connAuthenticate)
        drAuthenticate = cmdAuthenticate.ExecuteReader()
        If drAuthenticate.Read() Then
            lblLogin.Text = "Welcome! "
            sqlDSGradesUser.SelectCommand = "SELECT * FROM Grades WHERE StudentID = " & drAuthenticate.Item("StudentID")
            sqlDSGradesUser.DataBind()
            gvGradesUser.DataBind()
            sqlDSStudentsAll.SelectCommand = "SELECT * FROM Students"
            gvStudentsAll.DataBind()
            sqlDSGradesAll.SelectCommand = "SELECT * FROM Grades"
            gvGradesAll.DataBind()
            gvGradesUser.Visible = True
            gvStudentsAll.Visible = True
            gvGradesAll.Visible = True
            lblGradesUser.Visible = True
            lblStudentsAll.Visible = True
            lblGradesAll.Visible = True
            lblSQLStatement.Visible = True
            lblSQL.Text = strSQL
        Else
            lblLogin.Text = "Invalid credential."
        End If
    End Sub

    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReset.Click
        tbUsername.Text = ""
        tbPassword.Text = ""
        lblLogin.Text = ""
        lblSQL.Text = ""
        gvGradesUser.Visible = False
        gvStudentsAll.Visible = False
        gvGradesAll.Visible = False
        lblGradesUser.Visible = False
        lblStudentsAll.Visible = False
        lblGradesAll.Visible = False
        lblSQLStatement.Visible = False
    End Sub
End Class
