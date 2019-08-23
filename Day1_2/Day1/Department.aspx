<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="Day1.Department" %>
<%@ Register TagPrefix="GridControl" TagName="GridTag" src="TestControl1.ascx"  %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Details</title>
    <style type="text/css">
        div.Department {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Department">
            <asp:Button ID="ShowDepartment" runat="server" Width="200px" Text="Show Department Details"/><br />
            <GridControl:GridTag ID="GridViewEmployee" runat="server"></GridControl:GridTag>
        </div>
    </form>
</body>
</html>