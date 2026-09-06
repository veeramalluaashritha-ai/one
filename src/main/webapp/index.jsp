<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>💌 a little proposal · for you</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />
    <style>
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
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 0 16px;
            width: 100%;
        }

        /* ----- header : dreamy & transparent ----- */
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
            font-size: 24px;
            font-weight: 400;
            letter-spacing: -0.3px;
            color: var(--text);
        }

        .brand i {
            color: var(--pink-rose);
            font-size: 22px;
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

        /* ----- HERO : proposal vibes ----- */
        .hero {
            background: linear-gradient(145deg, #fcecf2, #f9e0e9);
            border-radius: 48px;
            padding: 40px 32px;
            margin: 12px 0 20px;
            position: relative;
            overflow: hidden;
            box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.6);
            text-align: center;
        }

        .hero::after {
            content: "♡";
            position: absolute;
            right: 24px;
            bottom: 12px;
            font-size: 72px;
            opacity: 0.08;
            color: var(--pink-rose);
            transform: rotate(-4deg);
        }

        .hero h1 {
            font-family: var(--font-serif);
            font-size: 38px;
            font-weight: 400;
            line-height: 1.2;
            letter-spacing: -0.3px;
        }

        .hero h1 i {
            color: var(--rose-dark);
            font-style: italic;
        }

        .hero .sub-badge {
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

        .hero .big-heart {
            font-size: 52px;
            color: var(--pink-rose);
            margin: 6px 0 12px;
            display: block;
        }

        .hero p {
            color: var(--text-soft);
            max-width: 480px;
            margin: 8px auto 20px;
            font-size: 15px;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            justify-content: center;
        }

        /* ----- buttons : cute & rounded ----- */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 32px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 15px;
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
            padding: 8px 20px;
            font-size: 13px;
        }

        .btn-block {
            width: 100%;
            justify-content: center;
        }

        /* ----- stages / cards ----- */
        .section {
            padding: 20px 0 30px;
        }

        .stage-card {
            background: white;
            border-radius: 36px;
            padding: 28px 30px 32px;
            box-shadow: var(--shadow);
            border: 1px solid rgba(255, 255, 255, 0.6);
            margin-bottom: 24px;
            transition: var(--transition);
            text-align: center;
        }

        .stage-card:hover {
            box-shadow: var(--shadow-hover);
            border-color: var(--pink-mid);
        }

        .stage-card .emoji-big {
            font-size: 48px;
            display: block;
            margin-bottom: 6px;
        }

        .stage-card h3 {
            font-family: var(--font-serif);
            font-size: 26px;
            font-weight: 400;
            margin: 4px 0 6px;
        }

        .stage-card .sub {
            color: var(--text-soft);
            font-size: 14px;
            margin-bottom: 16px;
        }

        .stage-card .options {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            justify-content: center;
            margin-top: 8px;
        }

        .stage-card .options .btn {
            min-width: 120px;
            justify-content: center;
        }

        .stage-card .progress {
            margin: 16px 0 6px;
            font-size: 13px;
            color: var(--muted);
        }

        .stage-card .progress .dots {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin-top: 8px;
        }

        .stage-card .progress .dot {
            width: 10px;
            height: 10px;
            border-radius: 20px;
            background: var(--pink-soft);
            transition: var(--transition);
        }

        .stage-card .progress .dot.active {
            background: var(--pink-rose);
            width: 24px;
        }

        .stage-card .progress .dot.done {
            background: var(--rose-dark);
        }

        .confetti-message {
            font-size: 18px;
            color: var(--rose-dark);
            font-weight: 500;
            margin-top: 12px;
        }

        .hidden-stage {
            display: none;
        }

        /* ----- footer ----- */
        footer {
            padding: 20px 0 12px;
            margin-top: auto;
            border-top: 1px solid rgba(200, 120, 140, 0.08);
            text-align: center;
            color: var(--muted);
            font-size: 12px;
        }

        /* ----- responsive ----- */
        @media (max-width: 700px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .hero h1 {
                font-size: 28px;
            }
            .stage-card {
                padding: 22px 18px;
            }
            .stage-card .options .btn {
                min-width: 100px;
                padding: 10px 18px;
                font-size: 13px;
            }
            .stage-card h3 {
                font-size: 22px;
            }
        }

        @media (max-width: 450px) {
            .hero {
                padding: 28px 16px;
            }
            .hero h1 {
                font-size: 24px;
            }
            .hero .big-heart {
                font-size: 38px;
            }
            .stage-card .options {
                flex-direction: column;
                align-items: center;
            }
            .stage-card .options .btn {
                width: 100%;
                max-width: 220px;
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
                <li><a href="#stage1">The Ask</a></li>
                <li><a href="#stage2">Clues</a></li>
                <li><a href="#stage3">Finally</a></li>
            </ul>

            <div class="header-actions">
                <button class="icon-btn" aria-label="heart"><i class="fas fa-heart" style="color:var(--pink-rose);"></i></button>
                <button class="icon-btn" aria-label="sparkle"><i class="fas fa-sparkles" style="color:var(--pink-rose);"></i></button>
            </div>
        </div>

        <!-- mobile menu -->
        <div id="mobileMenu" class="container" style="display:none;">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#stage1"><i class="fas fa-question"></i> The Ask</a></li>
                <li><a href="#stage2"><i class="fas fa-search"></i> Clues</a></li>
                <li><a href="#stage3"><i class="fas fa-check-circle"></i> Finally</a></li>
            </ul>
        </div>
    </header>

    <main>
        <!-- HERO : proposal intro -->
        <section class="container hero">
            <div>
                <span class="sub-badge"><i class="fas fa-feather-alt"></i> for you, only</span>
                <span class="big-heart">💌</span>
                <h1>i've been <i>thinking</i> about <br />you + me</h1>
                <p>there's something i've been wanting to ask you. but it's a little journey — are you ready?</p>
                <div class="hero-actions">
                    <button class="btn btn-primary" id="startAdventure"><i class="fas fa-arrow-right"></i> yes, let's go</button>
                    <button class="btn btn-soft" id="startAdventure2"><i class="fas fa-heart"></i> i'm curious</button>
                </div>
            </div>
        </section>

        <!-- STAGES (all in one flow) -->
        <section class="section" id="stageContainer">
            <div class="container">

                <!-- STAGE 1 : the first ask (no reject) -->
                <div class="stage-card" id="stage1">
                    <span class="emoji-big">🌷</span>
                    <h3>will you be my <br />little adventure?</h3>
                    <p class="sub">i have a feeling we'd be magic together.</p>
                    <div class="options">
                        <button class="btn btn-primary stage-btn" data-next="stage2">yes, tell me more</button>
                        <button class="btn btn-soft stage-btn" data-next="stage2">i'm intrigued</button>
                        <button class="btn btn-outline stage-btn" data-next="stage2">hmm, go on...</button>
                    </div>
                    <div class="progress">
                        <div class="dots">
                            <span class="dot active"></span>
                            <span class="dot"></span>
                            <span class="dot"></span>
                            <span class="dot"></span>
                        </div>
                    </div>
                </div>

                <!-- STAGE 2 : sweet confusion (no reject, only playful options) -->
                <div class="stage-card hidden-stage" id="stage2">
                    <span class="emoji-big">🍬</span>
                    <h3>wait, there's more</h3>
                    <p class="sub">i made a little list of reasons why you should say yes.<br /> but you can't say no — it's not allowed ✧</p>
                    <div class="options">
                        <button class="btn btn-primary stage-btn" data-next="stage3">okay, you're cute</button>
                        <button class="btn btn-soft stage-btn" data-next="stage3">i'm listening...</button>
                        <button class="btn btn-outline stage-btn" data-next="stage3">what else?</button>
                        <button class="btn btn-soft stage-btn" data-next="stage3">that's sweet</button>
                    </div>
                    <div class="progress">
                        <div class="dots">
                            <span class="dot done"></span>
                            <span class="dot active"></span>
                            <span class="dot"></span>
                            <span class="dot"></span>
                        </div>
                    </div>
                    <div style="margin-top:12px;font-size:13px;color:var(--muted);">
                        <i class="fas fa-arrow-left" style="opacity:0.3;"></i> no going back, only forward
                    </div>
                </div>

                <!-- STAGE 3 : almost there (still no reject) -->
                <div class="stage-card hidden-stage" id="stage3">
                    <span class="emoji-big">✨</span>
                    <h3>one last thing...</h3>
                    <p class="sub">i've been saving the best for last. <br />you're kind, brilliant, and honestly? i'd love to take you out.</p>
                    <div class="options">
                        <button class="btn btn-primary stage-btn" data-next="stage4">yes, i'd love that</button>
                        <button class="btn btn-soft stage-btn" data-next="stage4">you're making me blush</button>
                        <button class="btn btn-outline stage-btn" data-next="stage4">okay, but you're paying</button>
                        <button class="btn btn-soft stage-btn" data-next="stage4">i was hoping you'd ask</button>
                    </div>
                    <div class="progress">
                        <div class="dots">
                            <span class="dot done"></span>
                            <span class="dot done"></span>
                            <span class="dot active"></span>
                            <span class="dot"></span>
                        </div>
                    </div>
                </div>

                <!-- STAGE 4 : FINAL — no reject, only date confirmation -->
                <div class="stage-card hidden-stage" id="stage4">
                    <span class="emoji-big">🎉</span>
                    <h3>it's a date!</h3>
                    <p class="sub">you said yes (well, you kinda had to — but i'm so glad you did).</p>
                    <div style="font-size: 48px; margin: 8px 0;">🥂</div>
                    <p style="color:var(--text-soft); font-size: 15px; max-width: 380px; margin: 0 auto 16px;">
                        saturday, 7pm. i'll pick you up. wear something cute — you always do.
                    </p>
                    <div class="options" style="flex-direction:column; align-items:center; gap:10px;">
                        <button class="btn btn-primary btn-block" id="confirmDate" style="max-width:300px;">
                            <i class="fas fa-check-circle"></i> i'll be there
                        </button>
                        <button class="btn btn-soft btn-block" id="confirmDate2" style="max-width:300px;">
                            <i class="fas fa-heart"></i> can't wait
                        </button>
                        <div style="margin-top:6px; font-size:13px; color:var(--muted);">
                            <i class="fas fa-arrow-left" style="opacity:0.2;"></i> no take-backs, you're mine now
                        </div>
                    </div>
                    <div class="progress">
                        <div class="dots">
                            <span class="dot done"></span>
                            <span class="dot done"></span>
                            <span class="dot done"></span>
                            <span class="dot active"></span>
                        </div>
                    </div>
                    <div class="confetti-message" id="finalMessage">
                        <i class="fas fa-sparkles"></i> it's official ✧
                    </div>
                </div>

            </div>
        </section>

        <!-- extra cute note -->
        <section class="container" style="text-align:center; padding: 10px 0 30px;">
            <p style="color:var(--muted); font-size:13px; max-width:400px; margin:0 auto;">
                <i class="fas fa-feather-alt" style="color:var(--pink-rose);"></i>
                every step leads to something beautiful.
            </p>
        </section>
    </main>

    <!-- FOOTER -->
    <footer>
        <div class="container">
            <p>💕 made with a little courage & a lot of heart.</p>
        </div>
    </footer>

    <script>
        // ---- stage navigation (no reject, only forward) ----
        const stage1 = document.getElementById('stage1');
        const stage2 = document.getElementById('stage2');
        const stage3 = document.getElementById('stage3');
        const stage4 = document.getElementById('stage4');

        const allStages = [stage1, stage2, stage3, stage4];

        function showStage(id) {
            allStages.forEach(s => s.classList.add('hidden-stage'));
            const target = document.getElementById(id);
            if (target) target.classList.remove('hidden-stage');
            // scroll to stage
            document.getElementById('stageContainer').scrollIntoView({ behavior: 'smooth', block: 'center' });
        }

        // attach listeners to all .stage-btn
        document.querySelectorAll('.stage-btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                const next = this.dataset.next;
                if (next) {
                    showStage(next);
                    // tiny celebration haptic
                    if (next === 'stage4') {
                        // final touch
                        document.getElementById('finalMessage').innerHTML =
                            '<i class="fas fa-sparkles"></i> you just made my day ✧';
                    }
                }
            });
        });

        // hero buttons -> start at stage1
        document.getElementById('startAdventure').addEventListener('click', () => {
            showStage('stage1');
        });
        document.getElementById('startAdventure2').addEventListener('click', () => {
            showStage('stage1');
        });

        // final confirm buttons (just show a cute alert, no reject)
        document.getElementById('confirmDate').addEventListener('click', function() {
            alert('💖 yay! it\'s a date. i\'ll text you the details. 🥂');
            this.innerHTML = '<i class="fas fa-check-circle"></i> confirmed!';
            this.style.background = '#b7cfc4';
            this.style.borderColor = '#b7cfc4';
        });
        document.getElementById('confirmDate2').addEventListener('click', function() {
            alert('💕 perfect. i\'ve been looking forward to this.');
            this.innerHTML = '<i class="fas fa-heart"></i> can\'t wait!';
            this.style.background = '#b7cfc4';
            this.style.borderColor = '#b7cfc4';
        });

        // ---- mobile menu ----
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // close on resize
        window.addEventListener('resize', () => {
            if (window.innerWidth > 700) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        // ---- initial: show stage1 by default (but hidden stages are hidden) ----
        // ensure only stage1 is visible
        showStage('stage1');

        console.log('💌 proposal adventure — no reject, only love.');
    </script>
</body>
</html>
