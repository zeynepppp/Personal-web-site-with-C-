<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Kurumsal.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        
  <!-- Portfolio Start
  ================================================== -->  
  
  <section class="clearfix full-width PortfolioSection">
   <hr class="vertical-space2">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 portfolioItems" id="">

<div class="container">



<div class="portfolio">

 

      
    <asp:Repeater ID="rpt_blog" runat="server">
        <ItemTemplate>
<!-- end-portfolio-item-->
      <figure class="portfolio-item   col-lg-4 col-sm-6 col-md-6 col-xs-12  graphic web motionphotography ">
        <div class="img-item"> <img src="<%# Eval("blogFotoUrl") %>" alt=""> </div>
        <figcaption><h4><a href="portfolio-item.html"><%# Eval("blogBaslik") %></a> </h4>
        <p><%# Eval("blogEklenmeTarihi","{0:dd MMMM yyyy}") %> - <a href="#"></a> <a href="#"></a></p></figcaption>
        <span class="ff"> <a href="<%# Eval("blogFotoUrl") %>" class="prettyPhoto" ><i class="icomoon-zoom-in-2 "></i></a></span>
        <span class="ll"><a href="Blogdetay.aspx?blogId=<%#Eval("blogId") %>"> <i class="icomoon-link"></i></a></span>
      </figure>
      <!-- end-portfolio-item-->

        </ItemTemplate>
    </asp:Repeater>
      
      
  
</div>


    <script src="isotope/isotope.js"></script>
    <script src="isotope/isotope-custom.js"></script>
    <script src="js/jquery.prettyPhoto.js" ></script>
	</div>
</div>





<hr class="vertical-space2">




</section>



<!-- Portfolio End
  ================================================== -->

</asp:Content>
