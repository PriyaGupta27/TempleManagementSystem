<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="priestDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .style3
        {
            width: 258px;
        }
        .style4
        {
            width: 171px;
        }
        .style6
        {
            height: 38px;
        }
        .style7
        {
            height: 23px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 align="center">PRIEST DETAILS</h1>
    <asp:Panel ID="Panel1" runat="server" Height="500px">
   
 <div>
    <table align="center" cellspacing="10" cellpadding="10" width="500px" 
         height="450px">
    <tr><td class="style7">Name </td><td class="style7">
        <asp:TextBox ID="txtname" runat="server" BorderColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Name" ValidationGroup="s" ControlToValidate="txtname" 
            ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style4">Phone</td><td class="style3">
        <asp:TextBox ID="txtmob" runat="server" TextMode="Phone" MaxLength="10" 
            BorderColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Contact no" ValidationGroup="s" 
            ControlToValidate="txtmob" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style4">Email-id</td><td class="style3">
        <asp:TextBox ID="txtmailid" runat="server" TextMode="Email" 
            BorderColor="Black" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtmailid" ErrorMessage="Email is required" ForeColor="Red" 
            ValidationGroup="s">*</asp:RequiredFieldValidator>
        </td></tr>
        <tr>
            <td class="style4">Address</td><td class="style3">
        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                BorderColor="Black"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtaddress" ErrorMessage="Enter Addresss" ForeColor="Red" 
            ValidationGroup="s">*</asp:RequiredFieldValidator>
        </td>
        </tr>
    <tr><td class="style4">Date Of Joining</td><td class="style3">
        <asp:TextBox ID="txtdoj" runat="server" TextMode="Date" BorderColor="Black" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtdoj" ErrorMessage="Enter date of joining" ForeColor="Red" 
            ValidationGroup="s">*</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td colspan="2">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ValidationGroup="s" />
        </td></tr>
    <tr><td colspan="2" align="center"> 
        <asp:Button ID="btnsub" runat="server" Text="SUBMIT" onclick="Button1_Click" 
            ValidationGroup="s" Width="100px" />
        </td></tr>
        <tr><td class="style4"> 
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td></tr>
    </table>
    </div>
     </asp:Panel>
</asp:Content>

