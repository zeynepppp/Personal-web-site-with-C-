<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Kurumsal.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<meta charset="utf-8">
	<title> Contact  </title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

  <!-- CSS & google font
  ================================================== -->
    
    
    <link rel="stylesheet" type="text/css" href="css/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,300|Roboto+Slab:400,300' rel='stylesheet' type='text/css'>


	<!-- Favicons
  ================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">

    <!-- js
  ================================================== -->

	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/mgmenu_plugins.js"></script>
	<script src="js/mgmenu.min.js"></script>
	<script src="js/modernizr.js"></script>

    
   <!-- js IE8 Hack
  ================================================== -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.js"></script>
    <![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>


     
    
<!-- H1 Header starts
  ================================================== -->  
  
<section class="h1Header">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 sectionTitle">
<div class="container">    
<h1>İletişim ..</h1>

    <ul class="breadcrumbs">
     <li><a href="index.html">Anasayfa</a> </li>
    <li><a href="contact.html">İletişim</a></li>
    </ul>

</div>
</div>          
</section>
  
<!-- H1 Header ends
  ================================================== -->
    
  <!-- Google map Start
  ================================================== -->
   

<section class="mainContent googleMap">
 

          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 map google-map-canvas">

          
 
     <iframe width="100%" height="350px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d32329.56704272923!2d28.787128538956686!3d41.10599558198988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caaf103429c379%3A0x28489d012b24b942!2zQmHFn2FrIE1haGFsbGVzaSwgMzQ0ODAgQmHFn2FrxZ9laGlyL8Swc3RhbmJ1bA!5e1!3m2!1str!2str!4v1540723781374"></iframe>



         </div>

</section>
  


<!-- Google map End
  ================================================== -->



<!-- contact Start
  ================================================== -->    
  
<section class="mainContent contactDetails">
          <div class="container">
          <hr class="vertical-space1">
			<div class="row">

 <!-- Contact details  start
  ==================== -->     
<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 contactInfo">

<h4>İletişim Bilgileri</h4>
    <asp:Repeater ID="rpt_Iletisim" runat="server">
        <ItemTemplate>
<ul class="list-group">
<li class="list-group-item address"><span class="contactItemIcon"><i class="icomoon-location-5"></i></span>Adress:<%#Eval("genelSiteAdres") %></li>
<li class="list-group-item phone"><span class="contactItemIcon"><i class="icomoon-phone-4"></i></span>Telefon:<%#Eval("genelSiteTelefon") %></li>
 
<li class="list-group-item email"><span class="contactItemIcon"><i class="icomoon-envelop"></i></span>Email: <%#Eval("genelSiteEmail") %></li>
 
</ul>
        </ItemTemplate>
    </asp:Repeater>



<hr class="vertical-space2">
</div>
<!-- Contact details end
  ==================== -->

<!-- Contact form  start
  ==================== -->
<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 contactForm">

<h4>İletişim Formu</h4>



<p>Buradan iletişime geçebilirsiniz dönüşler email adresinize yapılacaktır..</p>


<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
<form role="form "> 

<div class="form-inline row">

<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
<span class="formInputName">Ad:</span>
<input type="Name" placeholder="Name" class="form-control">
</div>

<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
<span class="formInputName">Email:</span>
<input type="email" placeholder="Email"  class="form-control">
</div>


</div>

<div class="row">
<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
<span class="formInputName">Website:</span>
<input type="Website" placeholder="Website" class="form-control">
</div>

<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
<span class="formInputName">Mesaj:</span>
<textarea placeholder="Message" rows="3" class="form-control" ></textarea>
</div>

<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
<button class="btn btn-default pull-left " type="submit">Gönder</button>
<button class="btn btn-default pull-left reset " type="submit">Temizle</button>
</div>

</div>

</form>
</div>

</div>


<hr class="vertical-space2">
                   </div>

<!-- Contact form end
  ==================== -->

                   </div>
          </div>

<hr class="vertical-space2">
</section>
  

<!-- contact End
  ================================================== -->



    
    <!-- Back to top  starts
  ==================== --> 

      <span id="scroll-top"><a class="scrollup"><i class="icomoon-arrow-up"></i></a></span>
      
   <!-- Back to top  ends
  ==================== -->  
    
    
<!-- js
  ================================================== -->
  <script src="js/jquery.jcarousel.min.js"></script>
  <script src="js/netstudio.js"></script><script src="js/doubletaptogo.js"></script>
  <script src="js/bootstrap.min.js"></script>  
 <script src="js/jquery.prettyPhoto.js" ></script>




 </body>
</asp:Content>
