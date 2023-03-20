<%@ Page Title="" Language="C#" MasterPageFile="~/MainSiteMaster.master" AutoEventWireup="true" CodeFile="photogallery.aspx.cs" Inherits="USER_photogallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/photogallery.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />

<style>
    .gallary
    {
    float:left;
    width:350px;
    padding:20px;
    margin:10px;
    height:300px;
    }
    .gallary img
    {
        padding:10px;
        height:100%;
        width:100%;
        overflow:scroll;
    }
    .gallary img:hover
    {
        filter: grayscale(100%);
        transform: scale(1.1);
    }    
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container" 
        
        style=" padding-top:20px; height: 1273px; width: 1262px; background-color: #000000;" 
        align="center">

<div id="gallary-base">
<div class="gallary">
<a target="black" href="img/gallery/img1.JPG">
<img src="img/gallery/img1.JPG" alt="forest" 
width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img2.JPG">
<img src="img/gallery/img2.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img3.JPG">
<img src="img/gallery/img3.JPG" alt="forest"
  width="300" height="300"/>
  </a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img4.JPG">
<img src="img/gallery/copy.jpg" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img5.JPG">
<img src="img/gallery/img5.JPG"alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img6.JPG">
<img src="img/gallery/img6.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img7.JPG">
<img src="img/gallery/img7.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img8.JPG">
<img src="img/gallery/img8.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img9.JPG">
<img src="img/gallery/img9.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img10.JPG">
<img src="img/gallery/img10.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img11.JPG">
<img src="img/gallery/img11.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
<div class="gallary">
<a target="black" href="img/gallery/img12.JPG">
<img src="img/gallery/img12.JPG" alt="forest"
  width="300" height="300"/>
</a>
</div>
</div>
</div>
</asp:Content>

