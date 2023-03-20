<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="LiveDrashan.aspx.cs" Inherits="LiveDrashan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div align="center" 
        style="height: 700px; width: 1262px; background-color: #FFFFFF;" 
        class="container">
        <br /><br />
        <h1 align="left">Live Darshan</h1>
      <asp:Panel ID="Panel1" runat="server" BorderColor="Black">

       <iframe width="800" height="500" src="https://www.youtube.com/embed/O3JFX8Ty1As" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
     </asp:Panel>
    
     </div>
</asp:Content>


