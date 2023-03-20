<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlayVideo.aspx.cs" Inherits="PlayVideo" MasterPageFile="~/MainSiteMaster.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<title></title>
        <link href="../SWDDesignData/Content/Css/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <link href="../SWDDesignData/Content/Css/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../SWDDesignData/Content/Css/css/morris.css" type="text/css" />
    <link href="../SWDDesignData/Content/Css/css/font-awesome.css" rel="stylesheet" />
    <script src="../SWDDesignData/Content/Css/js/jquery-2.1.4.min.js" type="text/javascript"></script> 
     <style type="text/css">
        .blue > li.gal > a {
            background: #0a2b38;
            color: #14427d;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
 <div class="grid-form">
        <div class="grid-form1">
            <div class="panel-body panel-footer">
                <div role="form" class="form-horizontal">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Repeater ID="rpImage" runat="server" OnItemDataBound="rpImage_ItemDataBound">
                                <ItemTemplate>
                                    <div class="col-md-4 text-center" style="float:left">
                                    <asp:Label ID="lbl_Position_id" runat="server" Text='<%#Eval("FileName") %>' CssClass="btn btn-primary btn-sm" Width="100%"></asp:Label>
                                    <asp:Literal ID="Literal5" runat="server" Text='<%#Bind("Otherdesc") %>'></asp:Literal>
                                        <asp:HiddenField ID="hdId" runat="server" Value='<%#Eval("id") %>' />
                                        <asp:HiddenField ID="hdSrc" runat="server" Value='<%#Eval("FileUrl") %>' />
                                        <asp:HiddenField ID="hdIsVdoLnk" runat="server" Value='<%#Eval("VideoLink") %>' />
                                        <asp:Panel ID="pnlRptrVdoLnk" runat="server" Visible="false">                                      
                                        <iframe id="ifvideo" runat="server" width="100%" height="280" frameborder="0" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"></iframe>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlRptrVdoUpld" runat="server" Visible="true">    
                                        <video width="100%" height="280" id="video" runat="server" controls>
                                            <source id="videoSrc" runat="server"  type="video/mp4"/>
                                        </video>
                                        </asp:Panel>                                       
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br /><br />
    </div>
</asp:Content>
