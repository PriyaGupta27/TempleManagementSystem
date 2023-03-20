<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
   <div align="center" style=" background-repeat:no-repeat; background-image: url('img/gallery/patrika.jpg'); 
        width: 720px; height: 677px;" class="container">
       
        <h1 style="margin-right: 160px">
          <b>
            <u style="font-size: larger; font-weight: 900; text-decoration: underline; color: #000000;">LOGIN</u>
          </b>
        </h1>
   
      <asp:Panel ID="Panel1" runat="server" >
            
              <table align="center"  cellpadding="5" cellspacing="5" style="height: 430px">
                   <tr>
                        <td style="color: #FF0000; font-size: x-large; font-family: 'Times New Roman', Times, serif;" 
                               align="left" colspan="2">Login Here<i class="fa fa-hand-o-down"></i>
                        </td>
                   </tr>
                   <tr> 
                           <td>
                               <label class="control-label" 
                                   style="font-size: large; color: #000000; font-weight: bold;">
                               User ID<span style="color:red;float:right">*</span></label>
                           </td>
                           <td>
                               <asp:TextBox ID="txtuser" runat="server" CssClass="form-control" 
                                   placeholder="Enter User ID" TextMode="Email"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   BorderColor="Maroon" ControlToValidate="txtuser" ErrorMessage="Enter User ID" 
                                   ForeColor="Red" ValidationGroup="s"></asp:RequiredFieldValidator>
                           </td>
                     
                   </tr>
                   <tr>
                         <td>
                             <label class="control-label" 
                                   style="font-size: large; color: #000000; font-weight: bold;">
                               Password<span style="color:red;float:right">*</span></label>
                         </td>
                         <td>
                              <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                         </td>
                         <td>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtpass" ErrorMessage="Enter Password" ForeColor="Red" 
                                 ValidationGroup="s"></asp:RequiredFieldValidator>
                        </td>
                  </tr>
                  <tr>
                     <td colspan="2" align="center">
                         <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                             ShowMessageBox="True" ShowSummary="False" ValidationGroup="s" />
                       <asp:LinkButton ID="lnklogin" runat="server" onclick="LinkButton1_Click" 
                         CssClass="btn btn-geranel btn-white"
                         ValidationGroup="s" BackColor="Black" BorderColor="Black">LOGIN</asp:LinkButton>
    </td></tr>
<tr><td  align="center" id="linkpwd" style="color: #000000" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Don't have an account?"></asp:Label>
    <asp:HyperLink ID="linksign" runat="server" ForeColor="#0000CC" 
        NavigateUrl="~/frmregistration.aspx">Sign Up</asp:HyperLink>
    </td>
    </tr>
<tr><td  align="left" id="link2pwd" colspan="2">
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Black" ></asp:Label>
    </td>
    </tr>
            
    </table>
    </asp:Panel>
        
</div>
</asp:Content>

