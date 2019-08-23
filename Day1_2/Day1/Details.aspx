<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Day1.Details" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 33%;
            height: 470px;
            margin-bottom:0px;
        }
        .auto-style2 {
            width: 66%;
            height: 470px;
            margin-bottom:0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <iframe src="Frame1.aspx" style="width:100%;">
                <p>Your browser does not support iframes.</p>
            </iframe>
            <iframe src="Frame2.aspx" class="auto-style1">
                <p>Your browser does not support iframes.</p>
            </iframe>
            <iframe name="FrameThree" class="auto-style2">
                <p>Your browser does not support iframes.</p>
            </iframe>
        </div>
    </form>
</body>
</html>