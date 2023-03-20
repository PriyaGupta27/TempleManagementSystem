<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/team.css" rel="stylesheet" type="text/css" />
    <link href="css/testimonials.css" rel="stylesheet" type="text/css" />
    
    <script>

        $(function () {
            $('marquee').mouseover(function () {
                $(this).attr('scrollamount', 0);
            }).mouseout(function () {
                $(this).attr('scrollamount', 5);
            });
        });
    </script>
    <style>
   .carousel-caption
    {
        background-color:#FFF;
        border-radius: 15px 0px;
            opacity: 0.9;
    }
    h5
    {
        font-weight:900;
        font-size:35px;
    }
    h5 p 
    {
        font-weight:900;
    }
    
        .style1
        {
            width: 217px;
        }
        .style2
        {
            width: 134px;
        }
    
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--====================================================
                         HOME
======================================================-->
 <section id="home">
        
             
 <table align="center">
 
 <tr><td class="style1">
  <asp:Image ID="Image1" runat="server" ImageUrl="~/img/gallery/home.jpg" ></asp:Image></td>
  <td>
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/firstlabel.jpg" class="d-block w-100" alt="...">
    </div>
   
    <div class="carousel-item">
      <img src="img/secondlabel.JPG" class="d-block w-100" alt="...">
    </div>
    
     <div class="carousel-item">
      <img src="img/thirdlabel.JPG" class="d-block w-100" alt="...">
    </div>
    
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
   
   </div>
      </td>
      </tr>
    </table>
   </section> 

<!--====================================================
                        ABOUT
======================================================-->
    <section id="about" class="about">
      <div class="container">
        <div class="row title-bar">
        <div class="col-md-12"><br />
            <h2 class="wow fadeInUp" style="color: #800000; font-weight: bolder;" 
                align="center">मागधे वहा जंघा में व्योमकेशस्तु<br />
सर्वानन्दकरी देवी सर्वानन्द फलप्रदा॥</h2><br />

         <div> <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();"> 
         <br /><h3> प्रिय भक्तगण !पटनदेवी गरहा मंदिर में आपका 
स्वागत है | </h3></marquee></div>
   
      <div class="container">
        <div class="row">
          <div class="col-md-12 desc-comp-offer">
            <h2 style="color: #CC3300; text-decoration: underline; font-weight: 900;" 
                  align="left">About Temple</h2>
            <div class="heading-border-light"></div> 
          </div>
        </div>  
        <div class="row">  
          <div class="col-md-4 col-sm-6 ">
            <div class="team-p2-cont wow fadeInLeft" data-wow-delay="0.2s">
               <img src="img/imgtree12.jpg" class="img-fluid" alt="...">
               <h5>Historical Tree</h5>
               
              </div>
          </div>
          <div class="col-md-4 col-sm-6 ">
            <div class="team-p2-cont wow fadeInUp" data-wow-delay="0.4s">
               <img src="img/aboutimg1.jpeg" class="img-fluid" alt="...">
               <h5>Central Point</h5>
               
              </div>
          </div>
          <div class="col-md-4 col-sm-6 ">
            <div class="team-p2-cont wow fadeInRight" data-wow-delay="0.6s">
               <img src="img/aboutimg.jpg" class="img-fluid" alt="...">
               <h5>Pooja</h5>
               
              </div>
          </div> 
        </div>
      </div>
    </section>
      <div style="background:#eeeeee6b;padding:1%">
      <div class="container">
        <div class="row"> 
          <div class="col-md-6">
            <div class="about-content-box wow fadeInUp" data-wow-delay="0.3s">
                          
                   
                        <h2 class="title title-red" 
                            
                            style="background-image: url('img/new/panel.jpg'); background-color: #FFCC99; background-repeat: no-repeat; color: #000000;">                  
                            <i class="fa fa-list" aria-hidden="true"></i> आगामी त्यौहार 
                            </h2>
                             <div class="panel-box" 
                            style="background-image: url('img/new/backgrnd.jpg')">
                        <div class="panel-ribbon">
                            <div class="ribbon-heading">
                                <div class="check-title" 
                                    
                                    style="font-size: large; color: #000000; font-style: normal; background-image: url('img/new/panel1.jpg');">
                                  &nbsp;<marquee onmouseover="this.stop();" onmouseout="this.start();" direction="up">
                                    <li >27th अप्रैल - चैत्र पूर्णिमा </li><br />
                                    <li>26th मई - बुद्ध पूर्णिमा </li> <br />
                                    <li>10th जून - वट सावित्री व्रत </li><br />
                                    <li>24th जुलाई - गुरु पूर्णिमा </li><br />
                                    <li>11th अगस्त - तीज </li><br />
                                    <li>13th अगस्त - नाग पंचमी </li></marquee></div>
                            </div>
                        </div>
                        
                    </div>

            </div>
          </div> 
          <div class="col-md-6 col-xs-12"> <div class="about-content-box wow fadeInUp" data-wow-delay="0.3s">
            <div style="background-image: url('img/new/backgrnd.jpg')">
                            <h2 class="title title-bg" 
                                                
                                style="background-color:#FFCC99; background-image: url('img/new/panel.jpg'); background-repeat: no-repeat; color: #000000;">                  
                           <i class="fa fa-newspaper-o" aria-hidden="true"></i>दैनिक कार्यक्रम 
                            </h2>

                            <div class="panel-box " 
                                style="background-image: url('img/new/backgrnd.jpg')">
                         <div class="ribbon-heading">
                             <div class="check-title" 
                                    
                                 style="font-size: large; color: #000000; font-style: normal; background-image: url('img/new/panel1.jpg');">
                                      <marquee onmouseover="this.stop();" onmouseout="this.start();" direction="up" style="max-height:295px">
                                    <li >मंदिर का पट खुलने का समय  -  प्रतिदिन 05:00 मध्याह्नपूर्व </li><br />
                                    <li>सुबह का आरती  - प्रतिदिन 05:00 मध्याह्नपूर्व </li> <br />
                                    <li>भोग आरती -प्रतिदिन11:00  मध्याह्नपूर्व </li><br />
                                    <li>अपराह्न आर्ट - प्रतिदिन 04:00 मध्याह्न के बाद </li><br />
                                    <li>संध्या आरती -प्रतिदिन 07:30 मध्याह्न के बाद</li><br />
                                    <li>शयन - प्रतिदिन 10:30 मध्याह्न के बाद </li><br />
                                    <li>दरिद्रनारायण भोग - प्रतिदिन 02:00 मध्याह्न के बाद</li><br />
                                    <li>ध्यान दे :-संध्या आर्ट - प्रतिदिन 07:30 मध्याह्न के बाद<br /> अश्विन पूर्णिमा से फाल्गुन पूर्णिमा तक और प्रतिदिन 08:00<br /> मध्याह्न के बाद फाल्गुन पूर्णिमा से अश्विन पूर्णिमा तक</li></marquee>
                                    </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div> 
      </div> 
      </div>      
    </section> 
    
    <div>
     <table>
     <tr><td><iframe width="700" height="380" src="https://www.youtube.com/embed/_ZaAsphu7S8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="margin-left: 100px"></iframe></td>
     <td>  
     <div align="center" class="col-md-12" style="width: 500px; height: 380px; margin-left: 350px;">
            <div class="heading-border"></div><br /><br />
            <p class="wow fadeInUp justify-content-around" data-wow-delay="0.4s" 
                    style="color: #000000; font-size: 20px;">बिहार की राजधानी पटना में स्थित पटन देवी मंदिर शक्ति उपासना का प्रमुख केंद्र माना जाता है. देवी भागवत और तंत्र चूड़ामणि के अनुसार, सती की दाहिनी जांघ यहीं गिरी थी| नवरात्र के दौरान यहां काफी भीड़ उमड़ती है| सती के 51 शक्तिपीठों में प्रमुख इस उपासना स्थल में माता की तीन स्वरूपों वाली प्रतिमाएं विराजित हैं|<br /> पटन देवी भी दो हैं- छोटी पटन देवी और बड़ी पटन देवी दोनों के अलग-अलग मंदिर हैं|

    पटना की नगर रक्षिका भगवती पटनेश्वरी हैं जो छोटी पटन देवी के नाम से भी जानी जाती हैं| <br />यहां मंदिर परिसर में मां महाकाली,महालक्ष्मी और महासरस्वती की स्वर्णाभूषणों, छत्र व चंवर के साथ विद्यमान हैं|</p>
         <asp:LinkButton ID="LinkButton1" runat="server" 
                CssClass="btn btn-general btn-white"  BackColor="Black" BorderColor="Black" 
                onclick="LinkButton1_Click">READ MORE</asp:LinkButton>
          </div></td> 
        </div>
        </tr></table>
      </tr>
      </table>
</div>
    </div>
</div>
    </div>
</div>
</asp:Content>
