<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frame2.aspx.cs" Inherits="Day1.Frame2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frame2</title>
    <style type="text/css">
        div.Frame2
        {
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
        <div class="Frame2">            
            <table>
                <tr><td><a href="Employee.aspx" target="FrameThree"><input type="button" style="margin-bottom:100px; width:200px" value="Get Employee Details"/></a></td></tr>
                <tr><td><a href="Department.aspx" target="FrameThree"><input type="button" style="width:200px" value="Get Departments Details"/></a></td></tr>
            </table>
        </div>
    </form>
</body>
</html>