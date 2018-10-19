<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FactSheets.aspx.cs" Inherits="NoblePPWebsite.FactSheets" %>

<!DOCTYPE html>
<html >
<head>
        <style>
        .mydatagrid
        {
            width:80%;
            border: solid 2px black;
            min-width: 80%;
        }
        .header
        {
            background-color: #6a6a6a;
            font-family: Arial;
            color: white;
            height: 25px;
            text-align: center;
            font-size:16px;
        }

        .rows
        {
            background-color: #fff;
            font-family: Arial;
            font-size:14px;
            color:#000;
            min-height:25px;
            text-align:left;
        }
        .rows:hover
        {
            background-color: #fadd7a;
            color:#000;
        }
        .mydatagrid a
        {
            background-color: transparent;
            padding: 5px 5px 5px 5px;
            color:#fff;
            text-decoration: none;
            font-weight: bold;
        }
        .mydatagrid a:hover
        {
            background-color: #fff;
            color:#000;
        }
        .mydatagrid span
        {
            padding: 5px 5px 5px 5px;
            background-color: #000;
            color: #fff;
        }
        .pager
        {
            background-color: #fadd7a;
            font-family: Arial;
            color:white;
            height:30px;
            text-align: left;
        }
        .mydatagrid td
        {
            padding: 5px;
        }
        .mydatagrid th
        {
            padding:5px;
        }

    </style>
  <!-- Site made with Mobirise Website Builder v4.8.6, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.6, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/153969075049843784-1-110x128.png" type="image/x-icon">
  <meta name="description" content="Website Creator Description">
  <title>Fact Sheets</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
    <style>
      .leftallign{
          text-align:left;
          font-family: "Droid Serif";
      }
  </style>
</head>
<body>
    <form runat="server">
  <section id="menu-0" data-rv-view="274">

    <nav class="navbar navbar-dropdown transparent navbar-fixed-top bg-color">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="HomePage.aspx" class="navbar-logo"><img src="assets/images/153969075049843784-1-110x128.png" alt="Mobirise"></a>
                        <a class="navbar-caption" href="HomePage.aspx">Noble Private Portfolios</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-xl" id="exCollapsingNavbar"><li class="nav-item"><a class="nav-link link" href="HomePage.aspx">Home</a></li><li class="nav-item"><a class="nav-link link" href="AboutUs.aspx">About Us</a></li><li class="nav-item"><a class="nav-link link" href="MeetTheTeam.aspx">Meet The Team</a></li><li class="nav-item"><a class="nav-link link" href="Advice.aspx">Advice</a></li><li class="nav-item dropdown"><a class="nav-link link dropdown-toggle" href="MultiManagedUnitTrust.aspx" data-toggle="dropdown-submenu" aria-expanded="false">What We Offer</a><div class="dropdown-menu"><a class="dropdown-item" href="MultiManagedUnitTrust.aspx#header1-15">&nbsp; &nbsp; &nbsp; • Multi-Managed Unit<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Trust</a><a class="dropdown-item" href="CorporateSaverInvestments.aspx" aria-expanded="false">&nbsp; &nbsp; &nbsp; &nbsp;• Corporate Saver <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Investments</a><a class="dropdown-item" href="DirectSharePortfolios.aspx" aria-expanded="false">&nbsp; &nbsp; &nbsp; &nbsp;• Direct Share<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Portfolios</a><a class="dropdown-item" href="TaxFreeSavingsAccount.aspx" aria-expanded="false">&nbsp; &nbsp; &nbsp; • Tax-Free Savings <br>&nbsp; &nbsp; &nbsp; &nbsp; Account</a><a class="dropdown-item" href="UmbrellaFund.aspx" aria-expanded="false">&nbsp; &nbsp; &nbsp; • Umbrella Funds</a></div></li><li class="nav-item"><a class="nav-link link" href="RangeOfFunds.aspx" aria-expanded="false">Range of Funds</a></li><li class="nav-item"><a class="nav-link link" href="FactSheets.aspx" aria-expanded="false">Fact Sheets</a></li><li class="nav-item"><a class="nav-link link" href="Publications.aspx" aria-expanded="false">Publications</a></li><li class="nav-item"><a class="nav-link link" href="InvestmentTools.aspx" aria-expanded="false">Investment Tools</a></li><li class="nav-item"><a class="nav-link link" href="Events.aspx" aria-expanded="false">Events</a></li><li class="nav-item"><a class="nav-link link" href="UsefulLinks.aspx" aria-expanded="false">Useful Links</a></li><li class="nav-item"><a class="nav-link link" href="Downloads.aspx" aria-expanded="false">Downloads</a></li><li class="nav-item"><a class="nav-link link" href="ContactUs.aspx" aria-expanded="false">Contact Us</a></li></ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="engine"><a href="https://mobirise.info/q">responsive web templates</a></section><section class="mbr-section mbr-section-hero mbr-section-full mbr-section-with-arrow mbr-parallax-background mbr-after-navbar" id="header1-4g" data-rv-view="276" style="background-image: url(assets/images/document-3268750-1920-1920x1376.jpg);">

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(0, 0, 0);"></div>

    <div class="mbr-table-cell">

        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10 col-md-offset-1 text-xs-center">

                    <h1 class="mbr-section-title display-1">Fact Sheets</h1>
                    
                    
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating" aria-hidden="true"><a href="#header3-4h"><i class="mbr-arrow-icon"></i></a></div>

</section>

<section class="mbr-section mbr-section__container article" id="header3-4h" data-rv-view="279" style="background-color: rgb(45, 45, 45); padding-top: 20px; padding-bottom: 20px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2">Fact Sheets</h3>
                
            </div>
        </div>
    </div>
</section>
<section>
      <br />
      <p class="leftallign">Click on a Fact Sheet Name to start your Download!</p>
</section>

<section class="mbr-section article mbr-section__container" id="content1-4i" data-rv-view="281" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">

    <div class="container">
        <div class="row">
            <div class="col-xs-12 lead">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" OnRowCommand="GridView1_RowCommand"  HeaderStyle-CssClass="header" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Fact Sheet Name">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Fact Sheet Name") %>' CommandName="Download" Text='<%# Eval("Fact Sheet Name") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>
                </asp:GridView>
            </div>
        </div>
    </div>

</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-4f" data-rv-view="283" style="background-color: rgb(75, 74, 74); padding-top: 0.875rem; padding-bottom: 0.875rem;">
    
    <div class="container text-xs-center">
        <p>Copyright 2014 Noble Private Portfolios (Pty) Ltd</p>
    </div>
</footer>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
  <input name="animation" type="hidden">
        </form>
  </body>
</html>