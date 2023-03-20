<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddVIdeo.aspx.cs" Inherits="Child_Admin_AddVIdeo" MasterPageFile="~/Site.master" ValidateRequest="false" %>

 
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
        <!--ALERT-->
        <input onclick="return AlertMessage()" type="button" value="Show" id="btnAlert" style="display: none;" />
        <input type="hidden" id="hdfAlertMessage" />
        <div class="wthree-typo" style="padding: 10px; display: none;" id="divAlert">
            <script>
                function AlertClick(message) { $("#btnAlert").click(); }
                function AlertMessage() {
                    $("#divAlert").show().fadeOut(5000);
                    return false;
                }
                function OnProgress(id) {
                    $("#" + id).val("...");
                }
            </script>
            <div class="grid_3 grid_5 w3ls" style="padding: 2px; margin: 0;">
                <div class="alert alert-danger" role="alert">
                    <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>  
    <div class="grid-form">

        <div class="grid-form1">
            <h4 class="breadcrumb-item"><a id="aTitle" runat="server">Add/View/Edit Video</a></h4>
            <div class="panel-body panel-footer">
                <div role="form" class="form-horizontal">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="form-group">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Select Video Title</label>
                                    <div class="col-md-9">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-gears"></i>
                                            </span>
                                            <asp:TextBox ID="txt_VideoTitle" runat="server" class="form-control1" 
                                                placeholder="Video Title" Width="800px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Enter Video desc</label>
                                    <div class="col-md-9">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-gears"></i>
                                            </span>
                                            <asp:TextBox ID="txtEventname" runat="server" class="form-control1" 
                                                placeholder="Video desc" Width="800px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:CheckBoxList ID="chkBxVdoLnk" runat="server" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" RepeatColumns="2" RepeatLayout="Table"
                                    onselectedindexchanged="chkBxVdoLnk_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Video Link&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" Value="0"></asp:ListItem>
                               <%-- <asp:ListItem Text="File Upload" Value="1"></asp:ListItem>--%>
                                </asp:CheckBoxList>
                            </div>
                           
                           <asp:Panel ID="pnlVideoLnk" runat="server" Visible="false">                           
                            <div class="form-group">
                                <label class="col-md-4 control-label">Video Link</label>
                                <div class="col-md-9">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-gears"></i>
                                        </span>
                                        <asp:TextBox ID="txt_VideoLink" runat="server" class="form-control1" 
                                            placeholder="Format -(https://www.youtube.com/embed/DOftQWOmO6s)" Width="960px"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                             </asp:Panel>
                             <asp:Panel ID="pnlFileUpld" runat="server" Visible="false">  
                              <label class="col-md-3 control-label">Video</label>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <asp:HiddenField ID="hd_image" runat="server" />
                                        <asp:FileUpload ID="FileUpload1" runat="server"  onchange="ShowImage(this, 'body_imgIcon')" />
                                        <script>
                                            function UploadMe() {
                                                $("#<%= FileUpload1.ClientID %>").click();
                                                if (input.files && input.files[0]) {
                                                    var reader = new FileReader();

                                                    reader.onload = function (e) {
                                                        $('#' + id).attr('src', e.target.result);
                                                    }
                                                    reader.readAsDataURL(input.files[0]);
                                                }
                                            }
                                        </script>
                                    </div>
                                </div>
                                </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
                    <asp:Button ID="btnSubmit" class="btn-primary btn" runat="server" Text="Submit" 
                        OnClick="btnSubmit_Click" Width="100px" />
                    <asp:HiddenField ID="hdfID" runat="server" Value="0" />
                </div>
            </div>
        </div>
    </div>

    <div class="grid-form">
        <div class="grid-form1">
            <h4 class="breadcrumb-item"><a id="a1" runat="server">View/Delete Video</a></h4>
            <div class="panel-body panel-footer">
                <div role="form" class="form-horizontal">
                    <div class="row">
                        <div class="col-md-12" >
                            <asp:Repeater ID="rpImage" runat="server" OnItemCommand="rpImage_ItemCommand" OnItemDataBound="rpImage_ItemDataBound">
                                <ItemTemplate>
                                    <div class="col-md-4 text-center" style="float:left; margin-bottom:15px;">
                                    <asp:Label ID="lbl_Position_id" runat="server" Text='<%#Eval("FileName") %>' style="min-height: 49px;" CssClass="btn-primary btn-sm"  Width="100%"></asp:Label>
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
                                        <asp:LinkButton ID="lnk_Del" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure want delete this video ?')" CssClass="btn btn-danger btn-sm" Style="margin-bottom: 20px">Delete</asp:LinkButton>
                                        <asp:LinkButton ID="lnk_Edit" runat="server" CommandName="Edit" CssClass="btn btn-danger btn-sm" Style="margin-bottom: 20px">Edit</asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
           </div>
           </div>
           </div>
           </div>  
     
</asp:Content>
