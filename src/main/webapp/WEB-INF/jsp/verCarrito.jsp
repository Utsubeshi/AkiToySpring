<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cart</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="aStar Fashion Template Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-4.1.3/bootstrap.css">
    <link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="../css/main_styles.css">
    <link rel="stylesheet" type="text/css" href="../css/cart_responsive.css">
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
                    <li><a href="/">Inicio</a></li>
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
                    <div class="cart_icon"><a href="/carrito/verCarrito">
                        <img src="../images/cart.png" alt="">
                        <div class="cart_num">
                            <c:if test="${empty cantidad}">
                                0
                            </c:if>
                            <c:if test="${not empty cantidad}">
                                ${cantidad}
                            </c:if>
                        </div>
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
                <li class="menu_mm"><a href="/">inicio</a></li>
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
                <li><a href="/">inicio<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
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
            <div class="cart_icon"><a href="/carrito/verCarrito">
                <img src="../images/cart.png" alt="">
                <div class="cart_num">
                    <c:if test="${empty cantidad}">
                        0
                    </c:if>
                    <c:if test="${not empty cantidad}">
                        ${cantidad}
                    </c:if>
                </div>
            </a></div>
            <div class="cart_text">total</div>
            <div class="cart_price">S/.
                <c:if test="${empty precioTotal}">
                    0.0
                </c:if>
                <c:if test="${not empty precioTotal}">
                    ${precioTotal}
                </c:if>
            </div>
        </div>
    </div>

    <!-- Home -->

    <div class="home2">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../images/product_background.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="home_content">
                <div class="home_title">Cart</div>
                <div class="breadcrumbs">
                    <ul class="d-flex flex-row align-items-center justify-content-start">
                        <li><a href="index.html">Home</a></li>
                        <li>Your Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Cart -->

    <div class="cart_section">
        <div class="section_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="cart_container">

                            <!-- Cart Bar -->
                            <div class="cart_bar">
                                <ul class="cart_bar_list item_list d-flex flex-row align-items-center justify-content-start">
                                    <li>Producto</li>
                                    <li>Marca</li>
                                    <li>Linea</li>
                                    <li>Categoria</li>
                                    <li>Precio</li>
                                    <li>Eliminar</li>
                                </ul>
                            </div>

                            <!-- Cart Items -->
                            <div class="cart_items">
                                <ul class="cart_items_list">
                                    <c:forEach items="${carrito}" var="producto">
                                    <li class="cart_item item_list d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                                        <div class="product d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                                            <div><div class="product_image2"><img src="../images/product_${producto.id}.jpg" alt=""></div></div>
                                            <div class="product_name2"><a href="product.html">${producto.nombre}</a></div>
                                        </div>
                                        <div class="product_title text-lg-center product_text"><span>Marca: </span>${producto.marca}</div>
                                        <div class="product_title text-lg-center product_text"><span>Linea: </span>${producto.linea}</div>
                                        <div class="product_title text-lg-center product_text"><span>Categoria: </span>${producto.categoria}</div>
                                        <div class="product_title text-lg-center product_text"><span>Precio: </span>S/. ${producto.precio_venta}</div>
                                        <div class="product_total text-lg-center product_text">
                                        <spring:url value="/carrito/eliminar/${producto.id }" var="eliminar" />
                                        <a class="btn btn-danger" href="${eliminar }" role="button" >Eliminar</a>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>

                            <!-- Cart Buttons -->
                            <div class="cart_buttons d-flex flex-row align-items-start justify-content-start">
                                <div class="cart_buttons_inner ml-auto d-flex flex-row align-items-start justify-content-start flex-wrap">
                                    <div class="button button_continue trans_200"><a href="/">continuar comprando</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section_container cart_extra_container">
            <div class="container">
                <div class="row">

                    <!-- Cart Total -->
                    <div class="col-xxl-6">
                        <div class="cart_extra cart_extra_2">
                            <div class="cart_extra_content cart_extra_total">
                                <div class="cart_extra_title">Total</div>
                                <ul class="cart_extra_total_list">
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_extra_total_title">Subtotal</div>
                                        <div class="cart_extra_total_value ml-auto" id="pagar"> S/.
                                            <span>
                                            <c:if test="${empty precioTotal}">
                                                0.0
                                            </c:if>
                                            <c:if test="${not empty precioTotal}">
                                                ${precioTotal}
                                            </c:if>
                                            </span>
                                        </div>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_extra_total_title">Envio</div>
                                        <div class="cart_extra_total_value ml-auto">Gratis</div>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_extra_total_title">Total</div>
                                        <div class="cart_extra_total_value ml-auto">S/.
                                            <c:if test="${empty precioTotal}">
                                                0.0
                                            </c:if>
                                            <c:if test="${not empty precioTotal}">
                                                ${precioTotal}
                                            </c:if>
                                        </div>
                                    </li>
                                </ul>
                                <div class="checkout_button trans_200"><a href="" id="buyButton">Checkout</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Newsletter -->

    <div class="newsletter">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/newsletter.jpg" data-speed="0.8"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="newsletter_content text-center">
                        <div class="newsletter_title_container">
                            <div class="newsletter_title">subscribe to our newsletter</div>
                            <div class="newsletter_subtitle">we won't spam, we promise!</div>
                        </div>
                        <div class="newsletter_form_container">
                            <form action="#" id="newsletter_form" class="newsletter_form">
                                <input type="email" class="newsletter_input" placeholder="your e-mail here" required="required">
                                <button class="newsletter_button">submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->

    <footer class="footer">
        <div class="footer_content">
            <div class="section_container">
                <div class="container">
                    <div class="row">

                        <!-- About -->
                        <div class="col-xxl-3 col-md-6 footer_col">
                            <div class="footer_about">
                                <div class="footer_about_text">
                                    <p>Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam fringilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.</p>
                                </div>
                                <div class="cards">
                                    <ul class="d-flex flex-row align-items-center justify-content-start">
                                        <li><a href="#"><img src="../images/card_1.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="../images/card_2.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="../images/card_3.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="../images/card_4.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="../images/card_5.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Questions -->
                        <div class="col-xxl-3 col-md-6 footer_col">
                            <div class="footer_questions">
                                <div class="footer_title">questions</div>
                                <div class="footer_list">
                                    <ul>
                                        <li><a href="#">About us</a></li>
                                        <li><a href="#">Track Orders</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Jobs</a></li>
                                        <li><a href="#">Shipping</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Partners</a></li>
                                        <li><a href="#">Bloggers</a></li>
                                        <li><a href="#">Support</a></li>
                                        <li><a href="#">Terms of Use</a></li>
                                        <li><a href="#">Press</a></li>
                                    </ul>
                                </div>
                            </div>
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

<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../css/bootstrap-4.1.3/popper.js"></script>
<script src="../css/bootstrap-4.1.3/bootstrap.min.js"></script>
<script src="../plugins/greensock/TweenMax.min.js"></script>
<script src="../plugins/greensock/TimelineMax.min.js"></script>
<script src="../plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="../plugins/greensock/animation.gsap.min.js"></script>
<script src="../plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="../plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../plugins/easing/easing.js"></script>
<script src="../plugins/parallax-js-master/parallax.min.js"></script>
<script src="../js/cart.js"></script>
<!-- Incluyendo Culqi Checkout -->
<script src="https://checkout.culqi.com/js/v3"></script>
<script>
    Culqi.publicKey = 'pk_test_Kd3gwqwwXEHBBj9r';
</script>

<script>

    $(document).ready(function () {
        var total = $('#pagar span').text().trim() *100;
        console.log(total);
        Culqi.settings({
            title: 'AkiToy',
            currency: 'PEN',
            description: 'Tienda de figuras colecionables',
            amount: total
        });
    });



    $('#buyButton').on('click', function (e) {
        // Abre el formulario con la configuración en Culqi.settings
        Culqi.open();
        e.preventDefault();
    });

    function culqi() {
        if (Culqi.token) { // ¡Objeto Token creado exitosamente!
            var token = Culqi.token.id;
            alert('Se ha creado un token:' + token);
            //En esta linea de codigo debemos enviar el "Culqi.token.id"
            //hacia tu servidor con Ajax
        } else { // ¡Hubo algún problema!
            // Mostramos JSON de objeto error en consola
            console.log(Culqi.error);
            alert(Culqi.error.user_message);
        }
    };

</script>
</body>
</html>