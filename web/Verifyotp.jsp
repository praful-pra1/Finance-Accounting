<%-- 
    Document   : Verifyotp
    Created on : 18 Feb, 2019, 4:12:25 AM
    Author     : ASUS
--%>

<%
     out.print(session.getAttribute("otp"));
    if(request.getParameter("Verify")!=null)
    {
        
        String otp1=(String)session.getAttribute("otp");
        String getotp= (request.getParameter("txt1")+request.getParameter("txt2")+request.getParameter("txt3")+request.getParameter("txt4"));
        out.print(getotp);
       
        if(getotp.equals(otp1))
       {
            response.sendRedirect("changepassword.jsp");
        }
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="Crypto ICO admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
        <meta name="keywords" content="admin template, crypto ico admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
        <meta name="author" content="PIXINVENT">
        <title>Account Login - Crypto ICO - Cryptocurrency Website Landing Page HTML + Dashboard Template + Bitcoin Dashboard</title>
        <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
        <link rel="shortcut icon" type="image/x-icon" href="https://pixinvent.com/demo/crypto-ico-admin/app-assets/images/ico/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i|Comfortaa:300,400,500,700" rel="stylesheet">
        <!-- BEGIN VENDOR CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/vendors.min.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/icheck.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/custom.css">
        <!-- END VENDOR CSS-->
        <!-- BEGIN MODERN CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/app.min.css">
        <!-- END MODERN CSS-->
        <!-- BEGIN Page Level CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-compact-menu.min.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/cryptocoins/cryptocoins.css">
        <link rel="stylesheet" type="text/css" href="app-assets/css/pages/account-login.css">
        <!-- END Page Level CSS-->
        <!-- BEGIN Custom CSS-->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- END Custom CSS-->

    </head>
    <body class="vertical-layout vertical-compact-menu 1-column  bg-full-screen-image menu-expanded blank-page blank-page" data-open="click" data-menu="vertical-compact-menu" data-col="1-column">
        <!-- ////////////////////////////////////////////////////////////////////////////-->
        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <!-- Demo options menu -->
                    <div class="demo-options">
                        <ul class="demo-options-list">
                            <li>
                                <button type="button" class="btn btn-sm btn-settings fullscreen-overlay-open" data-toggle="tooltip" data-placement="left" title="View all demos"><i class="la la-desktop"></i></button>
                            </li>
                            <li>
                                <a href="https://goo.gl/dKwTQf" class="btn btn-sm btn-cart open-fullscreen-overlay" target="_blank" data-toggle="tooltip" data-placement="left" title="Buy now"><i class="la la-cart-arrow-down"></i></a>
                            </li>
                            <li>
                                <a href="https://pixinvent.com/demo/crypto-ico-admin/html/rtl/vertical-menu/" class="btn btn-rtl-mode open-fullscreen-overlay" data-toggle="tooltip" data-placement="left" title="RTL mode">RTL</a>
                            </li>
                        </ul>
                    </div>
                    <!--/ Demo options menu -->
                    <!-- Demo fullscreen-overlay -->
                    <div class="fullscreen-overlay">
                        <div class="wrap mt-2">
                            <button class="btn btn-default btn-sm btn-close fullscreen-overlay-open float-right"><i class="la la-times"></i></button>
                            <!-- Add Banner -->
                            <div class="crypto-ico-add my-4">
                                <div class="row">
                                    <div class="col-12 col-12 text-center">
                                        <img class="img-fluid img-add-banner" src="crypto-ico/images/demo/offer-banner.jpg" alt="Crypto ICO add banner">
                                    </div>
                                </div>
                            </div>
                            <!--/ Add Banner -->
                            <div class="crypto-ico-demo">
                                <div class="row">
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Semi Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Counter Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/">
                                            <img class="img-fluid mb-1 mt-2" src="crypto-ico/images/demo/template-counter.jpg" alt="Counter Landing Page">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Dark + Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">3D Graphic Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/">
                                            <img class="img-fluid mb-1 mt-2" src="crypto-ico/images/demo/template-3d-graphics.jpg" alt="Template with Counter">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">ICO Dashboard</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Crypto ICO admin panel</h6>
                                        <a href="index-2.html" target="_blank">
                                            <img class="img-fluid mb-1 mt-2" src="crypto-ico/images/demo/ico-dashboard.jpg" alt="Crypto ICO admin panel">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="index-2.html" class="ico-demo-link nav-link btn btn-outline-light">LTR</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico-admin/html/rtl/vertical-menu/" target="_blank" class="ico-demo-link nav-link btn btn-outline-light">RTL</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row py-4">
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Dark Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">3D Animated Graphic Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/">
                                            <img class="img-fluid mb-1 mt-2" src="crypto-ico/images/demo/template-3d-animation.jpg" alt="Template with Counter">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Intro Video Landing Page </h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/">
                                            <img class="img-fluid mb-1 mt-2" src="crypto-ico/images/demo/template-intro-video.jpg" alt="Intro Video Landing Page">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ Demo fullscreen-overlay --><section id="account-login" class="flexbox-container">    
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <!-- image -->
                            <div class="col-xl-3 col-lg-4 col-md-5 col-sm-5 col-12 p-0 text-center d-none d-md-block">
                                <div class="border-grey border-lighten-3 m-0 box-shadow-0 card-account-left height-400">
                                    <img src="app-assets/images/pages/account-login.png" class="card-account-img width-200" alt="card-account-img">
                                </div>
                            </div>
                            <!-- login form -->
                            <div class="col-xl-3 col-lg-4 col-md-5 col-sm-5 col-12 p-0">
                                <div class="card border-grey border-lighten-3 m-0 box-shadow-0 card-account-right height-400">                
                                    <div class="card-content">                    
                                        <div class="card-body p-3">
                                            <p class="text-center h5 text-capitalize">Welcome to Growfunds!</p>
                                            <p class="mb-3 text-center">Verify OTP</p>
                                            <form class="form-horizontal form-signin" method="post" >  
                                                <div class="row">
                                                    <div class="col-3">
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control" name="txt1" id="password" placeholder="Your New Password" value="" required="" autofocus="">
                                                    <label for=""></label>
                                                </fieldset>
                                                    </div>
                                                    
                                                    <div class="col-3">
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control" name="txt2" id="password"  value="" required="" autofocus="">
                                                    <label for=""></label>
                                                </fieldset>
                                                    </div>
                                                      
                                                    <div class="col-3">
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control" name="txt3" id="password" placeholder="" value="" required="" autofocus="">
                                                    <label for=""></label>
                                                </fieldset>
                                                    </div>
                                                    
                                                    <div class="col-3">
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control" name="txt4" id="password" placeholder="" value="" required="" autofocus="">
                                                    <label for=""></label>
                                                </fieldset>
                                                    </div>
                                                    
                                                    
                                                </div>
                                                <button type="submit" class="btn-gradient-primary btn-block my-1" name="Verify">Verify</button>
                                                
                                            </form>
                                        </div>                    
                                    </div>
                                </div>
                            </div>        
                        </div>    
                    </section>

                </div>
            </div>
        </div>
        <!-- ////////////////////////////////////////////////////////////////////////////-->

        <!-- BEGIN VENDOR JS-->
        <script src="app-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
        <!-- BEGIN VENDOR JS-->
        <!-- BEGIN PAGE VENDOR JS-->
        <script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
        <!-- END PAGE VENDOR JS-->
        <!-- BEGIN MODERN JS-->
        <script src="app-assets/js/core/app-menu.min.js" type="text/javascript"></script>
        <script src="app-assets/js/core/app.min.js" type="text/javascript"></script>
        <script src="app-assets/js/scripts/demo.min.js" type="text/javascript">//- For demo only</script>
        <!-- END MODERN JS-->
        <!-- BEGIN PAGE LEVEL JS-->
        <script src="app-assets/js/scripts/forms/form-login-register.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL JS-->
       

    </body>
</html>
