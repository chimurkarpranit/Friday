<%@ Page Title="WebUserControl" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day1._Default" %>
<%@ Register TagPrefix="UControl" TagName="Counter" src="WebUserControl.ascx"  %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Counter</title>
    <style type="text/css">
        div.forcounter
        {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
        }
        .auto-style1
        {
            margin-left: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="forcounter">
      <h2 style="width:100%; text-align:center">User Control for Counter</h2>
       <table>
        <tr><td><asp:Label ID="counter" runat="server" Text="<h3>Counter</h3>"/></td>
            <td><asp:TextBox ID="textCounter" runat="server" style="margin-right:40px" CssClass="auto-style1" Width="56px"/></td>
            <td><UControl:Counter CounterClicks="0" ID="UserCounter" runat="server"></UControl:Counter></td>
        </tr>
       </table>
    </div>
    </form>
</body>
</html>
