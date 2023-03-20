<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="PUB_Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" 
        style="height: 700px; background-image: url('img/donation2.jpg'); width: 1262px;" 
        class="container">
        <asp:Panel ID="Panel1" runat="server">
       
      <table  style="height:650px; margin-right:0px inherit; margin-left:440px; "
        cellpadding="5" cellspacing="5">
        <tr>
        <td><h1 align = "center"><b>
        <u style="text-decoration: underline; color: #000000; font-size: larger; font-weight: bolder;">DONATION</u></b></h1></td>
        </tr>
   
    <tr> 
      <td class="style1"> 
         <label class="control-label" style="font-size: large; color: #000000; font-weight: bold;">Donation For</label>
      </td>
      <td class="style1">
        <asp:DropDownList ID="ddldonate" runat="server" CssClass="form-control">
            <asp:ListItem>--select--</asp:ListItem>
            <asp:ListItem Value="T">Temple</asp:ListItem>
            <asp:ListItem Value="O">Others</asp:ListItem>
        </asp:DropDownList>
      </td>
  
    </tr>
    <tr>
      <td class="style1">
         <label class="control-label" style="font-size: large; color:  #000000; font-weight: bold;">Name<span style="color:red;float:right">*</span></label>
      </td>
      <td class="style1">
        <asp:TextBox ID="txtdname" runat="server" placeholder="Enter Name" CssClass="form-control" ></asp:TextBox>
        </td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtdname" ErrorMessage="Enter name" ValidationGroup="s"></asp:RequiredFieldValidator>
      </td>
    </tr>

    <tr>
      <td class="style1">
         <label class="control-label" style="font-size: large; color: #000000; font-weight: bold;">Mobile No.<span style="color:red;float:right">*</span></label>
      </td><td class="style1">
        <asp:TextBox ID="txtdmob" runat="server" MaxLength="10" placeholder="Enter Contact No." CssClass="form-control" ></asp:TextBox>
        </td>
        <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtdmob" ErrorMessage="Enter mobile number" 
            ValidationGroup="s"></asp:RequiredFieldValidator>
         </td></tr>

    <tr>
      <td class="style1">
        <label class="control-label" 
              style="font-size: large; color: #000000; font-weight: bold;">Email ID<span style="color:red;float:right">*</span></label>
      </td>
      <td class="style1">
        <asp:TextBox ID="txtdmail" runat="server" placeholder="Enter EmailID" CssClass="form-control" ></asp:TextBox>
      </td>
      <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtdmail" ErrorMessage="Enter email id" ValidationGroup="s"></asp:RequiredFieldValidator>
      </td>
    </tr>

    <tr>
       <td class="style1"> 
         <label class="control-label" style="font-size: large; color:  #000000; font-weight: bold;">Address<span style="color:red;float:right">*</span></label>
       </td>
       <td class="style1">
        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" placeholder="Enter Address" CssClass="form-control"></asp:TextBox>
       </td>
       <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
               ErrorMessage="Enter Address" ControlToValidate="txtadd" 
               ValidationGroup="s"></asp:RequiredFieldValidator>
       </td>
       </tr>

    <tr><td> <label class="control-label" style="font-size: large; color:#000000; font-weight: bold;">Amount<span style="color:red;float:right">*</span></label>
    </td><td class="style1">
      <asp:TextBox ID="txtdamt" runat="server" ForeColor="#CC0000" TextMode="Number" placeholder="Enter Amount You Want To Donate" CssClass="form-control" ></asp:TextBox>
      </td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtdamt" ErrorMessage="This is required for donation" 
            ValidationGroup="s"></asp:RequiredFieldValidator>
       </td></tr>
    
   <tr><td> <label class="control-label" style="font-size: large; color:#000000; font-weight: bold;">Purpose of Donation<span style="color:red;float:right">*</span></label></td><td class="style1">
       <asp:TextBox ID="txtpod" runat="server" TextMode="MultiLine" placeholder="Enter Purpose For Donation" CssClass="form-control" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Enter Purpose Of donation" ControlToValidate="txtpod" 
                ValidationGroup="s"></asp:RequiredFieldValidator></td></tr>

    <tr><td colspan="2" align="center">
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
             ShowMessageBox="True" ShowSummary="False" ValidationGroup="s" />
         <asp:LinkButton ID="lnkbtndonate" runat="server" ValidationGroup="s"  
             CssClass="btn btn-general btn-white" BackColor="Black" BorderColor="Black" 
             onclick="lnkbtndonate_Click">DONATE</asp:LinkButton>
        </td></tr>

    <tr><td colspan="2" align="center">
         <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td></tr>
   </table>
  
    </asp:Panel>
    </div>
   </asp:Content>

