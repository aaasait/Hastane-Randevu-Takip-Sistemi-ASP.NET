<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebProjeTemplate.index" %>

<!doctype html>
<html lang="en">
  <head runat="server">
    <title>Anasayfa</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300, 400, 700" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
  </head>

  <body>
  <form id="form5" runat="server">    
    <!-- HEADER  Menüler iconlar giriş yap kayıt ol butonları var-->
    <header role="banner">
      <div class="top-bar">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-5">
              <ul class="social list-unstyled">
                <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
            <div class="col-md-6 col-sm-6 col-7 text-right">
                <a href="GirisYap.aspx" class="cta-btn" >Online Randevu Al</a>
            </div>
          </div>
        </div>
      </div>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="index.aspx">POLİKİNLİK MERKEZİ <span>+</span>  </a>
          

          <div class="collapse navbar-collapse" id="navbarsExample05">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link active" href="index.aspx">Anasayfa</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Hakkimizda.aspx">Hakkımızda</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Iletisim.aspx">İletişim</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('img/onli.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-7 col-sm-12 element-animate">
              <h1>Sizi Önemsiyoruz</h1> 
              <p>Son derece deneyimli personellerimiz ve son teknoloji ekipmanlarımızla sizlere en iyi hizmeti sunuyoruz.</p>
            </div>
          </div>
        </div>

      </div>

      <div class="slider-item" style="background-image: url('img/doktor.jpg');">
        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-7 col-sm-12 element-animate">
              <h1>Uzman Doktor Kadrosu</h1>
              <p>En son teknolojik cihazlar ile donatılmış hastanemizde, alanında uzman doktor kadrosu ile sizlere 7/24 hizmet vermekteyiz.</p>
            </div>
          </div>
        </div>
        
      </div>

    </section>
    <!-- END slider -->

    
    <section class="container home-feature mb-5">
      <div class="row">
        <div class="col-md-4 p-0 one-col element-animate">
          <div class="col-inner p-xl-5 p-lg-5 p-md-4 p-sm-4 p-4">
            <span class="icon flaticon-hospital-bed"></span>
            <h2>Fizik Tedavi ve Rehabilitasyon Merkezimiz</h2>
       <p>Fizik Tedavi ve Rehabilitasyon Merkezimiz ile 7/24 Uzman doktor kadrosu ile sizlere hizmet vermektedir.</p>
          </div>
          <a href="#" class="btn-more">Daha Fazla Bilgi Edin</a>
        </div>
        <div class="col-md-4 p-0 two-col element-animate">
          <div class="col-inner p-xl-5 p-lg-5 p-md-4 p-sm-4 p-4">
            <span class="icon flaticon-first-aid-kit"></span>
            <h2>Onkoloji ve Kardiyoloji Polikinliğimiz Hizmetinizde</h2>
            <p>Onkoloji ve Kardiyoloji Polikinliğimizde 7/24 Uzman Doktor Kadrosu ile sizlere hizmet vermektedir.</p>
          </div>
          <a href="#" class="btn-more">Daha Fazla Bilgi Edin</a>
        </div>
        <div class="col-md-4 p-0 three-col element-animate">
          <div class="col-inner p-xl-5 p-lg-5 p-md-4 p-sm-4 p-4">
            <span class="icon flaticon-hospital"></span>
            <h2>Cerrahi Operasyon Merkezi</h2>
            <p>Cerrahi Operasyon Merkezimiz Avrupa Standartlarında olup Uzman Doktor Kadrosu ile sizlere hizmet vermektedir.</p>
          </div>
          <a href="#" class="btn-more">Daha Fazla Bilgi Edin</a>
        </div>
      </div>
    </section>
 
      <!-- Footer -->
    <footer class="site-footer" role="contentinfo">
      <div class="container">
        <div class="row pt-md-3 element-animate">
          <div class="col-md-12">
            <hr class="border-t">
          </div>
          <div class="col-md-6 col-sm-12 copyright">
            <p>&copy; 2021 Abdullah Sait Koç Tarafından Yapılmıştır.</p>
          </div>
          <div class="col-md-6 col-sm-12 text-md-right text-sm-left">
            <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
            <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
            <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
          </div>
        </div>
      </div>
    </footer>
    <!-- END footer -->


    
  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/main.js"></script>
   </form>       
  </body>
</html>
