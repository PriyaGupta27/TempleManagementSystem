<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bookinghistory.aspx.cs" Inherits="USER_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
  <h1>HISTORY</h1>
      <asp:Panel ID="Panel1" runat="server">
       <table>
       
       <tr>
       
       <td>
       
       
           <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
               BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
               CellSpacing="2" GridLines="Both" RepeatColumns="3" 
               RepeatDirection="Horizontal" Width="1084px">
               <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
               <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
               <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
               <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
               <ItemTemplate>
               
              Booking Date.:  <%#Eval("bookingdate")%><br />
              Arrival Times.:  <%#Eval("arrivaltime")%><br />
              pujatype.:  <%#Eval("pujatype")%><br />
              pujaprice.:  <%#Eval("pujaprice")%><br />
              bookedon.:  <%#Eval("bookedon")%><br />
               </ItemTemplate>
           </asp:DataList>
       </td>
       </tr>
       </table> 
    </asp:Panel>
</div>
</asp:Content>

