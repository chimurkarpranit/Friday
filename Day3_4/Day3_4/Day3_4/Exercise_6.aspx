<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exercise_6.aspx.cs" Inherits="Day3_4.Exercise_6" %>
<%@ OutputCache Duration="60" VaryByParam="None" VaryByControl="DLforEmployee" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise 6</title>
    <style type="text/css">
        .Center
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
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Center">
    <table>
        <tr>
        <td>
            <asp:DropDownList ID="DLforEmployee" runat="server" Height="25px" Width="100px" AppendDataBoundItems="True">
                <asp:ListItem Value="0">---SELECT---</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="ButtonDetails" runat="server" Text="Details" Width="100px" onclick="ButtonDetails_Click" />
        </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" Width="573px">
                    <Columns>
                            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" />
                    </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>        
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
