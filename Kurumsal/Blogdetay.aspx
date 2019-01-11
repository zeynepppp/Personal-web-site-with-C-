<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blogdetay.aspx.cs" Inherits="Kurumsal.Blogdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="mainContent blogSection SinglePost" >
<div class="container">
 <hr class="vertical-space2">
<div class="row">

<!-- Article  starts
  ==================== -->
<section class="col-md-9 col-lg-9 col-sm-8 col-xs-12">
<article class="blog-post row single">


      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 

<div class="blogMetaData">

    <asp:Repeater ID="rpt_blogdetay" runat="server">
        <ItemTemplate>
       
         
      on <span class="PostDate"><%# Eval("blogEklenmeTarihi","{0:dd MMMM yyyy}") %></span>
      
      </div>

<div class="blogPostImage">      
      <img src="<%# Eval("blogFotoUrl") %> " alt="" class="postPic">
  
</div>
        
    




      
      <h1><%# Eval("blogBaslik") %></h1>



      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 postContent"> 
      
          <blockquote><em><%# Eval("blogOzet") %>  </em> </blockquote>

              <p> <%# Eval("blogIcerik") %></p>  
      </div>

</ItemTemplate>
    </asp:Repeater>
    
      
 <hr class="vertical-space2">






<!-- COMMENTS -->

<div class="commentbox">
        <h4 class="comments-title"><strong>Yorum yapın..</strong> </h4>
       <div id="disqus_thread"></div>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://zk-com.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                            

      </div>

 

      <!-- COMMENTS ENDS -->







</div>

</article>



<div class="vertical-space3"></div>
</section>
<!-- Article ends
  ==================== -->


<!-- Aside  starts
  ==================== -->
<aside class="col-md-3 col-lg-3 col-sm-4 col-xs-12 sidebar">

 
 


<!-- Sidebar Text widget  starts
  ==================== -->
 
<!-- Sidebar Text widget  ends
  ==================== -->


 

<!-- Popular posts  start
  ==================== -->
<div class="box popPosts clearfix"><h4 class="subtitle">Son Yazılar</h4>
<ul class="">

    <asp:Repeater ID="rpt_lastposts" runat="server">
        <ItemTemplate>

<li class=""><a href="Blogdetay.aspx?blogId=<%#Eval("blogId") %>"><img src="<%#Eval("blogFotoUrl") %>"><div class="popPostDetails"><p><%#Eval("blogOzet") %> </p> <span class="dateAndComments"><%#Eval("blogEklenmeTarihi") %></span></div></a></li>
 

        </ItemTemplate>

    </asp:Repeater>


</ul></div>
<!-- Popular posts end
  ==================== -->


<hr class="vertical-space2"> 

</aside>
<!-- Aside ends
  ==================== -->

</div>



</div>

</section>
</asp:Content>
