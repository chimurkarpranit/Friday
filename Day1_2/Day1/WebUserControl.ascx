<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="Day1.WebUserControl" %>

<table>
	<tr>
	  <td><asp:Button ID="UpButton" runat="server" Text="Up" style="margin-right:10px" Width="50px" OnClick="UpButton_Click" /></td>
	  <td><asp:Button ID="DownButton" runat="server" Text="Down" Width="50px" OnClick="DownButton_Click" /></td>
	</tr>
</table>