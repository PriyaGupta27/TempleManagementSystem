<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmprint.aspx.cs" Inherits="PUB_frmprint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
       <h1>BILL</h1>
        <asp:Panel ID="Panel1" runat="server" Width="400px">
        <table width="100%" border="1">
            <tr>
                <td>
                    NAME</td>  <td>
                    <asp:Label ID="lblname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    BOOKING DATE&nbsp;</td>
                <td>
                    <asp:Label ID="lblbookdate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    ARRIVAL TIME</td>
                <td>
                    <asp:Label ID="lblarrtime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    POOJA NAME</td>
                <td>
                    <asp:Label ID="lblpoojaname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    PRICE</td>
                <td>
                    <asp:Label ID="lblprice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    BOOKED ON</td>
                <td>
                    <asp:Label ID="lblbookedon" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnprint" runat="server" Text="PRINT" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <h5>Important Notice: Contact us for further query...</h5>
   </div>
    </form>
</body>
</html>
