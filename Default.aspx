<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GradeCentral</title>
    <style type="text/css">
        body {
	        background-color: #eee;
	        color: #333;
	        font-family: 'Open Sans', sans-serif;
	        font-size: 12px;
        }

        #wrap {
	        background-color: #fff;
	        margin: 0 auto;
	        box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
	        max-width: 1000px; /* remove this for wide layout */
        }

        #wrap > header {
	        background-color: #00512B;
	        padding-bottom: 10px;
        }

        .inner {
	        margin: 0 auto;
	        max-width: 970px;
	        padding: 0px;
        }

        .double-sidebar .sidebar {
	        float: left;
	        width: 300px;
            padding: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
	        overflow: hidden;
	        font-size: 12px;
	        line-height: 18px;
	        color: #000;   
        }

        .double-sidebar .main {
	        box-sizing: border-box;
	        -moz-box-sizing: border-box;
	        -webkit-box-sizing: border-box;
	        padding: 0 10px;
	        float: left;
	        width: 370px;
        }

        .sidebar {
	        box-sizing: border-box;
	        -moz-box-sizing: border-box;
	        -webkit-box-sizing: border-box;
        }

        .sidebar span {
	        font-size: 16px;
            font-weight: bold; 
            margin-top: 0px;
            margin-bottom: 10px;
        }

        .textroundbox {
            border: 1px solid #ddd;
            width: 95%;
            padding: 10px;
            margin-top: 0px;
            margin-bottom: 0px;
	        overflow: hidden;
	        font-size: 14px;
	        line-height: 18px;
	        color: #000;
            background: rgb(247,247,247); /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */
            background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSI1NyUiIHN0b3AtY29sb3I9IiNmN2Y3ZjciIHN0b3Atb3BhY2l0eT0iMSIvPgogICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjZWRlZGVkIiBzdG9wLW9wYWNpdHk9IjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxIiBoZWlnaHQ9IjEiIGZpbGw9InVybCgjZ3JhZC11Y2dnLWdlbmVyYXRlZCkiIC8+Cjwvc3ZnPg==);
            background: -moz-linear-gradient(top, rgb(247,247,247) 57%, rgb(237,237,237) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(57%,rgb(247,247,247)), color-stop(100%,rgb(237,237,237))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, rgb(247,247,247) 57%,rgb(237,237,237) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, rgb(247,247,247) 57%,rgb(237,237,237) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, rgb(247,247,247) 57%,rgb(237,237,237) 100%); /* IE10+ */
            background: linear-gradient(to bottom, rgb(247,247,247) 57%,rgb(237,237,237) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f7f7f7', endColorstr='#ededed',GradientType=0 );
            text-align: left;
            border-radius: 10px 10px 0px 0px; -moz-border-radius: 10px 10px 0px 0px; -webkit-border-radius: 10px 10px 0px 0px;
        }    
        
        .textroundbox h3 {
	        font-size: 16px;
            font-weight: bold; 	
            margin-top: 0px;
        }
        
        .main span {
	        font-size: 16px;
            font-weight: bold; 
            margin-top: 0px;
            margin-bottom: 10px;
        }        
     
        table.table {
	        width: 100%;
        }

        table.table th {
	        background-color: #cccccc;
	        color: #000000;
	        border: 1px solid #eee;
	        font-size: 14px;
	        padding: 5px;
	        text-align: left;
	        text-decoration: bold;
        }

        table.table td {
	        border: 1px solid #eee;
	        padding: 5px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
<div id="wrap">
	<header>
		<div class="inner relative">
			<a href="" style="font-family: tahoma; font-size: 28px; font-weight: bold; color: #ffffff; text-decoration: none;">Grades Central</a>
			<div class="clear"></div>
		</div>
	</header>
	<div id="content" class="double-sidebar">
		<div class="inner">
			<div class="sidebar">
                <asp:Label ID="lblGradesUser" runat="server" Text="Your grades:" Visible="false"></asp:Label>
                <asp:SqlDataSource ID="sqlDSGradesUser" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GradesCentralConnectionString %>"></asp:SqlDataSource>
			    <asp:Label ID="Label1" runat="server" Text="Here are your current grades:" Visible="False"></asp:Label>
			    <asp:GridView ID="gvGradesUser" runat="server" CellPadding="4" 
                    ForeColor="Black" DataSourceID="sqlDSGradesUser" 
                    GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    Font-Size="Small" CssClass="table">
			        <RowStyle HorizontalAlign="Center" />
			        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
			    </asp:GridView>  
			</div>
			<div class="main">
                <div class="textroundbox">
                    <h3>Please log in:</h3>
                    Username
					<asp:TextBox ID="tbUsername" runat="server" Width="150px"></asp:TextBox><br />
		            Password	                                  
					<asp:TextBox ID="tbPassword" runat="server" Width="150px"></asp:TextBox><br />
					<asp:Button ID="btnLogin" runat="server" Text="Login" />
					<asp:Button ID="btnReset" runat="server" Text="Reset" />
                    &nbsp;<asp:Label ID="lblLogin" runat="server" Text="" ForeColor="#CC3366"></asp:Label><br /><br />
 					Welcome to Grade Central. By using this system, you agree to the terms set forth in the Appropriate Use Policy. Please enter your Username and Password to access your grade.<br><br>If you have problems logging in, please call the Help Desk at 909-999-9999.
                    <br /><br />
                    <asp:Label ID="lblSQLStatement" runat="server" Text="SQL statement:" Visible="False" CssClass="main"></asp:Label><br /><br />
                    <asp:Label ID="lblSQL" runat="server" Text="" ForeColor="#CC3366"></asp:Label>
                </div> 
			</div>
			<div class="sidebar">
                <asp:Label ID="lblStudentsAll" runat="server" Text="All students:" Visible="false"></asp:Label>
                <asp:SqlDataSource ID="sqlDSStudentsAll" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GradesCentralConnectionString %>"></asp:SqlDataSource>
			    <asp:Label ID="Label2" runat="server" Text="Student List:" Visible="False"></asp:Label>
			    <asp:GridView ID="gvStudentsAll" runat="server" CellPadding="4" ForeColor="Black" DataSourceID="sqlDSStudentsAll"
                    GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    Font-Size="Small" CssClass="table">
			    <RowStyle HorizontalAlign="Center" />
			    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
			    </asp:GridView><br />
                <asp:Label ID="lblGradesAll" runat="server" Text="All grades:" Visible="false"></asp:Label>
                <asp:SqlDataSource ID="sqlDSGradesAll" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GradesCentralConnectionString %>"></asp:SqlDataSource>
			    <asp:Label ID="Label3" runat="server" Text="All Grades:" Visible="False"></asp:Label>
			    <asp:GridView ID="gvGradesAll" runat="server" CellPadding="4" ForeColor="Black" DataSourceID="sqlDSGradesAll"
                    GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    Font-Size="Small" CssClass="table">
			    <RowStyle HorizontalAlign="Center" />
			    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
			    </asp:GridView>                      
			</div>
		</div>
	</div>
</div>  
</form> 
</body>
</html>



