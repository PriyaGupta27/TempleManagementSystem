<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/contact.css"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--====================================================
                       HOME-P
======================================================-->
    <div id="home-p" class="home-p pages-head4 text-center" style="background-image: url('img/gallery/contact.jpg')">
    </div> 

<!--====================================================
                        CONTACT-P1  
======================================================--> 
    <section id="contact-p1" class="contact-p1">
      <div class="container">
        <div class="row"style="background-color: #FF9933">
          <div class="col-md-12" >
            <div class="contact-p1-cont">
            <br />
              <h3>संपर्क करें</h3>
              <div class="heading-border-light"></div>             
            </div>
          </div>

          <div class="col-md-4"> 
            <div class="contact-p1-cont2"> 
              <address class="address-details-f">
              <h4><b>शक्ति पीठ दक्षिण जंघा बड़ी पटनदेवी जन्मस्थल गरहा मंदिर</b></h4>
               <br />
                पटना सिटी के समीप, <br />
                पिन -800001<br />
                <br />
                मोबाइल /व्हाट्सप्प - 435608766
               
              </address>

            </div>

          </div>

          .
        </div>
      </div>
    </section>

<!--====================================================
                        CONTACT-P2 
======================================================--> 
    <service class="contact-p2" id="contact-p2">
      <div class="container">
          <div class="row con-form" style="background-color: #FF9933">
          <br /><br />
            <div class="col-md-4">          
              <asp:TextBox ID="txtname" runat="server" placeholder="Full Name" CssClass="form-control"></asp:TextBox>
            </div>
            <br /><br />
            <div class="col-md-4">        
               <asp:TextBox ID="txtemail" runat="server" placeholder="Email Id" CssClass="form-control"></asp:TextBox>
            </div>
            <br /><br />
            <div class="col-md-4">
             <asp:TextBox ID="txtno" runat="server" placeholder="Mobile Number" CssClass="form-control" MaxLength="10" ></asp:TextBox>
            </div>
            <div class="col-md-12">  <asp:TextBox ID="txtmsg" runat="server" placeholder="Enter Message" CssClass="form-control" TextMode="MultiLine" Height="150"></asp:TextBox></div>
             <div class="col-md-12 sub-but"> <asp:LinkButton ID="lnkbtnsend" runat="server" onclick="lnkbtnsend_click" CssClass="btn btn-general btn-white"
         BackColor="Black" BorderColor="Black">SEND</asp:LinkButton></div>
              <asp:Label ID="lblmsg" runat="server"></asp:Label>
          </div>
      </div>
    </service>

<!--====================================================
                       MAP
======================================================--> 
   <%-- <section id="contact-add">
      <div id="map">
        <div class="map-responsive">
           <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d115162.15218449412!2d84.9592479656897!3d25.57774592874191!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d25.5683954!2d85.0752916!4m5!1s0x39ed55829f823765%3A0x73cf8c6e24c57104!2smaulANA%20AZAD%20COLLEGE%20of%20engineering%20%26%20technology%20neora%20patna%20google%20map!3m2!1d25.5873103!2d84.98212339999999!5e0!3m2!1sen!2sin!4v1577772134204!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
      </div> 
    </section>--%>
</asp:Content>

