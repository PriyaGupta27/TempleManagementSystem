<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="poojaentry.aspx.cs" Inherits="ADM_pujalist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<h1 align="center">Pooja Entry</h1>
<table align="center" cellspacing="5" cellpadding="5">
<tr>
<td>Pooja Name:</td><td><asp:TextBox ID="txtpujaname" runat="server"></asp:TextBox></td>
</tr>
<td>Pooja price:</td><td><asp:TextBox ID="txtpujaprice" runat="server"></asp:TextBox></td>
    <tr>
<td colspan="2" align="center">
    <asp:Button ID="btnsub" runat="server" Text="SUBMIT" onclick="Button1_Click" Width="100px" />
        </td>
    </tr>
    <tr>
<td colspan="2" align="center">
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table></div>
</asp:Content>

