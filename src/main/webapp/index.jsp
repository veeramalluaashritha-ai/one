<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Velora · girly & aesthetic</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />
    <style>
        /* ----- ROOT : soft pink & girly ----- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #fef6f9;
            --card: #ffffff;
            --pink-soft: #ffe3ed;
            --pink-mid: #fbc4d5;
            --pink-rose: #e8a0b4;
            --rose-dark: #c87a8e;
            --text: #3d2a33;
            --text-soft: #6b4b57;
            --muted: #b3929e;
            --shadow: 0 12px 32px rgba(200, 120, 140, 0.10);
            --shadow-hover: 0 20px 48px rgba(200, 120, 140, 0.18);
            --radius: 40px;
            --radius-sm: 24px;
            --transition: 0.3s cubic-bezier(0.2, 0.9, 0.3, 1.1);
            --font-serif: 'DM Serif Display', serif;
            --font-sans: 'Inter', system-ui, -apple-system, sans-serif;
        }

        body {
            background: var(--bg);
            color: var(--text);
            font-family: var(--font-sans);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            padding: 0 12px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 16px;
        }

        /* ----- buttons : cute & rounded ----- */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 10px 28px;
            border-radius: 60px;
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 0.3px;
            border: 1.5px solid transparent;
            transition: var(--transition);
            background: white;
            color: var(--text);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
        }

        .btn-primary {
            background: var(--pink-rose);
            color: white;
            border-color: var(--pink-rose);
        }

        .btn-primary:hover {
            background: var(--rose-dark);
            border-color: var(--rose-dark);
            transform: translateY(-3px);
            box-shadow: 0 12px 28px rgba(200, 120, 140, 0.25);
        }

        .btn-soft {
            background: var(--pink-soft);
            color: var(--rose-dark);
            border-color: var(--pink-soft);
        }

        .btn-soft:hover {
            background: #fddae6;
            transform: translateY(-3px);
        }

        .btn-outline {
            background: transparent;
            border-color: rgba(61, 42, 51, 0.12);
            color: var(--text);
        }

        .btn-outline:hover {
            background: var(--text);
            color: white;
            border-color: var(--text);
        }

        .btn-sm {
            padding: 6px 18px;
            font-size: 12px;
        }

        /* ----- HEADER : dreamy & transparent ----- */
        header {
            padding: 12px 0;
            background: rgba(255, 245, 248, 0.7);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(255, 200, 215, 0.25);
            position: sticky;
            top: 0;
            z-index: 50;
            border-radius: 0 0 40px 40px;
            margin-bottom: 10px;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            flex-wrap: wrap;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 6px;
            font-family: var(--font-serif);
            font-size: 26px;
            font-weight: 400;
            letter-spacing: -0.3px;
            color: var(--text);
        }

        .brand i {
            color: var(--pink-rose);
            font-size: 24px;
        }

        .brand .accent {
            color: var(--rose-dark);
            font-style: italic;
        }

        .nav-links {
            display: flex;
            gap: 2px;
            list-style: none;
        }

        .nav-links a {
            padding: 6px 18px;
            border-radius: 40px;
            font-size: 14px;
            font-weight: 500;
            color: var(--text-soft);
            transition: var(--transition);
            text-decoration: none;
        }

        .nav-links a:hover,
        .nav-links a.active {
            background: var(--pink-soft);
            color: var(--rose-dark);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 2px;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 60px;
            color: var(--text-soft);
            transition: var(--transition);
            font-size: 16px;
            background: transparent;
            border: none;
        }

        .icon-btn:hover {
            background: var(--pink-soft);
            color: var(--rose-dark);
        }

        .cart-wrap {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--pink-rose);
            color: white;
            font-size: 10px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 30px;
            display: grid;
            place-items: center;
            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;
            background: var(--pink-soft);
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 40px;
            font-size: 18px;
            color: var(--rose-dark);
        }

        #mobileMenu {
            display: none;
            background: white;
            border-radius: 32px;
            padding: 18px 20px;
            margin-top: 8px;
            box-shadow: var(--shadow);
        }

        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        #mobileMenu ul a {
            padding: 12px 14px;
            border-radius: 30px;
            font-weight: 500;
            color: var(--text);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        #mobileMenu ul a:hover {
            background: var(--pink-soft);
        }

        /* ----- HERO : girly & dreamy ----- */
        .hero {
            background: linear-gradient(145deg, #fcecf2, #f9e0e9);
            border-radius: 48px;
            padding: 48px 36px;
            margin: 12px 0 20px;
            position: relative;
            overflow: hidden;
            box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.6);
        }

        .hero::after {
            content: "♡";
            position: absolute;
            right: 24px;
            bottom: 20px;
            font-size: 80px;
            opacity: 0.10;
            color: var(--pink-rose);
            transform: rotate(-4deg);
        }

        .hero h1 {
            font-family: var(--font-serif);
            font-size: 42px;
            font-weight: 400;
            line-height: 1.15;
            letter-spacing: -0.5px;
            max-width: 520px;
        }

        .hero h1 i {
            color: var(--rose-dark);
            font-style: italic;
        }

        .hero p {
            color: var(--text-soft);
            max-width: 400px;
            margin: 10px 0 24px;
            font-size: 15px;
            font-weight: 400;
        }

        .hero .badge {
            display: inline-block;
            background: rgba(232, 160, 180, 0.15);
            color: var(--rose-dark);
            padding: 4px 20px;
            border-radius: 60px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 0.5px;
            margin-bottom: 14px;
            border: 0.5px solid rgba(232, 160, 180, 0.2);
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        /* ----- section ----- */
        .section {
            padding: 40px 0 20px;
        }

        .section-header {
            display: flex;
            align-items: baseline;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 8px;
            margin-bottom: 28px;
        }

        .section-header h2 {
            font-family: var(--font-serif);
            font-weight: 400;
            font-size: 28px;
            letter-spacing: -0.3px;
        }

        .section-header .sub {
            color: var(--muted);
            font-size: 14px;
            font-weight: 400;
            margin-top: 2px;
        }

        .view-all {
            color: var(--rose-dark);
            font-weight: 500;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: var(--transition);
            text-decoration: none;
        }

        .view-all:hover {
            gap: 12px;
            color: var(--pink-rose);
        }

        /* ----- categories : pill style girly ----- */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .cat-card {
            background: white;
            border-radius: 80px;
            padding: 18px 8px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.5);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--pink-mid);
        }

        .cat-card .icon-wrap {
            width: 48px;
            height: 48px;
            border-radius: 60px;
            background: var(--pink-soft);
            display: grid;
            place-items: center;
            margin: 0 auto 8px;
            font-size: 20px;
            color: var(--rose-dark);
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrap {
            background: var(--pink-rose);
            color: white;
        }

        .cat-card h4 {
            font-size: 14px;
            font-weight: 600;
            color: var(--text);
        }

        .cat-card .count {
            font-size: 11px;
            color: var(--muted);
        }

        /* ----- product cards : girly & soft ----- */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: white;
            border-radius: 36px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.6);
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--pink-mid);
        }

        .product-card .img-wrap {
            background: #fdf2f5;
            aspect-ratio: 1/1;
            position: relative;
            overflow: hidden;
        }

        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }

        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--pink-rose);
            color: white;
            font-size: 10px;
            font-weight: 600;
            padding: 3px 14px;
            border-radius: 40px;
            letter-spacing: 0.5px;
        }

        .product-card .badge.sale {
            background: #fad5d0;
            color: var(--text);
        }

        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 34px;
            height: 34px;
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(4px);
            border-radius: 40px;
            border: none;
            color: var(--text-soft);
            transition: var(--transition);
            font-size: 14px;
            display: grid;
            place-items: center;
        }

        .product-card .wish-btn:hover {
            background: white;
            color: var(--pink-rose);
            transform: scale(1.08);
        }

        .product-card .body {
            padding: 16px 18px 8px;
            flex: 1;
        }

        .product-card .body .category-tag {
            font-size: 11px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }

        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            margin: 4px 0 6px;
            line-height: 1.3;
        }

        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--text);
        }

        .product-card .body .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .product-card .body .rating {
            color: #f0b0b0;
            font-size: 13px;
            margin-top: 4px;
        }

        .product-card .body .rating span {
            color: var(--muted);
            margin-left: 4px;
        }

        .product-card .footer {
            padding: 4px 18px 18px;
            display: flex;
            gap: 8px;
        }

        .product-card .footer .add-btn {
            flex: 1;
            padding: 10px 0;
            border-radius: 60px;
            background: var(--pink-soft);
            color: var(--rose-dark);
            font-weight: 600;
            font-size: 13px;
            border: none;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .product-card .footer .add-btn:hover {
            background: var(--pink-rose);
            color: white;
        }

        .product-card .footer .add-btn.added {
            background: #c9d9d0;
            color: white;
        }

        /* ----- DEAL : romantic & elegant ----- */
        .deal-wrap {
            display: flex;
            background: white;
            border-radius: 44px;
            overflow: hidden;
            box-shadow: var(--shadow);
            border: 1px solid rgba(255, 255, 255, 0.6);
        }

        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #f8e4ea;
            min-height: 240px;
        }

        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-wrap .deal-content {
            padding: 32px 34px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-wrap .deal-content .tag {
            background: var(--pink-soft);
            color: var(--rose-dark);
            padding: 4px 18px;
            border-radius: 60px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 8px;
        }

        .deal-wrap .deal-content h3 {
            font-family: var(--font-serif);
            font-size: 28px;
            font-weight: 400;
        }

        .deal-wrap .deal-content .desc {
            color: var(--text-soft);
            font-size: 14px;
            margin: 4px 0 12px;
        }

        .deal-wrap .deal-content .price-big {
            font-size: 30px;
            font-weight: 700;
            color: var(--text);
        }

        .deal-wrap .deal-content .price-big .old {
            font-size: 18px;
            font-weight: 400;
            color: var(--muted);
            text-decoration: line-through;
            margin-left: 10px;
        }

        .deal-wrap .deal-content .stock {
            font-size: 13px;
            color: var(--muted);
            margin: 2px 0 8px;
        }

        .deal-wrap .deal-content .stock strong {
            color: var(--rose-dark);
        }

        .timer-grid {
            display: flex;
            gap: 10px;
            margin: 14px 0 18px;
        }

        .timer-box {
            background: var(--bg);
            padding: 8px 14px;
            border-radius: 20px;
            min-width: 60px;
            text-align: center;
        }

        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
            color: var(--text);
            line-height: 1.2;
        }

        .timer-box .label {
            font-size: 10px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ----- testimonials : soft scroll ----- */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }

        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--pink-mid);
            border-radius: 20px;
        }

        .testimonial-card {
            flex: 0 0 300px;
            background: white;
            border-radius: 36px;
            padding: 24px 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.6);
        }

        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }

        .testimonial-card .stars {
            color: #f0b0b0;
            font-size: 15px;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }

        .testimonial-card blockquote {
            font-size: 14px;
            line-height: 1.6;
            color: var(--text);
            font-style: italic;
            margin-bottom: 12px;
        }

        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .testimonial-card .author .avatar {
            width: 40px;
            height: 40px;
            border-radius: 60px;
            object-fit: cover;
            background: var(--pink-soft);
        }

        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }

        .testimonial-card .author .role {
            font-size: 12px;
            color: var(--muted);
        }

        /* ----- newsletter : pretty & pink ----- */
        .newsletter-wrap {
            background: linear-gradient(145deg, #fcecf2, #f9e0e9);
            border-radius: 48px;
            padding: 40px 44px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 24px;
            border: 1px solid rgba(255, 255, 255, 0.6);
        }

        .newsletter-wrap .text h3 {
            font-family: var(--font-serif);
            font-weight: 400;
            font-size: 24px;
        }

        .newsletter-wrap .text p {
            color: var(--text-soft);
            font-size: 14px;
            margin-top: 2px;
        }

        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 440px;
        }

        .newsletter-wrap form input {
            flex: 1;
            min-width: 180px;
            padding: 12px 20px;
            border-radius: 60px;
            border: 1.5px solid rgba(232, 160, 180, 0.2);
            background: white;
            font-size: 14px;
            transition: var(--transition);
            outline: none;
        }

        .newsletter-wrap form input:focus {
            border-color: var(--pink-rose);
            box-shadow: 0 0 0 4px rgba(232, 160, 180, 0.1);
        }

        .newsletter-wrap form .btn {
            background: var(--pink-rose);
            color: white;
            border-color: var(--pink-rose);
            padding: 12px 28px;
        }

        .newsletter-wrap form .btn:hover {
            background: var(--rose-dark);
        }

        #newsletterMsg {
            width: 100%;
            margin-top: 6px;
            font-size: 13px;
            color: var(--rose-dark);
        }

        /* ----- footer : delicate ----- */
        footer {
            padding: 32px 0 16px;
            margin-top: 8px;
            border-top: 1px solid rgba(200, 120, 140, 0.10);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 24px;
        }

        .footer-grid .brand-col p {
            color: var(--text-soft);
            font-size: 14px;
            max-width: 260px;
            margin: 6px 0 12px;
        }

        .footer-grid .brand-col .socials {
            display: flex;
            gap: 8px;
        }

        .footer-grid .brand-col .socials a {
            width: 36px;
            height: 36px;
            border-radius: 40px;
            background: var(--pink-soft);
            display: grid;
            place-items: center;
            color: var(--rose-dark);
            transition: var(--transition);
            font-size: 14px;
            text-decoration: none;
        }

        .footer-grid .brand-col .socials a:hover {
            background: var(--pink-rose);
            color: white;
        }

        .footer-grid .col h5 {
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 12px;
            color: var(--text);
        }

        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .footer-grid .col ul a {
            color: var(--text-soft);
            font-size: 13px;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-grid .col ul a:hover {
            color: var(--rose-dark);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 14px;
            border-top: 1px solid rgba(200, 120, 140, 0.08);
            color: var(--muted);
            font-size: 12px;
        }

        /* ----- responsive ----- */
        @media (max-width: 1000px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 780px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .hero h1 {
                font-size: 32px;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 180px;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 24px;
            }
        }

        @media (max-width: 500px) {
            .hero {
                padding: 32px 20px;
            }
            .hero h1 {
                font-size: 26px;
            }
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .deal-wrap .deal-content {
                padding: 20px;
            }
            .newsletter-wrap {
                padding: 28px 20px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 16px;
            }
            .container {
                padding: 0 12px;
            }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:10px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-feather-alt"></i>
                    <span>Velora<span class="accent">.</span></span>
                </a>
            </div>

            <ul class="nav-links">
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#categories">Shop</a></li>
                <li><a href="#products">New</a></li>
                <li><a href="#deals">Offers</a></li>
                <li><a href="#testimonials">Stories</a></li>
            </ul>

            <div class="header-actions">
                <button class="icon-btn" aria-label="search"><i class="far fa-search"></i></button>
                <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
                <div class="cart-wrap">
                    <button class="icon-btn" id="cartBtn" aria-label="cart">
                        <i class="fas fa-shopping-bag"></i>
                    </button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>

        <!-- mobile menu -->
        <div id="mobileMenu" class="container" style="display:none;">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-tag"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-sparkles"></i> New</a></li>
                <li><a href="#deals"><i class="fas fa-clock"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </div>
    </header>

    <!-- MAIN -->
    <main>
        <!-- HERO -->
        <section class="container hero">
            <div>
                <span class="badge"><i class="fas fa-feather-alt"></i> spring edit</span>
                <h1>Where <i>style</i> meets <br />everyday grace.</h1>
                <p>Curated pieces, soft tones, and timeless elegance — designed for the modern soul.</p>
                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore</button>
                    <button class="btn btn-soft" id="exploreDeals"><i class="fas fa-gift"></i> Offers</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div><h2>Categories</h2><div class="sub">find your vibe</div></div>
                    <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div><h2>New arrivals</h2><div class="sub">fresh & lovely</div></div>
                    <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div><h2>✨ golden hour</h2><div class="sub">limited edition</div></div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80" alt="soft sneaker" loading="lazy" />
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-sparkles"></i> just dropped</span>
                        <h3>Velora Luxe Sneaker</h3>
                        <p class="desc">Minimal, plush, and made for everyday elegance.</p>
                        <div>
                            <span class="price-big">$129 <span class="old">$189</span></span>
                        </div>
                        <p class="stock">only <strong>8</strong> pairs left</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header">
                    <div><h2>Kind words</h2><div class="sub">from our community</div></div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3>join the circle</h3>
                        <p>gentle notes, early access & little joys</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="your email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-feather-alt"></i> Velora<span class="accent">.</span></div>
                    <p>classy, aesthetic, & crafted with love.</p>
                    <div class="socials">
                        <a href="#" aria-label="instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="pinterest"><i class="fab fa-pinterest-p"></i></a>
                        <a href="#" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="col"><h5>Shop</h5><ul><li><a href="#">New</a></li><li><a href="#">Best sellers</a></li><li><a href="#">Gifts</a></li></ul></div>
                <div class="col"><h5>About</h5><ul><li><a href="#">Our story</a></li><li><a href="#">Sustainability</a></li><li><a href="#">Press</a></li></ul></div>
                <div class="col"><h5>Support</h5><ul><li><a href="#">FAQ</a></li><li><a href="#">Shipping</a></li><li><a href="#">Contact</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> Velora — all rights reserved.</div>
        </div>
    </footer>

    <script>
        // ---- data ----
        const CATEGORIES = [
            { id: 'wear', name: 'Wear', icon: 'fa-tshirt', count: 34 },
            { id: 'foot', name: 'Footwear', icon: 'fa-shoe-prints', count: 22 },
            { id: 'bags', name: 'Bags', icon: 'fa-bag-shopping', count: 18 },
            { id: 'jewelry', name: 'Jewelry', icon: 'fa-gem', count: 27 },
            { id: 'beauty', name: 'Beauty', icon: 'fa-spa', count: 15 },
            { id: 'home', name: 'Home', icon: 'fa-couch', count: 20 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'Silk Blend Dress', price: 148, oldPrice: 198, rating: 5, reviews: 67, badge: 'new',
                img: 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?auto=format&fit=crop&w=600&q=80',
                category: 'Wear' },
            { id: 2, title: 'Leather Crossbody', price: 89, rating: 4, reviews: 42, badge: '',
                img: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80',
                category: 'Bags' },
            { id: 3, title: 'Pearl Drop Earrings', price: 59, oldPrice: 89, rating: 5, reviews: 93, badge: 'sale',
                img: 'https://images.unsplash.com/photo-1535632066927-ab7f9ab60b8e?auto=format&fit=crop&w=600&q=80',
                category: 'Jewelry' },
            { id: 4, title: 'Linen Jumpsuit', price: 132, rating: 4, reviews: 31, badge: '',
                img: 'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?auto=format&fit=crop&w=600&q=80',
                category: 'Wear' },
            { id: 5, title: 'Ceramic Vase', price: 76, rating: 5, reviews: 29, badge: 'new',
                img: 'https://images.unsplash.com/photo-1612198188940-1a844a94256b?auto=format&fit=crop&w=600&q=80',
                category: 'Home' },
            { id: 6, title: 'Gold Hoops', price: 44, oldPrice: 68, rating: 4, reviews: 77, badge: 'sale',
                img: 'https://images.unsplash.com/photo-1535632066927-ab7f9ab60b8e?auto=format&fit=crop&w=600&q=80',
                category: 'Jewelry' },
            { id: 7, title: 'Bamboo Tote', price: 97, rating: 5, reviews: 54, badge: '',
                img: 'https://images.unsplash.com/photo-1544816155-12df9643f363?auto=format&fit=crop&w=600&q=80',
                category: 'Bags' },
            { id: 8, title: 'Aromatherapy Set', price: 62, rating: 4, reviews: 48, badge: '',
                img: 'https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?auto=format&fit=crop&w=600&q=80',
                category: 'Beauty' }
        ];

        const TESTIMONIALS = [{
            name: 'Lena M.',
            role: 'slow living advocate',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Everything feels so thoughtful and beautiful. My new favorite shop.',
            stars: 5
        }, {
            name: 'Noah W.',
            role: 'designer',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'The quality is outstanding. I love the minimalist, elegant aesthetic.',
            stars: 5
        }, {
            name: 'Mia C.',
            role: 'curator',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Such a charming experience — from browsing to unboxing. 10/10.',
            stars: 5
        }, {
            name: 'Eli R.',
            role: 'writer',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'I always find something special here. The curation is impeccable.',
            stars: 4
        }];

        // ---- state ----
        let cartCount = 0;

        // ---- refs ----
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const testimonialsList = document.getElementById('testimonialsList');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');

        // ---- helpers ----
        function escapeHtml(t) { return String(t).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;',
                "'": '&#39;' } [s])); }

        function updateCart() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.25)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(id, btn) {
            const p = PRODUCTS.find(x => x.id === id);
            if (!p) return;
            cartCount++;
            updateCart();
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> added';
                btn.classList.add('added');
                setTimeout(() => { btn.innerHTML = orig;
                    btn.classList.remove('added'); }, 1400);
            }
        }

        // ---- render ----
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(c => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${c.icon}"></i></div>
                    <h4>${c.name}</h4>
                    <div class="count">${c.count} items</div>
                `;
                el.addEventListener('click', () => {
                    const q = c.name.toLowerCase();
                    const filtered = PRODUCTS.filter(p => p.category.toLowerCase().includes(q));
                    renderProducts(filtered);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                    `<p style="grid-column:1/-1;text-align:center;padding:30px;color:var(--muted);">nothing here yet ✧</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row"><span class="price">$${p.price}</span>${oldHtml}</div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    addToCart(Number(this.dataset.id), this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ---- timer ----
        (function dealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (22 * 60 + 30) * 60 * 1000);
            const el = (id) => document.getElementById(id);
            setInterval(() => {
                const diff = target - new Date();
                if (diff <= 0) { el('dealDays').textContent = '0';
                    el('dealHours').textContent = '00';
                    el('dealMinutes').textContent = '00';
                    el('dealSeconds').textContent = '00'; return; }
                const d = Math.floor(diff / (24 * 3600 * 1000));
                const h = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const m = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const s = Math.floor((diff % (60 * 1000)) / 1000);
                el('dealDays').textContent = d;
                el('dealHours').textContent = String(h).padStart(2, '0');
                el('dealMinutes').textContent = String(m).padStart(2, '0');
                el('dealSeconds').textContent = String(s).padStart(2, '0');
            }, 1000);
        })();

        // ---- events ----
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCart();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> added!';
            this.style.background = '#c9d9d0';
            setTimeout(() => { this.innerHTML = orig;
                this.style.background = ''; }, 1500);
        });

        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛍️ your cart · ${cartCount} item${cartCount !== 1 ? 's' : ''}`);
        });

        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'please enter a valid email ✧';
                newsletterMsg.style.color = '#d4a0a0';
                return;
            }
            newsletterMsg.textContent = '🎐 thank you, sweet one!';
            newsletterMsg.style.color = '#b5a6b5';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3000);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // ---- init ----
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCart();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) { mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; }
        });

        console.log('✧ Velora — girly & aesthetic demo ✧');
    </script>
</body>
</html>
