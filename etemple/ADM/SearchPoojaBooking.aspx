<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchPoojaBooking.aspx.cs" Inherits="SearchPoojaBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>POOJA BOOKING DETAILS</h2>
    <div align="center">
  <asp:Panel ID="Panel1" runat="server">
  
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="X-Large">

          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:TemplateField HeaderText="SL.">
                  <ItemTemplate>
                      <%#Container.DataItemIndex+1 %>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="userid" HeaderText="UserID" />
              <asp:BoundField DataField="bookedon" HeaderText="Date" />
              <asp:BoundField DataField="bookingdate" HeaderText="Booking Date" />
              <asp:BoundField DataField="arrivaltime" HeaderText="Arrival Time" />
              <asp:BoundField DataField="pujatype" HeaderText="Pooja Name" />
              <asp:BoundField DataField="pujaprice" HeaderText="Pooja Price" />
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
  </asp:Panel>
</div>
</asp:Content>

