<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>AkiToy</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="aStar Fashion Template Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-4.1.3/bootstrap.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="css/main_styles.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
  </head>
<body>

<div class="super_container">
    <!-- Header -->
    <header class="header">
        <div class="header_content d-flex flex-row align-items-center justify-content-start">
            <!-- Hamburger -->
            <div class="hamburger menu_mm"><i class="fa fa-bars menu_mm" aria-hidden="true"></i></div>
            <!-- Logo -->
            <div class="header_logo">
                <a href="#"><div><span>AkiToy</span></div></a>
            </div>
            <!-- Navigation TO DO -->
            <nav class="header_nav">
                <ul class="d-flex flex-row align-items-center justify-content-start">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="#">Categorias</a></li>
                    <li><a href="#">Reservas</a></li>
                    <li><a href="#">Usados</a></li>
                    <li><a href="#">blog</a></li>
                    <li><a href="#">contacto</a></li>
                </ul>
            </nav>

            <!-- Header Extra -->

            <div class="header_extra ml-auto d-flex flex-row align-items-center justify-content-start">

                <!-- Cart -->

                <div class="cart d-flex flex-row align-items-center justify-content-start">
                    <div class="cart_icon"><a href="cart.html">
                        <img src="images/cart.png" alt="">
                        <div class="cart_num">2</div>
                    </a></div>
                </div>
            </div>
        </div>
    </header>

    <!-- Menu -->

    <div class="menu d-flex flex-column align-items-start justify-content-start menu_mm trans_400">
        <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
        <div class="menu_top d-flex flex-row align-items-center justify-content-start">

        </div>
        <div class="menu_search">
            <form action="#" class="header_search_form menu_mm">
                <input type="search" class="search_input menu_mm" placeholder="Buscar" required="required">
                <button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
                    <i class="fa fa-search menu_mm" aria-hidden="true"></i>
                </button>
            </form>
        </div>
        <nav class="menu_nav">
            <ul class="menu_mm">
                <li class="menu_mm"><a href="#">inicio</a></li>
                <li class="menu_mm"><a href="#">categorias</a></li>
                <li class="menu_mm"><a href="#">reservas</a></li>
                <li class="menu_mm"><a href="#">usados</a></li>
                <li class="menu_mm"><a href="#">blog</a></li>
                <li class="menu_mm"><a href="#">contacto</a></li>
            </ul>
        </nav>
        <div class="menu_extra">
            <div class="menu_social">
                <ul>
                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Sidebar -->

    <div class="sidebar">

        <!-- Info -->
        <div class="info">
            <div class="info_content d-flex flex-row align-items-center justify-content-start">

            </div>
        </div>

        <!-- Logo -->
        <div class="sidebar_logo">
            <a href="#"><div><span>AkiToy</span></div></a>
        </div>

        <!-- Sidebar Navigation MENU FULL-->
        <nav class="sidebar_nav">
            <ul>
                <li><a href="index.html">inicio<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                <li><a href="#">categorias<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                <li><a href="#">reservas<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                <li><a href="#">usados<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                <li><a href="blog.html">blog<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                <li><a href="#">contacto<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
            </ul>
        </nav>

        <!-- Search -->
        <div class="search">
            <form action="#" class="search_form" id="sidebar_search_form">
                <input type="text" class="search_input" placeholder="Buscar" required="required">
                <button class="search_button"><i class="fa fa-search" aria-hidden="true"></i></button>
            </form>
        </div>

        <!-- Cart -->
        <div class="cart d-flex flex-row align-items-center justify-content-start">
            <div class="cart_icon"><a href="cart.html">
                <img src="images/cart.png" alt="">
                <div class="cart_num">2</div>
            </a></div>
            <div class="cart_text">total</div>
            <div class="cart_price">S/. 39.99</div>
        </div>
    </div>

    <!-- Home -->

    <!-- Boxes -->

    <div class="boxes">
        <div class="section_container">
            <div class="container">
                <div class="row">

                    <!-- Box -->
                    <div class="col-lg-4 box_col">
                        <div class="box">
                            <div class="box_image"><img src="images/box_1.jpg" alt=""></div>
                            <div class="box_title trans_200"><a href="categories.html">figma</a></div>
                        </div>
                    </div>

                    <!-- Box -->
                    <div class="col-lg-4 box_col">
                        <div class="box">
                            <div class="box_image"><img src="images/box_2.jpg" alt=""></div>
                            <div class="box_title trans_200"><a href="categories.html">nendoroid</a></div>
                        </div>
                    </div>

                    <!-- Box -->
                    <div class="col-lg-4 box_col">
                        <div class="box">
                            <div class="box_image"><img src="images/box_3.jpg" alt=""></div>
                            <div class="box_title trans_200"><a href="categories.html">estatuas</a></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Categories -->

    <div class="categories">
        <div class="section_container">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <div class="categories_list_container">
                            <ul class="categories_list d-flex flex-row align-items-center justify-content-start">
                                <li><a href="categories.html">nuevos productos</a></li>
                                <li><a href="categories.html">reservas</a></li>
                                <li><a href="categories.html">usados</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Products -->

    <div class="products">
        <div class="section_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="products_container grid">

                            <!-- Product -->
                            <div class="product grid-item hot">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_1.jpg" alt="">
                                        <div class="product_tag">hot</div>
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">long red shirt</a></div>
                                        <div class="product_price">$39.90</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item">
                                <div class="product_inner">
                                    <div class="product_image"><img src="images/product_2.jpg" alt=""></div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">hype grey shirt</a></div>
                                        <div class="product_price">$19.50</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item sale">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_3.jpg" alt="">
                                        <div class="product_tag">sale</div>
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">long sleeve jacket</a></div>
                                        <div class="product_price">$32.20<span>RRP 64.40</span></div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_4.jpg" alt="">
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">denim men shirt</a></div>
                                        <div class="product_price">$59.90</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_5.jpg" alt="">
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">long red shirt</a></div>
                                        <div class="product_price">$79.90</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item new">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_6.jpg" alt="">
                                        <div class="product_tag">new</div>
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">hype grey shirt</a></div>
                                        <div class="product_price">$59.90</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product -->
                            <div class="product grid-item">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_7.jpg" alt="">
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">long sleeve jacket</a></div>
                                        <div class="product_price">$15.90</div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Product -->
                            <div class="product grid-item sale">
                                <div class="product_inner">
                                    <div class="product_image">
                                        <img src="images/product_8.jpg" alt="">
                                        <div class="product_tag">sale</div>
                                    </div>
                                    <div class="product_content text-center">
                                        <div class="product_title"><a href="product.html">denim men shirt</a></div>
                                        <div class="product_price">$43.99<span>RRP 64.40</span></div>
                                        <div class="product_button ml-auto mr-auto trans_200"><a href="#">añadir</a></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Newsletter -->


    <!-- Footer -->

    <footer class="footer">
        <div class="footer_content">
            <div class="section_container">
                <div class="container">
                    <div class="row">

                        <!-- About -->
                        <div class="col-xxl-3 col-md-6 footer_col">
                            <div class="footer_about">
                                <!-- Logo -->
                                <div class="footer_logo">
                                    <img src="images/LOGO.png" alt="" srcset="">
                                </div>
                                <div class="footer_about_text">
                                    <p>Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam fringilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.</p>
                                </div>
                                <div class="cards">
                                    <ul class="d-flex flex-row align-items-center justify-content-start">
                                        <li><a href="#"><img src="images/card_1.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="images/card_2.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="images/card_3.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="images/card_4.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="images/card_5.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Questions -->
                        <div class="col-xxl-3 col-md-6 footer_col">
                            <div class="footer_questions">
                                <div class="footer_title">FAQ</div>
                                <div class="footer_list">
                                    <ul>
                                        <li><a href="#">Nosotros</a></li>
                                        <li><a href="#">Seguimiento</a></li>
                                        <li><a href="#">Envios</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Soporte</a></li>
                                        <li><a href="#">Terminos de uso</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Blog -->
                        <div class="col-xxl-3 col-md-6 footer_col">

                        </div>

                        <!-- Contact -->
                        <div class="col-xxl-3 col-md-6 footer_col">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Social -->
        <div class="footer_social">
            <div class="section_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="footer_social_container d-flex flex-row align-items-center justify-content-between">
                                <!-- Instagram -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">instagram</div>
                                    </div>
                                </a>
                                <!-- Google + -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-google-plus" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">google +</div>
                                    </div>
                                </a>
                                <!-- Pinterest -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-pinterest" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">pinterest</div>
                                    </div>
                                </a>
                                <!-- Facebook -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">facebook</div>
                                    </div>
                                </a>
                                <!-- Twitter -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">twitter</div>
                                    </div>
                                </a>
                                <!-- YouTube -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-youtube" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">youtube</div>
                                    </div>
                                </a>
                                <!-- Tumblr -->
                                <a href="#">
                                    <div class="footer_social_item d-flex flex-row align-items-center justify-content-start">
                                        <div class="footer_social_icon"><i class="fa fa-tumblr-square" aria-hidden="true"></i></div>
                                        <div class="footer_social_title">tumblr</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Credits -->
        <div class="credits">
            <div class="section_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="credits_content d-flex flex-row align-items-center justify-content-end">
                                <div class="credits_text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="css/bootstrap-4.1.3/popper.js"></script>
<script src="css/bootstrap-4.1.3/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/Isotope/fitcolumns.js"></script>
<script src="js/custom.js"></script>
</body>
</html>