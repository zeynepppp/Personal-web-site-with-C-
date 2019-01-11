<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="Kurumsal.Hakkimda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
 

<!-- FAQ start
  ================================================== -->

<section class="mainContent blog" >
<div class="container">
 <hr class="vertical-space2">
<div class="row">


<!-- Article  starts
  ==================== -->
  
<section class="col-md-9 col-lg-9 col-sm-8 col-xs-12 ElementAccordion" id="accordion">
<div class="container">

<article class="blog-post row">




<h3>Hakkımda..</h3>
<br>
    <asp:Repeater ID="rpt_hakkımda" runat="server">
        <ItemTemplate>

<p><%#Eval("hakkimdaIcerik") %> </p>
        </ItemTemplate>
    </asp:Repeater>


<p>
<a class="magicmore" href="Iletisim.aspx">İletişim bilgileri..</a>
<br class="clear">

</p>


    <asp:Repeater ID="rpt_skill" runat="server"><ItemTemplate>
 <hr class="vertical-space1">
<!-- Question #1 -->
<span class="acc-trigger active"><a href="#"><%#Eval("skillBaslik") %></a></span>
<div class="acc-container">
<div class="content">
<p><%#Eval("skillYazi") %></p>

</div>
</div> 
    </ItemTemplate></asp:Repeater>

 

 
      <!-- end- accordion -->

 <hr class="vertical-space2">


</article>


<div class="vertical-space3"></div>
</div>
</section>
<!-- Article ends
  ==================== -->


<!-- Aside  starts
  ==================== -->
<aside class="col-md-3 col-lg-3 col-sm-4 col-xs-12 sidebar">

<!-- BLOG ASIDE STARTS -->

<div class="box categories clearfix"><h4 class="subtitle">Categories</h4>

<ul class="list-group">
<li class="list-group-item"><a href="#">Company</a></li>
<li class="list-group-item"><a href="#">News</a></li>
<li class="list-group-item"><a href="#">Services</a></li>
<li class="list-group-item"><a href="#">Others</a></li>
</ul>
</div>



<div class="box archive clearfix"><h4 class="subtitle">Archives</h4>
<ul class="list-group">
<li class="list-group-item"><a href="#">May 2012 (2)</a></li>
<li class="list-group-item"><a href="#">April 2012 (3)</a></li>
<li class="list-group-item"><a href="#">March 2012 (5)</a></li>
<li class="list-group-item"><a href="#">February 2012 (1) </a></li>
</ul></div>



 



<hr class="vertical-space2">
</aside>
<!-- Aside ends
  ==================== -->

</div>

</div>

</section>


<!-- FAQ end
  ================================================== -->
</asp:Content>
