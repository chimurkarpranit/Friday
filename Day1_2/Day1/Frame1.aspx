<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frame1.aspx.cs" Inherits="Day1.Frame1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frame1</title>
    <style type="text/css">
        div.Frame1 {
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
        <div class="Frame1">
            <h1>User Control Example</h1>
        </div>
    </form>
</body>
</html>
