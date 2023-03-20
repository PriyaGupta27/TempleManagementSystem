<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ListofPooja.aspx.cs" Inherits="ListofPooja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>

th
{
    background-color:#014275;
    color:#FFF;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
  <div style="padding:50px; background-image: url('img/gallery/red.jpg'); width: 1262px;" 
        class="container">
  <h3> List Of Pooja</h3>
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table-responsive table"
            DataKeyNames="pujaid,pujatype,pujaprice">
        <Columns>
        <asp:TemplateField   HeaderText="SL.">
        <ItemTemplate>
        <%#Container.DataItemIndex+1 %>
        
        </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="pujatype" HeaderText="Name" />
         <asp:BoundField DataField="pujaprice" HeaderText="Price" />
         <asp:TemplateField>
         <ItemTemplate>
             <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Book Now</asp:LinkButton>
         </ItemTemplate>
         </asp:TemplateField>
        </Columns>
        </asp:GridView>
          </div>


</asp:Content>

