<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div align="center" 
        style="background-image: url('img/gallery/om.jpg'); width: 1262px; height: 700px;" 
        class="container">
    <asp:Panel ID="Panel1" runat="server">
     <table  cellpadding="5" cellspacing="5" align="center" 
            style="width: 550px; height: 600px; margin-top: 0px">
            <tr>
            <td colspan="2"><h2 align="center" 
        
                    
                    style="font-family: Arial; font-size: 50px; font-weight: bold; color: #000000; text-decoration: underline;">
                FEEDBACK    
             
                </h2></td>
            </tr>
     <tr>
     <td style="font-weight: bold; font-size: xx-large; color:#000000; font-family: 'Times New Roman', Times, serif">
         Name
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtfname" ErrorMessage="Enter name" ForeColor="Red" 
             ValidationGroup="s">*</asp:RequiredFieldValidator>
     </td>
     <td>
         <asp:TextBox ID="txtfname" runat="server" placeholder="Enter Name" 
             CssClass="form-control"></asp:TextBox>
         </td></tr>
         <tr>
             <td style="font-weight: bold; font-size: xx-large; color:#000000; font-family: 'Times New Roman', Times, serif"  >
                 Mobile No.<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                     runat="server" ControlToValidate="txtfmob" ErrorMessage="Enter Mobile No." 
                     ForeColor="Red" ValidationGroup="s">*</asp:RequiredFieldValidator>
             </td>
             <td>
                 <asp:TextBox ID="txtfmob" runat="server" placeholder="Enter Mobile No." 
                     CssClass="form-control" MaxLength="10"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="font-weight: bold; font-size: xx-large; color:#000000; font-family: 'Times New Roman', Times, serif" >
                 Email ID
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ErrorMessage="Enter EmailID" Text="*" ValidationGroup="s" 
                     ControlToValidate="txtfemail" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            
             <td>
                 <asp:TextBox ID="txtfemail" runat="server" placeholder="Enter Email ID" 
                     CssClass="form-control" TextMode="Email"></asp:TextBox>
             </td>
             
         </tr>
         <tr>
             <td style="font-weight: bold; font-size: xx-large; color:#000000; font-family: 'Times New Roman', Times, serif">
                 Remarks<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="txtfremarks" ErrorMessage="Enter Remarks" ForeColor="Red" 
                     ValidationGroup="s">*</asp:RequiredFieldValidator>
             </td>
             <td>
                 <asp:TextBox ID="txtfremarks" runat="server" TextMode="MultiLine" 
                     placeholder="Enter Remarks" CssClass="form-control"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td colspan="2"  align="center">
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                     ValidationGroup="s" ShowMessageBox="True" ShowSummary="False" />
                 <asp:LinkButton ID="lnkbtnfeed" runat="server" ForeColor="White"
                     onclick="lnkbtnfeed_Click" CssClass="btn btn-geranel btn-white"
        ValidationGroup="s" BackColor="Black" BorderColor="Black">SUBMIT</asp:LinkButton>
             </td>
         </tr>
         <tr>
             <td colspan="2">
                 <asp:Label ID="lblmsg" runat="server"></asp:Label> &nbsp;&nbsp;&nbsp;
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/img/gallery/feedb.png" 
                     ImageAlign="Right" />
             </td>
         </tr>
     </table>
    </asp:Panel>
  
</div>
</asp:Content>

