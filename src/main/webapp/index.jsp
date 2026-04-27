<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUXORA — Premium E‑Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #0a0a0f;
            --bg-secondary: #12121a;
            --bg-card: #1a1a24;
            --bg-elevated: #22222e;
            --text-primary: #ffffff;
            --text-secondary: #a0a0b0;
            --text-muted: #6b6b7a;
            --accent: #d4a574;
            --accent-dark: #b8865e;
            --accent-glow: rgba(212, 165, 116, 0.15);
            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;
            --border: #2a2a35;
            --shadow-sm: 0 2px 4px rgba(0, 0, 0, 0.3);
            --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.4);
            --shadow-lg: 0 8px 24px rgba(0, 0, 0, 0.5);
            --shadow-xl: 0 20px 40px rgba(0, 0, 0, 0.6);
            --radius-sm: 8px;
            --radius-md: 12px;
            --radius-lg: 16px;
            --radius-xl: 24px;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.5;
            overflow-x: hidden;
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: var(--accent-dark);
        }

        /* Navigation */
        .navbar {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .nav-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.75rem;
            font-weight: 800;
            letter-spacing: -0.5px;
        }

        .logo span {
            color: var(--accent);
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-secondary);
            font-weight: 500;
            transition: color 0.2s;
        }

        .nav-links a:hover,
        .nav-links a.active {
            color: var(--accent);
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--bg-elevated);
            border-radius: 60px;
            padding: 0.5rem 1rem;
            gap: 0.5rem;
            border: 1px solid var(--border);
        }

        .search-wrapper input {
            background: none;
            border: none;
            color: var(--text-primary);
            padding: 0.5rem;
            width: 200px;
            outline: none;
        }

        .search-wrapper button {
            background: none;
            border: none;
            color: var(--text-secondary);
            cursor: pointer;
        }

        .header-actions {
            display: flex;
            gap: 1.5rem;
            align-items: center;
        }

        .icon-btn {
            background: none;
            border: none;
            color: var(--text-secondary);
            font-size: 1.25rem;
            cursor: pointer;
            transition: color 0.2s;
            position: relative;
        }

        .icon-btn:hover {
            color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--accent);
            color: var(--bg-primary);
            border-radius: 50%;
            width: 18px;
            height: 18px;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
        }

        /* Hero Section */
        .hero {
            background: radial-gradient(ellipse at 50% 30%, rgba(212, 165, 116, 0.15) 0%, transparent 70%);
            padding: 80px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 80%;
            height: 200%;
            background: radial-gradient(circle, var(--accent-glow) 0%, transparent 70%);
            transform: rotate(15deg);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            max-width: 800px;
            margin: 0 auto;
        }

        .hero-badge {
            display: inline-block;
            background: var(--accent-glow);
            backdrop-filter: blur(10px);
            padding: 0.5rem 1rem;
            border-radius: 50px;
            font-size: 0.875rem;
            margin-bottom: 1.5rem;
            border: 1px solid rgba(212, 165, 116, 0.3);
        }

        .hero h1 {
            font-size: 4rem;
            font-weight: 800;
            margin-bottom: 1rem;
            line-height: 1.2;
        }

        .hero .highlight {
            background: linear-gradient(135deg, var(--accent) 0%, #fbbf24 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .hero p {
            font-size: 1.125rem;
            color: var(--text-secondary);
            margin-bottom: 2rem;
        }

        .hero-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
        }

        .btn-primary {
            background: var(--accent);
            color: var(--bg-primary);
            border: none;
            padding: 0.875rem 2rem;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(212, 165, 116, 0.3);
        }

        .btn-secondary {
            background: transparent;
            border: 1px solid var(--accent);
            color: var(--accent);
            padding: 0.875rem 2rem;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }

        .btn-secondary:hover {
            background: var(--accent-glow);
            transform: translateY(-2px);
        }

        /* Stats */
        .stats {
            max-width: 1200px;
            margin: -40px auto 60px;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1.5rem;
            padding: 0 2rem;
            position: relative;
            z-index: 2;
        }

        .stat-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 1.5rem;
            text-align: center;
            transition: all 0.3s;
        }

        .stat-card:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
        }

        .stat-icon {
            font-size: 2rem;
            color: var(--accent);
            margin-bottom: 0.5rem;
        }

        .stat-number {
            font-size: 1.75rem;
            font-weight: 800;
        }

        .stat-label {
            color: var(--text-muted);
            font-size: 0.875rem;
        }

        /* Main Container */
        .main-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        /* Section */
        .section {
            padding: 4rem 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-header h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .section-header p {
            color: var(--text-muted);
        }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 1.5rem;
        }

        .category-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 2rem 1rem;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
        }

        .category-card:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
            background: var(--accent-glow);
        }

        .category-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .category-card h3 {
            font-size: 1.125rem;
            font-weight: 600;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
        }

        .product-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: all 0.3s;
        }

        .product-card:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
            box-shadow: var(--shadow-lg);
        }

        .product-image {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 1.5rem;
        }

        .product-title {
            font-size: 1.125rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .product-category {
            color: var(--text-muted);
            font-size: 0.875rem;
            margin-bottom: 0.5rem;
        }

        .product-rating {
            color: var(--warning);
            font-size: 0.875rem;
            margin-bottom: 0.5rem;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .current-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--accent);
        }

        .old-price {
            color: var(--text-muted);
            text-decoration: line-through;
            font-size: 0.875rem;
        }

        .add-to-cart {
            width: 100%;
            background: var(--accent);
            color: var(--bg-primary);
            border: none;
            padding: 0.75rem;
            border-radius: var(--radius-md);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }

        .add-to-cart:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        /* Flash Sale */
        .flash-sale {
            background: linear-gradient(135deg, var(--bg-elevated) 0%, var(--bg-card) 100%);
            border-radius: var(--radius-xl);
            margin: 4rem 0;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            align-items: center;
        }

        .sale-content {
            padding: 3rem;
        }

        .sale-badge {
            display: inline-block;
            background: var(--danger);
            color: white;
            padding: 0.25rem 1rem;
            border-radius: 50px;
            font-size: 0.75rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .sale-content h2 {
            font-size: 2rem;
            margin-bottom: 0.5rem;
        }

        .sale-content p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
        }

        .timer {
            display: flex;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .timer-box {
            background: var(--bg-primary);
            padding: 1rem;
            border-radius: var(--radius-md);
            text-align: center;
            min-width: 70px;
        }

        .timer-number {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--accent);
        }

        .timer-label {
            font-size: 0.75rem;
            color: var(--text-muted);
        }

        .sale-price {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1rem;
        }

        .sale-current {
            font-size: 2rem;
            font-weight: 800;
            color: var(--accent);
        }

        .sale-old {
            font-size: 1.125rem;
            color: var(--text-muted);
            text-decoration: line-through;
        }

        .sale-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2rem;
        }

        .testimonial-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 2rem;
            transition: all 0.3s;
        }

        .testimonial-card:hover {
            border-color: var(--accent);
            transform: translateY(-4px);
        }

        .testimonial-rating {
            color: var(--warning);
            margin-bottom: 1rem;
        }

        .testimonial-text {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .testimonial-author img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-name {
            font-weight: 600;
        }

        .author-title {
            font-size: 0.875rem;
            color: var(--text-muted);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--accent-glow) 0%, transparent 100%);
            border-radius: var(--radius-xl);
            padding: 4rem;
            text-align: center;
        }

        .newsletter h3 {
            font-size: 1.75rem;
            margin-bottom: 0.5rem;
        }

        .newsletter p {
            color: var(--text-secondary);
            margin-bottom: 2rem;
        }

        .newsletter-form {
            display: flex;
            gap: 1rem;
            justify-content: center;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 0.875rem 1rem;
            background: var(--bg-elevated);
            border: 1px solid var(--border);
            border-radius: 50px;
            color: var(--text-primary);
            outline: none;
        }

        .newsletter-form input:focus {
            border-color: var(--accent);
        }

        /* Footer */
        .footer {
            background: var(--bg-secondary);
            border-top: 1px solid var(--border);
            padding: 4rem 0 2rem;
            margin-top: 4rem;
        }

        .footer-content {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .footer-section h4 {
            margin-bottom: 1rem;
        }

        .footer-section p {
            color: var(--text-muted);
            line-height: 1.6;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 0.5rem;
        }

        .footer-section a {
            color: var(--text-muted);
            text-decoration: none;
            transition: color 0.2s;
        }

        .footer-section a:hover {
            color: var(--accent);
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .social-links a {
            width: 40px;
            height: 40px;
            background: var(--bg-elevated);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
        }

        .social-links a:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            margin-top: 2rem;
            border-top: 1px solid var(--border);
            color: var(--text-muted);
            font-size: 0.875rem;
        }

        /* Toast */
        .toast {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            background: var(--success);
            color: white;
            padding: 1rem 1.5rem;
            border-radius: var(--radius-md);
            display: none;
            z-index: 1100;
            animation: slideIn 0.3s ease;
        }

        @keyframes slideIn {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        /* Responsive */
        @media (max-width: 968px) {
            .nav-links {
                display: none;
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .flash-sale {
                grid-template-columns: 1fr;
            }

            .sale-content {
                order: 2;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">LUXO<span>RA</span></div>
            <div class="nav-links">
                <a href="#" class="active">Home</a>
                <a href="#">Shop</a>
                <a href="#">Collections</a>
                <a href="#">About</a>
            </div>
            <div class="search-wrapper">
                <input type="text" id="searchInput" placeholder="Search products...">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <button class="icon-btn"><i class="far fa-user"></i></button>
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <button class="icon-btn cart-btn" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </nav>

    <section class="hero">
        <div class="hero-content">
            <div class="hero-badge">✨ Limited Edition</div>
            <h1>Luxury Redefined.<br><span class="highlight">Timeless Elegance</span></h1>
            <p>Discover curated collections from world-class brands. Elevate your style with premium products.</p>
            <div class="hero-buttons">
                <button class="btn-primary" id="shopNowBtn">Shop Now →</button>
                <button class="btn-secondary" id="exploreBtn">Explore Collection</button>
            </div>
        </div>
    </section>

    <div class="stats">
        <div class="stat-card">
            <div class="stat-icon"><i class="fas fa-gem"></i></div>
            <div class="stat-number">500+</div>
            <div class="stat-label">Premium Products</div>
        </div>
        <div class="stat-card">
            <div class="stat-icon"><i class="fas fa-users"></i></div>
            <div class="stat-number">50K+</div>
            <div class="stat-label">Happy Customers</div>
        </div>
        <div class="stat-card">
            <div class="stat-icon"><i class="fas fa-truck"></i></div>
            <div class="stat-number">Free Shipping</div>
            <div class="stat-label">Worldwide Delivery</div>
        </div>
        <div class="stat-card">
            <div class="stat-icon"><i class="fas fa-star"></i></div>
            <div class="stat-number">4.9</div>
            <div class="stat-label">Customer Rating</div>
        </div>
    </div>

    <div class="main-container">
        <section class="section">
            <div class="section-header">
                <h2>Shop by Category</h2>
                <p>Find exactly what you're looking for</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="section">
            <div class="section-header">
                <h2>Trending Now</h2>
                <p>Most popular products this week</p>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </div>

    <div class="main-container">
        <div class="flash-sale" id="deals">
            <div class="sale-content">
                <div class="sale-badge">⚡ FLASH SALE</div>
                <h2>Premium Collection</h2>
                <p>Limited time offer - Get up to 40% off on selected items</p>
                <div class="timer">
                    <div class="timer-box">
                        <div class="timer-number" id="days">00</div>
                        <div class="timer-label">Days</div>
                    </div>
                    <div class="timer-box">
                        <div class="timer-number" id="hours">00</div>
                        <div class="timer-label">Hours</div>
                    </div>
                    <div class="timer-box">
                        <div class="timer-number" id="minutes">00</div>
                        <div class="timer-label">Mins</div>
                    </div>
                    <div class="timer-box">
                        <div class="timer-number" id="seconds">00</div>
                        <div class="timer-label">Secs</div>
                    </div>
                </div>
                <div class="sale-price">
                    <span class="sale-current">$999</span>
                    <span class="sale-old">$1,599</span>
                </div>
                <button class="btn-primary" id="dealBtn">Grab Deal Now →</button>
            </div>
            <div class="sale-image">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Sale Product">
            </div>
        </div>
    </div>

    <div class="main-container">
        <section class="section">
            <div class="section-header">
                <h2>What Our Customers Say</h2>
                <p>Join thousands of satisfied customers</p>
            </div>
            <div class="testimonials-grid" id="testimonialsGrid"></div>
        </section>

        <section class="newsletter">
            <h3>Stay in the Loop</h3>
            <p>Subscribe to get exclusive offers and early access to new arrivals</p>
            <form class="newsletter-form" id="newsletterForm">
                <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
                <button type="submit" class="btn-primary">Subscribe →</button>
            </form>
            <div id="newsletterMsg" style="margin-top: 1rem; display: none;"></div>
        </section>
    </div>

    <footer class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h4>LUXORA</h4>
                <p>Premium destination for luxury products. Curated with care, delivered with precision.</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>
            </div>
            <div class="footer-section">
                <h4>Shop</h4>
                <ul>
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Best Sellers</a></li>
                    <li><a href="#">Sale</a></li>
                    <li><a href="#">Gift Cards</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Support</h4>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Size Guide</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>Contact</h4>
                <ul>
                    <li><i class="fas fa-envelope"></i> hello@luxora.com</li>
                    <li><i class="fas fa-phone"></i> +1 234 567 890</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 LUXORA. All rights reserved.</p>
        </div>
    </footer>

    <div class="toast" id="toast"></div>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Electronics', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Computers', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Fashion', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=400', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=400', category: 'laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=400', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=400', category: 'gadgets' },
            { id: 6, title: 'Designer Handbag', price: 450, oldPrice: 650, rating: 5, reviews: 189, badge: 'Sale', img: 'https://images.unsplash.com/photo-1584917865442-de89df76afd3?w=400', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?w=400', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=400', category: 'gadgets' }
        ];

        const TESTIMONIALS = [
            { name: 'Sarah Johnson', role: 'Verified Buyer', text: 'Absolutely love the quality! The packaging was beautiful and shipping was super fast.', rating: 5, avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=100' },
            { name: 'Michael Chen', role: 'Frequent Shopper', text: 'Great selection of products. Customer service is responsive and helpful.', rating: 5, avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100' },
            { name: 'Emma Davis', role: 'Designer', text: 'The aesthetic of this store is incredible. Will definitely shop here again!', rating: 4, avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100' }
        ];

        let cartCount = 0;

        function showToast(message) {
            const toast = document.getElementById('toast');
            toast.textContent = message;
            toast.style.display = 'block';
            setTimeout(() => toast.style.display = 'none', 3000);
        }

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = CATEGORIES.map(cat => `
                <div class="category-card" data-category="${cat.name}">
                    <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                    <h3>${cat.name}</h3>
                </div>
            `).join('');
            document.querySelectorAll('.category-card').forEach(card => {
                card.addEventListener('click', () => {
                    document.getElementById('searchInput').value = card.dataset.category;
                    filterProducts(card.dataset.category);
                    showToast(`Showing ${card.dataset.category} products`);
                });
            });
        }

        function renderProducts(products) {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = products.map(p => `
                <div class="product-card">
                    <img src="${p.img}" alt="${p.title}" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">${p.title}</h3>
                        <div class="product-category">${p.category}</div>
                        <div class="product-rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} (${p.reviews})</div>
                        <div class="product-price">
                            <span class="current-price">$${p.price}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                        </div>
                        <button class="add-to-cart" data-id="${p.id}">Add to Cart</button>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    const product = PRODUCTS.find(p => p.id === id);
                    cartCount++;
                    document.getElementById('cartCount').textContent = cartCount;
                    showToast(`${product.title} added to cart!`);
                    btn.textContent = 'Added ✓';
                    setTimeout(() => btn.textContent = 'Add to Cart', 1500);
                });
            });
        }

        function renderTestimonials() {
            const grid = document.getElementById('testimonialsGrid');
            grid.innerHTML = TESTIMONIALS.map(t => `
                <div class="testimonial-card">
                    <div class="testimonial-rating">${'★'.repeat(t.rating)}${'☆'.repeat(5 - t.rating)}</div>
                    <p class="testimonial-text">"${t.text}"</p>
                    <div class="testimonial-author">
                        <img src="${t.avatar}" alt="${t.name}">
                        <div>
                            <div class="author-name">${t.name}</div>
                            <div class="author-title">${t.role}</div>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        function filterProducts(query) {
            const filtered = PRODUCTS.filter(p => 
                p.title.toLowerCase().includes(query.toLowerCase()) || 
                p.category.toLowerCase().includes(query.toLowerCase())
            );
            renderProducts(filtered);
        }

        // Timer
        function startTimer() {
            const target = new Date();
            target.setDate(target.getDate() + 2);
            target.setHours(23, 59, 59);
            function update() {
                const diff = target - new Date();
                if (diff <= 0) return;
                document.getElementById('days').textContent = String(Math.floor(diff / 86400000)).padStart(2, '0');
                document.getElementById('hours').textContent = String(Math.floor((diff % 86400000) / 3600000)).padStart(2, '0');
                document.getElementById('minutes').textContent = String(Math.floor((diff % 3600000) / 60000)).padStart(2, '0');
                document.getElementById('seconds').textContent = String(Math.floor((diff % 60000) / 1000)).padStart(2, '0');
            }
            update();
            setInterval(update, 1000);
        }

        // Event Listeners
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
        document.getElementById('searchInput').addEventListener('keypress', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });
        document.getElementById('shopNowBtn').addEventListener('click', () => document.querySelector('.products-grid').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('dealBtn').addEventListener('click', () => {
            cartCount++;
            document.getElementById('cartCount').textContent = cartCount;
            showToast('Deal added to cart!');
        });
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value;
            const msg = document.getElementById('newsletterMsg');
            if (email && email.includes('@')) {
                msg.style.display = 'block';
                msg.style.color = '#10b981';
                msg.textContent = '✓ Thanks for subscribing!';
                document.getElementById('newsletterEmail').value = '';
                setTimeout(() => msg.style.display = 'none', 3000);
            }
        });

        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        startTimer();
    </script>
</body>
</html>
