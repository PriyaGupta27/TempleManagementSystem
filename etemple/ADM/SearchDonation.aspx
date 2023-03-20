<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchDonation.aspx.cs" Inherits="ADM_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>DONATION DETAILS</h2>
    <div align="center">
    <asp:Panel ID="Panel1" runat="server">
    <table align="center" cellspacing="10" cellpadding="10" height="300px" 
            width="121px">
    <tr>
    <td style="color: #000000; font-size: 20px;">FROM:</td>
     
            <td>
                <asp:TextBox ID="txtsdfrom" runat="server" CssClass="form-control" 
                    TextMode="Date"></asp:TextBox>
            </td>
      
    </tr>
        <tr>
            <td style="color: #000000; font-size: 20px;">
                TO:</td>
            <td>
                <asp:TextBox ID="txtsdto" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnsd" runat="server" Text="FIND" Width="100px" />
            </td>
        </tr>
        </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="X-Large">

                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL.">
                            <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Donationfor" HeaderText="DonationFor" />
                        <asp:BoundField DataField="Donationdate" HeaderText="Donation Date " />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
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

