<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="ListofPooja.aspx.cs" Inherits="ListofPooja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 399px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div style="padding:50px;background-image: url('img/gallery/red.jpg'); width: 1262px;" 
        class="container" >
  
  <div align="center" ">
  <br />
  <h1 style="color: #FFFFFF; text-decoration: underline" class="wow fadeInUp" 
          data-wow-delay="0.1s" 
          style="font-weight: bolder; text-decoration: underline; font-size: xx-large"> LIST OF POOJA</h1>
  
  <div style="margin-bottom:20px; color:#fff;">  
  
  <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
  <br /> <h2 style="color:#fff">कृप्या श्रद्धालु अपना पूजन समाग्री स्वयं लेकर आए!</h2></marquee></div>
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="80%" 
            DataKeyNames="pujaid,pujatype,pujaprice"  ForeColor="White" 
          Font-Bold="True" Font-Size="X-Large">
        <Columns>
        <asp:TemplateField   HeaderText="SL." ItemStyle-HorizontalAlign="Center">
        <ItemTemplate>
        <%#Container.DataItemIndex+1 %>
        
        </ItemTemplate>

         
            <HeaderStyle HorizontalAlign="Center" />

<ItemStyle HorizontalAlign="Center"></ItemStyle>

         
        </asp:TemplateField>

        <asp:BoundField DataField="pujatype" HeaderText="Name" 
                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
<ItemStyle HorizontalAlign="Center"></ItemStyle>

            </asp:BoundField>
         <asp:BoundField DataField="pujaprice" HeaderText="Price" 
                ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
         <asp:TemplateField>
         <ItemStyle HorizontalAlign="Center"></ItemStyle>
         <ItemTemplate >
             <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Book Now</asp:LinkButton>
           
         </ItemTemplate>
         </asp:TemplateField>
          
        </Columns>
        <HeaderStyle Height="60" />
             <RowStyle   Height="60" />
        </asp:GridView>
          </div>


</div>

</asp:Content>

