<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="NoblePPWebsite.AdminHome" %>

<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.6, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.6, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
  <meta name="description" content="">
  <title>Home</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>

<body>
    <form runat="server">
  <section class="mbr-section article mbr-parallax-background" id="msg-box8-0" data-rv-view="12" style="background-image: url(assets/images/mbr-1920x1280.jpg); padding-top: 120px; padding-bottom: 120px;">

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-xs-center">
                <h3 class="mbr-section-title display-2">Welcome</h3>
                
                
            </div>
        </div>
    </div>

</section>

<section class="engine"></section><section class="mbr-section mbr-section__container article" id="header3-1" data-rv-view="15" style="background-color: rgb(38, 38, 38); padding-top: 20px; padding-bottom: 20px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2"></h3>
                
            </div>
        </div>
    </div>
</section>

<section class="mbr-info mbr-info-extra mbr-section mbr-section-md-padding" id="msg-box1-2" data-rv-view="17" style="background-color: rgb(255, 255, 255); padding-top: 30px; padding-bottom: 30px;">

    
    <div class="container">
        <div class="row">


            

            
                <div class="mbr-table-md-up">
                <div class="mbr-table-cell mbr-right-padding-md-up col-md-8 text-xs-center text-md-left">
                <h3 class="mbr-info-title mbr-section-title display-2">Upload New Publication</h3>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server"/>
                <br />
                <asp:Label ID="lblPublicationMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="mbr-table-cell col-md-4">
                <asp:Button ID="btnUploadPublication" runat="server" Text="Upload" class="btn btn-primary" OnClick="btnUploadPublication_Click"/>
               
                </div>
            </div>
          



        </div>
    </div>
</section>

<section class="mbr-info mbr-info-extra mbr-section mbr-section-md-padding" id="msg-box1-3" data-rv-view="20" style="background-color: rgb(255, 255, 255); padding-top: 30px; padding-bottom: 30px;">

    
    <div class="container">
        <div class="row">


            
                <div class="mbr-table-md-up">
                <div class="mbr-table-cell mbr-right-padding-md-up col-md-8 text-xs-center text-md-left">
                <h3 class="mbr-info-title mbr-section-title display-2">Upload New Fact Sheet</h3>
                <br />
                <asp:FileUpload ID="FileUpload2" runat="server"/>
                <br />
                <asp:Label ID="lblMessageFactSheets" runat="server" Text=""></asp:Label>
                </div>
                <div class="mbr-table-cell col-md-4">
                <asp:Button ID="btnUploadFactSheet" runat="server" Text="Upload" class="btn btn-primary" OnClick="btnUploadFactSheet_Click"/>
               
                </div>
            </div>


        </div>
        </div>
</section>
        <section class="engine"></section><section class="mbr-section mbr-section__container article" id="header3-1" data-rv-view="15" style="background-color: rgb(38, 38, 38); padding-top: 20px; padding-bottom: 20px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2"></h3>
                
            </div>
        </div>
    </div>
</section>
<section class="mbr-info mbr-info-extra mbr-section mbr-section-md-padding" id="msg-box1-3" data-rv-view="20" style="background-color: rgb(255, 255, 255); padding-top: 30px; padding-bottom: 30px;">

    
    <div class="container">
        <div class="row">


            
                <div class="mbr-table-md-up">
                <div class="mbr-table-cell mbr-right-padding-md-up col-md-8 text-xs-center text-md-left">
                <h3 class="mbr-info-title mbr-section-title display-2">Update Password</h3>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" Width="247px"></asp:TextBox>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label>
                </div>
                <div class="mbr-table-cell col-md-4">
                <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" class="btn btn-primary" OnClientClick="funCheck()" OnClick="btnUpdatePassword_Click"/>
               <asp:HiddenField ID="HiddenField1" runat="server" />
                </div>
            </div>


        </div>
        </div>
</section>
<section class="engine"></section><section class="mbr-section mbr-section__container article" id="header3-1" data-rv-view="15" style="background-color: rgb(38, 38, 38); padding-top: 20px; padding-bottom: 20px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2"></h3>
                
            </div>
        </div>
    </div>
</section>
<section class="mbr-info mbr-info-extra mbr-section mbr-section-md-padding" id="msg-box1-3" data-rv-view="20" style="background-color: rgb(255, 255, 255); padding-top: 30px; padding-bottom: 30px;">

    
    <div class="container">
        <div class="row">


            
                <div class="mbr-table-md-up">
                <div class="mbr-table-cell mbr-right-padding-md-up col-md-8 text-xs-center text-md-left">
                <h3 class="mbr-info-title mbr-section-title display-2">Logout</h3>
                <br />
                <br />
                </div>
                <div class="mbr-table-cell col-md-4">
                <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn btn-primary" OnClick="btnLogout_Click"/>
                </div>
            </div>


        </div>
        </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script>
      function funCheck() {
          var flag = confirm('Are you sure you want to Change your Password?');
          var hdnfld = document.getElementById('<%= HiddenField1.ClientID %>');
          hdnfld.value = flag ? '1' : '0';
      }
  </script>
  
  <input name="animation" type="hidden">
        </form>
  </body>
</html>
