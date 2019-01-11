<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kurumsal.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Navigation ends
  ================================================== -->



    <!-- Slider start
  ================================================== -->

    <section id="hero" class="tbg1">
        <div id="layerslider-container-fw">
            <div id="layerslider" style="width: 100%; height: 530px; margin: 0px auto;">

                <asp:Repeater ID="rpt_slider" runat="server">
                    <ItemTemplate>


                <div class="ls-layer" style="slidedirection: top; slidedelay: 6000; durationin: 1500; durationout: 1500; delayout: 500;">

                    <img src="<%#Eval("fotoUrl")%>" class="ls-bg" alt="">

                    <h3 class="ls-s3 l1-s1" style="position: absolute; top: 350px; left: 50%; border-color: #fff; color: #fff; slidedirection: top; slideoutdirection: left; durationin: 3000; durationout: 750; easingin: easeInOutQuint; easingout: easeInBack; delayin: 600;"><%#Eval("sliderBaslik")%></h3>
                    <h1 class="ls-s3" style="position: absolute; top: 400px; color: #fff; text-align: center; left: 50%; slidedirection: bottom; slideoutdirection: top; durationin: 3000; durationout: 750; easingin: easeInOutQuint; easingout: easeInBack; delayin: 500;"><%#Eval("sliderYazi")%></h1>
                </div>

</ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>

    <!-- Slider end
  ================================================== -->



    <!-- Service thumbnail start
  ================================================== -->

    <section class="mainContent iconbox3c ">
        <hr class="vertical-space2">
        <div class="container">


            <div class="row">
    <asp:Repeater ID="kolon" runat="server">
        <ItemTemplate>

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
 <div class="thumbnail ">
                        <span class="img-circle homeThumbnailCircle"> 
                               <i class="<%#Eval("kategoriIcon")%>"></i>
                        </span>
                        
                        <div class="caption">
                            <h3><%#Eval("kategoriBaslik") %><h3>
                            <p>acıklama</p>
                            <p><a href="Blog.aspx?kategoriBaslik=<%#Eval("kategoriBaslik")%>" class="btn btn-primary"><i class=" icomoon-arrow-right-2  "></i>Read more</a></p>
                        </div>
                    </div>
                </div>
</ItemTemplate>
    </asp:Repeater>

            </div>
        </div>
        <hr class="vertical-space2">
    </section>


    <!-- Service thumbnail end
  ================================================== -->



    <!-- Portfolio Start
  ================================================== -->

    <section class="clearfix full-width  HomePortfolioSection">
        <hr class="vertical-space3">


        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 sectionTitle container">
            <h2>Portfolio</h2>
        </div>




        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 portfolioItems" id="">
            <!-- masonry -->
            <div class="container">

                <div class="portfolio">

<asp:Repeater ID="rpt_galeri" runat="server">
    <ItemTemplate>

<figure class="portfolio-item   col-lg-4 col-sm-6 col-md-4 col-xs-12  graphic web photography ">
                        <div class="img-item">
                            <img src=<%#Eval("blogFotoUrl")%> alt="">
                            <span class="zoomex2">
                                <h6><%#Eval("blogBaslik")%><br>
                                    <small><%#Eval("blogEklenmeTarihi","{0:dd MMMM yyyy}")%></small></h6>
                                <a href='<%#Eval("blogFotoUrl")%>' class="prettyPhoto zoomlink1"><i class="icomoon-newspaper"></i></a><a href="Blogdetay.aspx?blogId=<%#Eval("blogId") %>" class="zoomlink2"><i class="icomoon-arrow-right-5"></i></a></span>
                        </div>
                    </figure>

    </ItemTemplate>
</asp:Repeater> 
 
                </div>


                <script src="isotope/isotope.js"></script>
                <script src="isotope/isotope-custom.js"></script>
                <script src="js/jquery.prettyPhoto.js"></script>




                <hr class="vertical-space4">
            </div>
        </div>
    </section>

    <!-- Portfolio End
  ================================================== -->


    <!-- Our Process Start
  ================================================== -->

    <hr class="vertical-space1">
    <section class="our-pros-sec">

        <h1>Süreç Nasıl İşliyor..</h1>
        <div class="our-pros">
            <div class="our-pros-item">
                <div class="our-pros-img">
                    <img src="images/regularfkr.png" alt="">
                </div>
                <h4>Fikir..</h4>
            </div>
            <div class="our-pros-item">
                <div class="our-pros-img">
                    <img src="images/regular.jpg" alt="">
                </div>
                <h4>Plan..</h4>
            </div>
            <div class="our-pros-item item3pros">
                <div class="our-pros-img">
                    <img src="images/regularo.png" alt="">
                </div>
                <h4>Oluşturma..</h4>
            </div>
            <div class="our-pros-item big-pros">
                <div class="our-pros-img">
                    <img src="images/regularo2.png" alt="">
                </div>
                <h4>Hedefe ulaşım.</h4>
            </div>
        </div>
    </section>
    <hr class="vertical-space2">
    <!-- Our Process Start
  ================================================== -->





    <!-- MOBILE READY Starts
  ================================================== -->
    <section class="mainContent W-col8col4">



        <div class="container">
            <hr class="vertical-space2">



            <asp:Repeater ID="altYazi" runat="server">
                <ItemTemplate>

                    <div class="row">

                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 ">
                            <br>
                            <h1><%#Eval("altYaziBaslik")%> </h1>
                            <h3><%#Eval("altYaziAciklama")%> </h3>

                            <p><%#Eval("altYaziIcerik")%> </p>
                            <br>
                        </div>

                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">

                            <div class="W-col4-img">
                                <img src="<%#Eval("altYaziResimUrl")%>"></div>
                        </div>


                    </div>


                </ItemTemplate>
            </asp:Repeater>


        </div>

        <hr class="vertical-space2">
    </section>




    <!-- MOBILE READY Ends
  ================================================== -->


    <!-- Home Connect Starts
  ================================================== -->

    <section class="clearfix homeConnet full-width lightBlue">
        <hr class="vertical-space3">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 sectionTitle container">
            <h2>Sosyal Medya</h2>



            <asp:Repeater ID="rpt_sosyal" runat="server">
                <ItemTemplate>
  <div class="socialfollow">

      <a class="facebook" href='<%#Eval("genelSiteFacebook")%>'><i class="icomoon-facebook Three-Dee"></i></a> 
      <a class="twitter" href='<%#Eval("genelSiteTwitter")%>'><i class="icomoon-twitter Three-Dee"></i></a>
      <a class="youtube" href='<%#Eval("genelSiteYoutube")%>'><i class="icomoon-youtube Three-Dee"></i></a></div>
    
  
        </div>
  </ItemTemplate>
            </asp:Repeater>

           
          

        <hr class="vertical-space3">
    </section>



    <!-- homeConnet Ends
  ================================================== -->



    <!-- Blog Starts
  ================================================== -->

    <section class="mainContent full-width HomeBlogLatestPosts">

        <div class="container">

            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 sectionTitle">

                    <hr class="vertical-space3">
                    <div class="aligncenter">
                        <h1 class="mex-title">Son Eklenenler.. </h1>
                    </div>

                    <hr class="vertical-space1">
                </div>
            </div>

            <div class="row">

                <asp:Repeater ID="rpt_soneklenen" runat="server">
                    <ItemTemplate>

<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <a href="#">
                        <img src="<%#Eval("blogFotoUrl") %>" alt=""></a>
                    <h5><a href="#"><%#Eval("blogBaslik") %></a></h5>
                    <p><%#Eval("blogOzet") %> </p>
                    <p class="LatestPostDate"><%#Eval("blogEklenmeTarihi") %> </p>
                </article>
                    </ItemTemplate>
                </asp:Repeater>

                
                

                <script src="js/jquery.flexslider-min.js" defer=""></script>
            </div>
        </div>
    </section>




    <!-- Blog Ends
  ================================================== -->







</asp:Content>
