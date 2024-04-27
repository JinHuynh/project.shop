<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/imgs/furniture/favicon.png">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-pro.css">
    <link rel="stylesheet" href="assets/css/spacing.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* nút button ngay menu chính */
        .button {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
            height: 45px;
            width: 45px;
            border: none;
            border-radius: 10px;
            background-color: black;
            cursor: pointer;
            transition: all 0.3s;
            overflow: hidden;
        }

        .bracket {
            font-size: 18px;
            transition: all 0.3s;
            color: rgb(182, 104, 255);
        }

        .text {
            font-size: 15px;
            width: 0;
            transform: scale(0);
            transition: all 0.3s;
            color: white;
        }

        .button:hover {
            width: 180px;
        }

        .button:hover .text {
            transform: scale(1);
            width: 120px;
        }

        /* nút mới */
        .jin,
        .jin::after {
            padding: 10px 50px;
            font-size: 20px;
            border: none;
            border-radius: 5px;
            color: rgb(26, 250, 247);
            background-color: transparent;
            position: relative;
        }

        .jin::after {
            --move1: inset(50% 50% 50% 50%);
            --move2: inset(31% 0 40% 0);
            --move3: inset(39% 0 15% 0);
            --move4: inset(45% 0 40% 0);
            --move5: inset(45% 0 6% 0);
            --move6: inset(14% 0 61% 0);
            clip-path: var(--move1);
            content: 'HuỳnhNgọcTài';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: block;
        }

        .jin:hover::after {
            animation: huynhngoctai 2s;
            text-shadow: 10 10px 10px black;
            animation-timing-function: steps(2, end);
            text-shadow: -3px -3px 0px #1df2f0, 3px 3px 0px #E94BE8;
            background-color: transparent;
            border: 3px solid rgb(0, 255, 213);
        }

        .jin:hover {
            text-shadow: -1px -1px 0px #1df2f0, 1px 1px 0px #E94BE8;
        }

        .jin:hover {
            background-color: transparent;
            border: 1px solid rgb(0, 255, 213);
            box-shadow: 0px 10px 10px -10px rgb(0, 255, 213);
        }

        @keyframes huynhngoctai {
            0% {
                clip-path: var(--move1);
                transform: translate(0px, -10px);
            }

            10% {
                clip-path: var(--move2);
                transform: translate(-10px, 10px);
            }

            20% {
                clip-path: var(--move3);
                transform: translate(10px, 0px);
            }

            30% {
                clip-path: var(--move4);
                transform: translate(-10px, 10px);
            }

            40% {
                clip-path: var(--move5);
                transform: translate(10px, -10px);
            }

            50% {
                clip-path: var(--move6);
                transform: translate(-10px, 10px);
            }

            60% {
                clip-path: var(--move1);
                transform: translate(10px, -10px);
            }

            70% {
                clip-path: var(--move3);
                transform: translate(-10px, 10px);
            }

            80% {
                clip-path: var(--move2);
                transform: translate(10px, -10px);
            }

            90% {
                clip-path: var(--move4);
                transform: translate(-10px, 10px);
            }

            100% {
                clip-path: var(--move1);
                transform: translate(0);
            }
        }

        /* nút tài khoản */
        .input {
            display: flex;
            flex-direction: column;
            width: 200px;
            background-color: #ffffff;
            justify-content: center;
            border-radius: 5px
        }

        .value {
            background-color: transparent;
            border: none;
            padding: 10px;
            color: black;
            display: flex;
            position: relative;
            gap: 5px;
            cursor: pointer;
            border-radius: 4px;
            margin: 2px 0 2px 0;
            width: auto;
        }

        .value:not(:active):hover,
        .value:focus {
            background-color: rgb(177, 139, 94);
        }

        .value:focus,
        .value:active {
            background-color: #ffffff;
            outline: none;
        }

        .value::before {
            content: "";
            position: absolute;
            top: 5px;
            left: -10px;
            width: 5px;
            height: 80%;
            background-color: rgb(177, 139, 94);
            border-radius: 5px;
            opacity: 0;
        }

        .value:focus::before,
        .value:active::before {
            opacity: 1;
        }

        .value svg {
            width: 15px
        }

        #value {
            color: black;
        }
    </style>
</head>

<body>
    <!-- preloader start -->
    {{-- <div id="preloader">
        <div class="bd-loader-inner">
            <div class="bd-loader">
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
                <span class="bd-loader-item"></span>
            </div>
        </div>
    </div> --}}
    <!-- preloader start -->

    <!-- Back to top start -->
    <div class="backtotop-wrap cursor-pointer">
        <svg class="backtotop-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <!-- Back to top end -->

    <!-- search area start -->
    <div class="df-search-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="df-search-form">
                        <div class="df-search-close text-center mb-20">
                            <button class="df-search-close-btn df-search-close-btn"></button>
                        </div>
                        <form action="#">
                            <div class="df-search-input mb-10">
                                <input type="text" placeholder="Search for product...">
                                <button type="submit"><i class="flaticon-search-1"></i></button>
                            </div>
                            <div class="df-search-category">
                                <span>Search by : </span>
                                <a href="#">Healthline, </a>
                                <a href="#">COVID-19, </a>
                                <a href="#">Surgery, </a>
                                <a href="#">Surgeon, </a>
                                <a href="#">Medical research</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="body-overlay"></div>
    <!-- search area end -->

    <!-- Offcanvas area start -->
    <div class="fix">
        <div class="offcanvas__info">
            <div class="offcanvas__wrapper">
                <div class="offcanvas__content">
                    <div class="offcanvas__top mb-40 d-flex justify-content-between align-items-center">
                        <div class="offcanvas__logo">
                            <a href="{{ route('home') }}">
                                <img src="assets/imgs/furniture/logo/logo-light.svg" alt="logo not found">
                            </a>
                        </div>
                        <div class="offcanvas__close">
                            <button>
                                <i class="fal fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="offcanvas__search mb-25">
                        <form action="#">
                            <input type="text" placeholder="What are you searching for?">
                            <button type="submit"><i class="far fa-search"></i></button>
                        </form>
                    </div>
                    <div class="mobile-menu fix mb-40"></div>
                    <div class="offcanvas__contact mt-30 mb-20">
                        <h4>Contact Info</h4>
                        <ul>
                            <li class="d-flex align-items-center">
                                <div class="offcanvas__contact-icon mr-15">
                                    <i class="fal fa-map-marker-alt"></i>
                                </div>
                                <div class="offcanvas__contact-text">
                                    <a target="_blank"
                                        href="https://www.google.com/maps/place/Dhaka/@23.7806207,90.3492859,12z/data=!3m1!4b1!4m5!3m4!1s0x3755b8b087026b81:0x8fa563bbdd5904c2!8m2!3d23.8104753!4d90.4119873">12/A,
                                        Mirnada City Tower, NYC</a>
                                </div>
                            </li>
                            <li class="d-flex align-items-center">
                                <div class="offcanvas__contact-icon mr-15">
                                    <i class="far fa-phone"></i>
                                </div>
                                <div class="offcanvas__contact-text">
                                    <a href="tel:+088889797697">+088889797697</a>
                                </div>
                            </li>
                            <li class="d-flex align-items-center">
                                <div class="offcanvas__contact-icon mr-15">
                                    <i class="fal fa-envelope"></i>
                                </div>
                                <div class="offcanvas__contact-text">
                                    <a href="tel:+012-345-6789"><span
                                            class="mailto:support@mail.com">support@mail.com</span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="offcanvas__social">
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="offcanvas__overlay"></div>
    <div class="offcanvas__overlay-white"></div>
    <!-- Offcanvas area start -->

    <!-- Add cart modal area start -->
    <div class="product-modal-sm modal fade" id="producQuickViewModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="product-modal">
                    <div class="product-modal-wrapper p-relative">
                        <button type="button" class="close product-modal-close" data-bs-dismiss="modal"
                            aria-label="Close">
                            <i class="fal fa-times"></i>
                        </button>
                        <div class="modal__inner">
                            <div class="bd__shop-details-inner">
                                <div class="row">
                                    <div class="col-xxl-6 col-lg-6">
                                        <div class="product__details-thumb-wrapper d-sm-flex align-items-start">
                                            <div class="product__details-thumb-tab mr-20">
                                                <nav>
                                                    <div class="nav nav-tabs flex-nowrap flex-sm-column"
                                                        id="nav-tab" role="tablist">
                                                        <button class="nav-link active" id="img-1-tab"
                                                            data-bs-toggle="tab" data-bs-target="#img-1"
                                                            type="button" role="tab" aria-controls="img-1"
                                                            aria-selected="true">
                                                            <img src="assets/imgs/product/details/details-04.png"
                                                                alt="product-sm-thumb">
                                                        </button>
                                                        <button class="nav-link" id="img-2-tab" data-bs-toggle="tab"
                                                            data-bs-target="#img-2" type="button" role="tab"
                                                            aria-controls="img-3" aria-selected="false">
                                                            <img src="assets/imgs/product/details/details-05.png"
                                                                alt="product-sm-thumb">
                                                        </button>
                                                        <button class="nav-link" id="img-3-tab" data-bs-toggle="tab"
                                                            data-bs-target="#img-3" type="button" role="tab"
                                                            aria-controls="img-3" aria-selected="false">
                                                            <img src="assets/imgs/product/details/details-06.png"
                                                                alt="product-sm-thumb">
                                                        </button>
                                                    </div>
                                                </nav>
                                            </div>
                                            <div class="product__details-thumb-tab-content">
                                                <div class="tab-content" id="productthumbcontent">
                                                    <div class="tab-pane fade show active" id="img-1"
                                                        role="tabpanel" aria-labelledby="img-1-tab">
                                                        <div class="product__details-thumb-big w-img">
                                                            <img src="assets/imgs/product/details/details-04.png"
                                                                alt="">
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="img-2" role="tabpanel"
                                                        aria-labelledby="img-2-tab">
                                                        <div class="product__details-thumb-big w-img">
                                                            <img src="assets/imgs/product/details/details-05.png"
                                                                alt="">
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="img-3" role="tabpanel"
                                                        aria-labelledby="img-3-tab">
                                                        <div class="product__details-thumb-big w-img">
                                                            <img src="assets/imgs/product/details/details-06.png"
                                                                alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xxl-6 col-lg-6">
                                        <div class="product__details-content">
                                            <div
                                                class="product__details-top d-flex flex-wrap gap-3 align-items-center mb-15">
                                                <div class="product__details-tag">
                                                    <a href="#">Construction</a>
                                                </div>
                                                <div class="product__details-rating">
                                                    <a href="#"><i class="fa-solid fa-star"></i></a>
                                                    <a href="#"><i class="fa-solid fa-star"></i></a>
                                                    <a href="#"><i class="fa-regular fa-star"></i></a>
                                                </div>
                                                <div class="product__details-review-count">
                                                    <a href="#">10 Reviews</a>
                                                </div>
                                            </div>
                                            <h3 class="product__details-title">Disposable Surgical Face Mask</h3>
                                            <div class="product__details-price">
                                                <span class="old-price">$30.35</span>
                                                <span class="new-price">$19.25</span>
                                            </div>
                                            <p>Priyoshop has brought to you the Hijab 3 Pieces Combo Pack PS23. It is a
                                                completely
                                                modern design and you feel comfortable to put on this hijab. Buy it at
                                                the best
                                                price.</p>

                                            <div class="product__details-action mb-35">
                                                <div class="product__quantity">
                                                    <div class="product-quantity-wrapper">
                                                        <form action="#">
                                                            <button class="cart-minus"><i
                                                                    class="fa-light fa-minus"></i></button>
                                                            <input class="cart-input" type="text" value="1">
                                                            <button class="cart-plus"><i
                                                                    class="fa-light fa-plus"></i></button>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="product__add-cart">
                                                    <a href="javascript:void(0)" class="fill-btn cart-btn">
                                                        <span class="fill-btn-inner">
                                                            <span class="fill-btn-normal">Add To Cart<i
                                                                    class="fa-solid fa-basket-shopping"></i></span>
                                                            <span class="fill-btn-hover">Add To Cart<i
                                                                    class="fa-solid fa-basket-shopping"></i></span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="product__add-wish">
                                                    <a href="#" class="product__add-wish-btn"><i
                                                            class="fa-solid fa-heart"></i></a>
                                                </div>
                                            </div>
                                            <div class="product__details-meta">
                                                <div class="sku">
                                                    <span>SKU:</span>
                                                    <a href="#">BO1D0MX8SJ</a>
                                                </div>
                                                <div class="categories">
                                                    <span>Categories:</span> <a href="#">Milk,</a> <a
                                                        href="#">Cream,</a> <a href="#">Fermented.</a>
                                                </div>
                                                <div class="tag">
                                                    <span>Tags:</span> <a href="#"> Cheese,</a> <a
                                                        href="#">Custard,</a> <a href="#">Frozen</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Add cart modal area end -->

    <!-- Header area start -->
    <header>
        <div class="header">
            <div class="header-top-area grocery__top-header">
                <div class="header-layout-4">
                    <div class="header-to-main d-none d-sm-flex">
                        <div class="link-text">
                            <span><img src="assets/imgs/icons/call.png" alt=""></span>
                            <a href="tel:+84396018178">+84396018178</a>
                        </div>
                        <div class="header-top-notice d-none d-lg-block">
                            <p>CHĂM SÓC SỨC KHOẺ Giảm <span class="text-white">25% MÃ</span> SỬ DỤNG “ HUYNHNGOCTAI ”
                            </p>
                        </div>
                        <div class="tp-header-top-menu d-flex align-items-center justify-content-end">
                            <div class="header-lang-item tp-header-setting">
                                <span class="header-setting-toggle text-white" id="header-setting-toggle">
                                    Tài khoản</span>
                                <ul>
                                    @auth
                                        <!-- Nếu người dùng đã đăng nhập, hiển thị liên kết logout -->
                                        <div class="input">
                                            <a href="{{ route('profile') }}" class="value" id="value"
                                                style="display: flex; align-items: center;">
                                                <img src="{{ asset('huynhngoctai/troll.png') }}" alt="Avatar"
                                                    class="avatar img-fluid rounded-circle"
                                                    style="width: 35px; height: 35px;">
                                                <span>{{ Auth::user()->name }}</span>
                                            </a>
                                        </div>

                                        <div class="input">
                                            <a class="value" id="value" href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                                     document.getElementById('logout-form').submit();">
                                                {{ __('Logout') }}
                                            </a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                                class="d-none">
                                                @csrf
                                            </form>
                                        </div>
                                    @else
                                        <!-- Nếu người dùng chưa đăng nhập, hiển thị liên kết đăng nhập và đăng ký -->
                                        <div class="input">
                                            <a href="{{ route('login') }}" class="value" id="value">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                        stroke-linejoin="round"></g>
                                                    <g id="SVGRepo_iconCarrier">
                                                        <path
                                                            d="M2.00098 11.999L16.001 11.999M16.001 11.999L12.501 8.99902M16.001 11.999L12.501 14.999"
                                                            stroke="#000000" stroke-width="1.5" stroke-linecap="round"
                                                            stroke-linejoin="round"></path>
                                                        <path
                                                            d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827"
                                                            stroke="#000000" stroke-width="1.5" stroke-linecap="round">
                                                        </path>
                                                    </g>
                                                </svg>
                                                {{ __('Đăng nhập') }}
                                            </a>
                                        </div>
                                        <div class="input">
                                            <a href="{{ route('register') }}" class="value" id="value">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                        stroke-linejoin="round"></g>
                                                    <g id="SVGRepo_iconCarrier">
                                                        <path
                                                            d="M2.00098 11.999L16.001 11.999M16.001 11.999L12.501 8.99902M16.001 11.999L12.501 14.999"
                                                            stroke="#000000" stroke-width="1.5" stroke-linecap="round"
                                                            stroke-linejoin="round"></path>
                                                        <path
                                                            d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827"
                                                            stroke="#000000" stroke-width="1.5" stroke-linecap="round">
                                                        </path>
                                                    </g>
                                                </svg>
                                                {{ __('Đăng ký') }}
                                            </a>
                                        </div>
                                    @endauth
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-layout-4 header-bottom">
                <div id="header-sticky" class="header-4">
                    <div class="mega-menu-wrapper">
                        <div class="header-main-4">
                            <div class="header-left">
                                <div class="header-logo">
                                    <a href="{{ route('home') }}">
                                        <img src="assets/imgs/furniture/logo/logo.svg" alt="logo not found">
                                    </a>
                                </div>
                                <div class="mean__menu-wrapper furniture__menu d-none d-lg-block">
                                    <div class="main-menu">
                                        <nav id="mobile-menu">
                                            <ul>
                                                <li>
                                                    <a href="{{ route('home') }}">Home</a>
                                                </li>
                                                <li>
                                                    <a href="{{ route('about') }}">About</a>
                                                </li>
                                                <li class="has-dropdown">
                                                    <a href="{{ route('product') }}">Shop</a>
                                                    <ul class="submenu">
                                                        <li><a href="{{ route('product') }}">Product</a></li>
                                                        <li><a href="{{ route('product-details') }}">Product
                                                                Details</a></li>
                                                        <li><a href="{{ route('wishlist') }}">Wishlist</a></li>
                                                        <li><a href="{{ route('cart') }}">Cart</a></li>
                                                        <li><a href="{{ route('checkout') }}">Checkout</a></li>
                                                    </ul>
                                                </li>
                                                <li class="has-dropdown">
                                                    <a href="{{ route('about') }}">Pages</a>
                                                    <ul class="submenu">
                                                        <li><a href="{{ route('about') }}">About Us</a></li>
                                                        <li><a href="{{ route('store') }}">Find a Store</a></li>
                                                        <li><a href="{{ route('portfolio') }}">Portfolio</a></li>
                                                        <li><a href="{{ route('portfolio-details') }}">Portfolio
                                                                Details</a></li>
                                                        <li><a href="{{ route('faq') }}">Faq</a></li>
                                                        <li><a href="{{ route('coming-soon') }}">Coming Soon</a></li>
                                                        <li><a href="{{ route('404') }}">404</a></li>
                                                    </ul>
                                                </li>
                                                <li class="has-dropdown">
                                                    <a href="{{ route('blog') }}">Blog</a>
                                                    <ul class="submenu">
                                                        <li><a href="{{ route('blog') }}">Blog Default</a></li>
                                                        <li><a href="blog-grid.html">Blog Grid</a></li>
                                                        <li><a href="{{ route('blog-details') }}">Blog Details</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="{{ route('contact') }}">Contact</a>
                                                </li>
                                                {{-- nút button ngay memu chính --}}
                                                <li>
                                                    <a href="#">
                                                        <button class="button button">
                                                            <span class="bracket left">❴</span>
                                                            <span class="text">Huỳnh Ngọc Tài</span>
                                                            <span class="bracket right">❵</span>
                                                        </button>
                                                    </a>
                                                </li>
                                                <li>
                                                    <button class="jin">
                                                        Huỳnh Ngọc Tài
                                                    </button>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="header-right d-inline-flex align-items-center justify-content-end">
                                <div class="header-search d-none d-xxl-block">
                                    <form action="#">
                                        <input type="text" placeholder="Search...">
                                        <button type="submit">
                                            <svg width="18" height="18" viewBox="0 0 18 18" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path d="M13.4443 13.4445L16.9999 17" stroke="white" stroke-width="2"
                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                <path
                                                    d="M15.2222 8.11111C15.2222 12.0385 12.0385 15.2222 8.11111 15.2222C4.18375 15.2222 1 12.0385 1 8.11111C1 4.18375 4.18375 1 8.11111 1C12.0385 1 15.2222 4.18375 15.2222 8.11111Z"
                                                    stroke="white" stroke-width="2" />
                                            </svg>
                                        </button>
                                    </form>
                                </div>
                                <div class="header-action d-flex align-items-center ml-30">
                                    <div class="header-action-item">
                                        <a href="{{ route('wishlist') }}" class="header-action-btn">
                                            <svg width="23" height="21" viewBox="0 0 23 21" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M21.2743 2.33413C20.6448 1.60193 19.8543 1.01306 18.9596 0.609951C18.0649 0.206838 17.0883 -0.0004864 16.1002 0.00291444C14.4096 -0.0462975 12.7637 0.529279 11.5011 1.61122C10.2385 0.529279 8.59252 -0.0462975 6.90191 0.00291444C5.91383 -0.0004864 4.93727 0.206838 4.04257 0.609951C3.14788 1.01306 2.35732 1.60193 1.72785 2.33413C0.632101 3.61193 -0.514239 5.92547 0.245772 9.69587C1.4588 15.7168 10.5548 20.6578 10.9388 20.8601C11.11 20.9518 11.3028 21 11.4988 21C11.6948 21 11.8875 20.9518 12.0587 20.8601C12.445 20.6534 21.541 15.7124 22.7518 9.69587C23.5164 5.92547 22.37 3.61193 21.2743 2.33413ZM20.4993 9.27583C19.6416 13.5326 13.4074 17.492 11.5011 18.6173C8.81516 17.0587 3.28927 13.1457 2.50856 9.27583C1.91872 6.35103 2.72587 4.65208 3.50773 3.74126C3.9212 3.26166 4.43995 2.87596 5.02678 2.61185C5.6136 2.34774 6.25396 2.21175 6.90191 2.21365C7.59396 2.16375 8.28765 2.2871 8.91534 2.57168C9.54304 2.85626 10.0833 3.29235 10.4835 3.83743C10.5822 4.012 10.7278 4.15794 10.9051 4.26003C11.0824 4.36212 11.2849 4.41662 11.4916 4.41787C11.6983 4.41911 11.9015 4.36704 12.0801 4.26709C12.2587 4.16714 12.4062 4.02296 12.5071 3.84959C12.9065 3.30026 13.448 2.86048 14.0781 2.57361C14.7081 2.28674 15.4051 2.16267 16.1002 2.21365C16.7495 2.21061 17.3915 2.34604 17.9798 2.6102C18.5681 2.87435 19.0881 3.26065 19.5025 3.74126C20.282 4.65208 21.0892 6.35103 20.4993 9.27583Z"
                                                    fill="black" />
                                            </svg>
                                            <span class="header-action-badge bg-furniture">3</span>
                                        </a>
                                    </div>
                                    <div class="header-action-item">
                                        <a href="{{ route('cart') }}" class="header-action-btn cartmini-open-btn">
                                            <svg width="21" height="23" viewBox="0 0 21 23" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M14.0625 10.6C14.0625 12.5883 12.4676 14.2 10.5 14.2C8.53243 14.2 6.9375 12.5883 6.9375 10.6M1 5.8H20M1 5.8V13C1 20.6402 2.33946 22 10.5 22C18.6605 22 20 20.6402 20 13V5.8M1 5.8L2.71856 2.32668C3.12087 1.5136 3.94324 1 4.84283 1H16.1571C17.0568 1 17.8791 1.5136 18.2814 2.32668L20 5.8"
                                                    stroke="black" stroke-width="2" stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </svg>
                                            <span class="header-action-badge bg-furniture">12</span>
                                        </a>
                                    </div>
                                    <div class="header-action-item">
                                        <div class="nav-item dropdown">
                                            <a class="nav-link" href="#" role="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <svg width="24px" height="26px" viewBox="0 0 32 32"
                                                    enable-background="new 0 0 32 32" version="1.1"
                                                    xml:space="preserve" xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" fill="#ffffff"
                                                    stroke="#ffffff">
                                                    <g id="SVGRepo_iconCarrier">
                                                        <path
                                                            d="M21.6,17c2.1-1.6,3.4-4.2,3.4-7c0-5-4-9-9-9s-9,4-9,9c0,2.8,1.3,5.4,3.4,7C5.2,17.3,1,21.7,1,27v3 c0,0.5,0.5,1,1,1h14h14c0.5,0,1-0.5,1-1v-3C31,21.7,26.8,17.3,21.6,17z"
                                                            fill="#B18B5E"></path>
                                                        <path
                                                            d="M21.6,17c-1.5,1.2-3.5,2-5.6,2s-4.1-0.7-5.6-2C5.2,17.3,1,21.7,1,27v3c0,0.5,0.5,1,1,1h14h14 c0.5,0,1-0.5,1-1v-3C31,21.7,26.8,17.3,21.6,17z"
                                                            fill="#B18B5E"></path>
                                                    </g>
                                                </svg>
                                            </a>
                                            <ul class="dropdown-menu" style="font-size: 16px;width:auto;padding:10px">
                                                @auth
                                                    <!-- Nếu người dùng đã đăng nhập, hiển thị liên kết logout -->
                                                    <div class="input">
                                                        <li>
                                                            <a href="{{ route('profile') }}" class="value"
                                                                id="value"
                                                                style="display: flex; align-items: center;">
                                                                <img src="{{ asset('huynhngoctai/troll.png') }}"
                                                                    alt="Avatar" class="avatar img-fluid rounded-circle"
                                                                    style="width: 35px; height: 35px;">
                                                                {{ Auth::user()->name }}
                                                            </a>
                                                        </li>
                                                    </div>
                                                    <div class="input">
                                                        <li>
                                                            <a class="value" id="value"
                                                                href="{{ route('logout') }}"
                                                                onclick="event.preventDefault();
                                                                     document.getElementById('logout-form').submit();">
                                                                {{ __('Đăng xuất') }}
                                                            </a>

                                                            <form id="logout-form" action="{{ route('logout') }}"
                                                                method="POST" class="d-none">
                                                                @csrf
                                                            </form>
                                                        </li>
                                                    </div>
                                                @else
                                                    <!-- Nếu người dùng chưa đăng nhập, hiển thị liên kết đăng nhập và đăng ký -->
                                                    <div class="input">
                                                        <li>
                                                            <a href="{{ route('login') }}" class="value"
                                                                id="value">
                                                                <svg width="24px" height="24px" viewBox="0 0 24 24"
                                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                                                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                                        stroke-linejoin="round"></g>
                                                                    <g id="SVGRepo_iconCarrier">
                                                                        <path
                                                                            d="M2.00098 11.999L16.001 11.999M16.001 11.999L12.501 8.99902M16.001 11.999L12.501 14.999"
                                                                            stroke="#000000" stroke-width="1.5"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round"></path>
                                                                        <path
                                                                            d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827"
                                                                            stroke="#000000" stroke-width="1.5"
                                                                            stroke-linecap="round">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                                {{ __('Đăng nhập') }}
                                                            </a>
                                                        </li>
                                                    </div>
                                                    <div class="input">
                                                        <li>
                                                            <a href="{{ route('register') }}" class="value"
                                                                id="value">
                                                                <svg width="24px" height="24px" viewBox="0 0 24 24"
                                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                                                                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round"
                                                                        stroke-linejoin="round"></g>
                                                                    <g id="SVGRepo_iconCarrier">
                                                                        <path
                                                                            d="M2.00098 11.999L16.001 11.999M16.001 11.999L12.501 8.99902M16.001 11.999L12.501 14.999"
                                                                            stroke="#000000" stroke-width="1.5"
                                                                            stroke-linecap="round"
                                                                            stroke-linejoin="round"></path>
                                                                        <path
                                                                            d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827"
                                                                            stroke="#000000" stroke-width="1.5"
                                                                            stroke-linecap="round">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                                {{ __('Đăng ký') }}
                                                            </a>
                                                        </li>
                                                    </div>
                                                @endauth
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="header-humbager ml-30">
                                        <a class="sidebar__toggle" href="javascript:void(0)">
                                            <div class="bar-icon-2">
                                                <span></span>
                                                <span></span>
                                                <span></span>
                                            </div>
                                        </a>
                                        <!-- for wp -->
                                        <div class="header__hamburger ml-50 d-none">
                                            <button type="button" class="hamburger-btn offcanvas-open-btn">
                                                <span>01</span>
                                                <span>01</span>
                                                <span>01</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </header>
    <!-- Header area end -->

    <!-- Body main wrapper start -->
    {{-- main --}}
    @yield('content')
    <!-- Body main wrapper end -->

    <!-- Footer area start -->
    <footer class="footer-bg">
        <div class="footer-area pt-100 pb-20">
            <div class="footer-style-4">
                <div class="container">
                    <div class="footer-grid-3">
                        <div class="footer-widget-4">
                            <div class="footer-logo mb-35">
                                <a href="{{ route('home') }}"><img src="assets/imgs/furniture/logo/logo-light.svg"
                                        alt="image bnot found"></a>
                            </div>
                            <p>It helps designers plan out where the content will sit, the content to be written and
                                approved.
                            </p>
                            <div class="theme-social">
                                <a class="furniture-bg-hover" href="#"><i
                                        class="fa-brands fa-facebook-f"></i></a>
                                <a class="furniture-bg-hover" href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a class="furniture-bg-hover" href="#"><i
                                        class="fa-brands fa-linkedin-in"></i></a>
                                <a class="furniture-bg-hover" href="#"><i
                                        class="fa-brands fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="footer-widget-4">
                            <div class="footer-widget-title">
                                <h4>Services</h4>
                            </div>
                            <div class="footer-link">
                                <ul>
                                    <li><a href="{{ route('404') }}">Log In</a></li>
                                    <li><a href="{{ route('wishlist') }}">Wishlist</a></li>
                                    <li><a href="{{ route('404') }}">Return Policy</a></li>
                                    <li><a href="{{ route('404') }}">Privacy policy</a></li>
                                    <li><a href="{{ route('faq') }}">Shopping FAQs</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-widget-4">
                            <div class="footer-widget-title">
                                <h4>Company</h4>
                            </div>
                            <div class="footer-link">
                                <ul>
                                    <li><a href="{{ route('home') }}">Home</a></li>
                                    <li><a href="{{ route('about') }}">About us </a></li>
                                    <li><a href="{{ route('about') }}">Pages</a></li>
                                    <li><a href="{{ route('blog') }}">Blog</a></li>
                                    <li><a href="{{ route('contact') }}">Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-widget footer-col-4">
                            <div class="footer-widget-title">
                                <h4>Contact</h4>
                            </div>
                            <div class="footer-info mb-35">
                                <p class="w-75">4517 Washington Ave. Manchester, Kentucky 39495</p>
                                <div class="footer-info-item d-flex align-items-start pb-15 pt-15">
                                    <div class="footer-info-icon mr-20">
                                        <span> <i class="fa-solid fa-location-dot furniture-icon"></i></span>
                                    </div>
                                    <div class="footer-info-text">
                                        <a class="furniture-clr-hover" target="_blank"
                                            href="https://www.google.com/maps/place/Orville+St,+La+Presa,+CA+91977,+USA/@32.7092048,-117.0082772,17z/data=!3m1!4b1!4m5!3m4!1s0x80d9508a9aec8cd1:0x72d1ac1c9527b705!8m2!3d32.7092003!4d-117.0060885">711-2880
                                            Nulla St.</a>
                                    </div>
                                </div>
                                <div class="footer-info-item d-flex align-items-start">
                                    <div class="footer-info-icon mr-20">
                                        <span><i class="fa-solid fa-phone furniture-icon"></i></span>
                                    </div>
                                    <div class="footer-info-text">
                                        <a class="furniture-clr-hover" href="tel:012-345-6789">+964 742 44 763</a>
                                        <p>Mon - Sat: 9 AM - 5 PM</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="footer-copyright-area b-t">
                <div class="footer-copyright-wrapper">
                    <div class="footer-copyright-text">
                        <p class="mb-0">© All Copyright 2024 by <a target="_blank" class="furniture-clr-hover"
                                href="#">Addina</a></p>
                    </div>
                    <div class="footer-payment d-flex align-items-center gap-2">
                        <div class="footer-payment-item mb-0">
                            <div class="footer-payment-thumb">
                                <img src="assets/imgs/icons/payoneer.png" alt="">
                            </div>
                        </div>
                        <div class="footer-payment-item mb-0">
                            <div class="footer-payment-thumb">
                                <img src="assets/imgs/icons/maser.png" alt="">
                            </div>
                        </div>
                        <div class="footer-payment-item">
                            <div class="footer-payment-thumb">
                                <img src="assets/imgs/icons/paypal.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="footer-conditions">
                        <ul>
                            <li><a class="furniture-clr-hover" href="#">Terms & Condition</a></li>
                            <li><a class="furniture-clr-hover" href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer area end -->

    <!-- JS here -->
    {{-- <script>
        document.addEventListener('keydown', function(event) {
            if (event.key === "F12") {
                event.preventDefault(); // Ngăn chặn hành động mặc định của trình duyệt khi nhấn phím F12
                alert('Chức năng này đã bị vô hiệu hóa.'); // Hiển thị thông báo đến người dùng
            }
        });
        document.addEventListener('contextmenu', function(event) {
            event.preventDefault(); // Ngăn chặn menu ngữ cảnh mặc định xuất hiện
            alert('Chức năng này đã bị vô hiệu hóa.'); // Hiển thị thông báo đến người dùng
        });
    </script> --}}
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/meanmenu.min.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/magnific-popup.min.js"></script>
    <script src="assets/js/counterup.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/ajax-form.js"></script>
    <script src="assets/js/beforeafter.jquery-1.0.0.min.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- Bootstrap JS (optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>

</body>

</html>
