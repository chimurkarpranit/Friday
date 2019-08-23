<%@ Page Title="Exercise 5" Language="C#" AutoEventWireup="true" CodeBehind="Exercise_5.aspx.cs" Inherits="Day3_4._Default" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise 5</title>
    <style type="text/css">
        .Ex5
        {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
        }
        td
        {
            text-align:justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class ="Ex5">
        <tr>
        <td>
            <asp:Label ID="LabelServer" runat="server" Text="<h3>Date and Time from server side :</h3>" ForeColor="#663300"></asp:Label>
        </td>
        <td><% Response.Write(DateTime.Now.ToString()); %></td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="LabelClient" runat="server" Text="<h3>Date and Time from client side :</h3>" ForeColor="#663300"></asp:Label> 
        </td>
        <td><script type="text/javascript">document.write(Date());</script></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>