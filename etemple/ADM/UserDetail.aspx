<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserDetail.aspx.cs" Inherits="UserDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3> USER DETAILS</h3>
<div>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
            BorderWidth="1px" CellPadding="3" Font-Size="X-Large">
           <Columns>
               <asp:TemplateField   HeaderText="SL.">
                  <ItemTemplate>
                     <%#Container.DataItemIndex+1 %>
                  </ItemTemplate>
               </asp:TemplateField>
               <asp:BoundField DataField="Date" HeaderText="Date Of Registration" />
               <asp:BoundField DataField="Name" HeaderText="Name" />
               <asp:BoundField DataField="Emailid" HeaderText="Email ID" />
               <asp:BoundField DataField="Contactno" HeaderText="Mobile No." />
               <asp:BoundField DataField="Gender" HeaderText="Gender" />
               <asp:BoundField DataField="Address" HeaderText="Address" />
              
           </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </asp:Panel>
</div>
</asp:Content>

