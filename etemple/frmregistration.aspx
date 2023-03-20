<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="frmregistration.aspx.cs" Inherits="PUB_frmregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script language="javascript" type="text/javascript">
    </script>
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   align="center" style="height: 767px; background-image: url('img/login7.jpg'); width: 1262px;" class="container"> 
      <asp:Panel ID="Panel1" runat="server" >
         <table align="center" style=" width: 900px; height: 767px;" cellpadding="5" cellspacing="5">
   <tr>
   <td >
     <h1 align = "center"><b style="color: #000000">
        <u style="color: #000000; font-size: larger; font-weight: bolder; text-decoration: underline">REGISTRATION</u></b></h1>
        </td>
   </tr>
    <tr> 
      <td >
          <label class="control-label" 
              style="font-size: large; color: #000000; font-weight: bold;">Name<span style="color:red;float:right">*</span></label>
      </td>
      <td >
          <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" 
              CssClass="form-control" Height="39px" Width="377px" ></asp:TextBox>
      </td>
      <td> 
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="User Name is required" ControlToValidate="txtname" 
           ForeColor="White" style="text-align: left" ValidationGroup="s"></asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
       <td>
            <label class="control-label" 
                style="font-size: large; color: #000000; font-weight: bold;">Email ID<span style="color:red;float:right">*</span></label>
       </td>
       <td>
           <asp:TextBox ID="txtmail" runat="server" TextMode="Email" 
               placeholder="Enter Email-ID" CssClass="form-control" Height="39px" Width="377px"></asp:TextBox>
       </td> 
       <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
               ControlToValidate="txtmail" ErrorMessage="Enter EmailID" ForeColor="White"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr>
        
       <td>
           <label class="control-label" 
               style="font-size: large; color: #000000; font-weight: bold;">Mobile No.<span style="color:red;float:right">*</span></label>
       </td>
       <td>
          <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" MaxLength="10" 
               placeholder="Enter Mobile No." CssClass="form-control" Height="39px" Width="377px"></asp:TextBox>
       </td> 
       <td> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage=" Enter contact no" ControlToValidate="txtphone" 
            ForeColor="White" style="text-align: left" ValidationGroup="s"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr> 
      <td>
          <label class="control-label" 
              style="font-size: large; color: #000000; font-weight: bold;">Gender<span style="color:red;float:right">*</span></label>
      </td>
      <td>
          <asp:DropDownList ID="ddlgen" runat="server" CssClass="form-control" 
              Width="377px">
              <asp:ListItem Selected="True">--select--</asp:ListItem>
              <asp:ListItem Value="M">Male</asp:ListItem>
              <asp:ListItem Value="F">Female</asp:ListItem>
              <asp:ListItem Value="T">Transgender</asp:ListItem>
          </asp:DropDownList>
     </td> 
    </tr>
    <tr>
       <td>
           <label class="control-label" 
               style="font-size: large; color: #000000; font-weight: bold;">Address<span style="color:red;float:right">*</span></label>
       </td>
       <td>
          <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" 
               placeholder="Enter Address" CssClass="form-control" Width="377px"></asp:TextBox>
       </td> 
       <td> 
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
           ControlToValidate="txtadd" ErrorMessage="Address is required" 
           ForeColor="White" style="text-align: left" ValidationGroup="s"></asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td> 
         <label class="control-label" 
              style="font-size: large; color: #000000; font-weight: bold;">Password<span style="color:red;float:right">*</span></label>
      </td>
       <td>
          <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" 
               placeholder="Enter Password" CssClass="form-control" Height="39px" Width="377px"></asp:TextBox>
       </td> 
       <td> 
            <asp:RequiredFieldValidator 
              ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="Password is required" ForeColor="White" 
              ControlToValidate="txtpwd" ValidationGroup="s"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr> 
       <td>
         <label class="control-label" 
               style="font-size: large; color: #000000; font-weight: bold;">Confirm Password<span style="color:red;float:right">*</span></label>
       </td>
       <td>
          <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" 
               placeholder="Enter Password" CssClass="form-control" Height="39px" Width="377px"></asp:TextBox>
       </td> 
       <td> 
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="txtcpwd" ErrorMessage="Both password must be same" 
            ForeColor="White" ControlToCompare="txtpwd" ValidationGroup="s"></asp:CompareValidator>
       </td> 
    </tr>
    <tr> 
       <td colspan="3">
           <asp:ValidationSummary ID="ValidationSummary3" runat="server" 
               ShowMessageBox="True" ShowSummary="False" ValidationGroup="s" />
       </td>
    </tr>
    <tr>
      <td class="style1" colspan="2" align="center">
        <asp:LinkButton ID="lnkRegister" runat="server" onclick="lnkRegister_Click" CssClass="btn btn-geranel btn-white"
        ValidationGroup="s" BackColor="Black" BorderColor="Black">Register</asp:LinkButton>
        <asp:LinkButton ID="lnkReset" runat="server" onclick="lnkReset_Click" 
        CssClass="btn btn-geranel btn-white" BackColor="Black" BorderColor="Black">Reset</asp:LinkButton>
        <asp:Label ID="lblmsg" 
        runat="server" ForeColor="Blue" Font-Bold="True"></asp:Label>
       </td>
   </tr>
</table>
 </asp:Panel>
</div>

</asp:Content>

