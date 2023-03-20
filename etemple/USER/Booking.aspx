<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="PUB_Booking" %>

<%@ Register assembly="RJS.Web.WebControl.PopCalendar" namespace="RJS.Web.WebControl" tagprefix="rjs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('../img/booking.jpg'); height:500px"> 
    <h1 align = "center"><b>
        <u style="text-decoration: underline; color: #000000; font-size: larger; font-weight: bolder;">BOOKING</u></b></h1>
    <br />
        
 <table align = "center" cellpadding="10" cellspacing="10">
  <tr>
    <td>
       <label class="control-label" style="font-size: large; color: #000000">Booking Date<span style="color:red;float:right">*</span></label>
    </td>
    <td>
        <asp:TextBox ID="txtbkingd" runat="server" placeholder="Enter Booking Date" CssClass="form-control" ></asp:TextBox>
    </td>
    <td>
     <rjs:PopCalendar ID="PopCalendar1" runat="server" Control="txtbkingd" 
         Format="dd mmm yyyy" From-Date="" From-Today="True" />
       
    </td>
    <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
       ErrorMessage="Enter Booking Date" ControlToValidate="txtbkingd" 
       ForeColor="#660033" ValidationGroup="s"></asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td>
         <label class="control-label" style="font-size: large; color: #000000">Arrival Time<span style="color:red;float:right">*</span></label>
    </td>
    <td>
        <asp:TextBox ID="txtarrival" runat="server" TextMode="Time" placeholder="Enter Arrival Time" CssClass="form-control" ></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ErrorMessage="Enter Arrrival Time" ControlToValidate="txtarrival" 
          ForeColor="#660033" ValidationGroup="s"></asp:RequiredFieldValidator>
          
    </td>
  </tr>
   <tr>
     <td>
        <label class="control-label" style="font-size: large; color: #000000">Pooja Name<span style="color:red;float:right">*</span></label>
     </td>
     <td>
        <asp:Label ID="lblPujatype" runat="server" CssClass="form-control"></asp:Label>
     </td>
   </tr>
    <tr>
      <td>
          <label class="control-label" style="font-size: large; color: #000000">Pooja Price<span style="color:red;float:right">*</span></label>
      </td>
      <td>
        <asp:Label ID="lblPrice" runat="server" CssClass="form-control"></asp:Label>
      </td>
    </tr>
    
    <tr><td colspan="2" align = "center">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" ValidationGroup="s" />
        <asp:Button ID="Button1" runat="server" Text="BOOK" ForeColor="Black" 
            ValidationGroup="S" onclick="Button1_Click" Width="100px" />
        </td></tr>
    
    <tr><td colspan="2" align = "center">
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
        </td></tr>
    </table>
    </div>
    </asp:Content>
    
