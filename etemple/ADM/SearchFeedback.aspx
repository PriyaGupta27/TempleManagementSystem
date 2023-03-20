<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchFeedback.aspx.cs" Inherits="ADM_SearchFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>FEEDBACK</h2>
    <div align="center">
    <asp:Panel ID="Panel1" runat="server">
   
<table cellpadding="5" cellspacing="5" height="200px">
 <tr>
  <td style="font-size: 20px; color: #000000">FROM:</td><td>
      <asp:TextBox ID="txtfeedfrom" runat="server" TextMode="Date"></asp:TextBox>
     </td>
 </tr>
    <tr>  <td style="font-size: 20px; color: #000000">TO:</td><td>
          <asp:TextBox ID="txtfeedto" runat="server" TextMode="Date"></asp:TextBox></td>
 </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnfind" runat="server" Text="FIND" Width="100px" />
        </td>
    </tr>
   </table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" Font-Size="X-Large">

                <Columns>
                 <asp:TemplateField   HeaderText="SL.">
                        <ItemTemplate>
                          <%#Container.DataItemIndex+1 %>
        
                        </ItemTemplate>
                      </asp:TemplateField>
                    <asp:BoundField DataField="feedbackDate" HeaderText="feedbackDate" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
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

