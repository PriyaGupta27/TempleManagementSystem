<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchPriest.aspx.cs" Inherits="ADM_SearchPriest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>PRIEST DETAILS</h2>
    <div align="center">
      <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              Width="80%">
           <Columns>
             <asp:TemplateField   HeaderText="SL.">
              <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        
             </ItemTemplate>
             </asp:TemplateField>
                      <asp:BoundField DataField="Name" HeaderText="Name" />
                      <asp:BoundField DataField="Contactno" HeaderText="Mobile No." />
                       <asp:BoundField DataField="Emailid" HeaderText="Email ID" />
                      <asp:BoundField DataField="Address" HeaderText="Address" />
                      <asp:BoundField DataField="doj" HeaderText="Date Of Joining" />
                  </Columns>
        </asp:GridView>
      </asp:Panel>

</div>
</asp:Content>

