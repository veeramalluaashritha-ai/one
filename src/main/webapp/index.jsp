<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Will you come on a date with me? 💕</title>

    <!-- fonts & icons -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600;700&family=Dancing+Script:wght@700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(145deg, #ffe9f0 0%, #ffd9e5 100%);
            min-height: 100vh;
            font-family: 'Quicksand', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
            overflow-x: hidden;
        }

        /* floating hearts background */
        .floating-hearts {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 0;
            overflow: hidden;
        }
        .floating-hearts i {
            position: absolute;
            color: rgba(255, 80, 120, 0.20);
            font-size: 28px;
            animation: floatHeart 12s infinite linear;
        }
        @keyframes floatHeart {
            0% { transform: translateY(110vh) rotate(0deg) scale(0.6); opacity: 0.3; }
            20% { opacity: 0.8; }
            100% { transform: translateY(-20vh) rotate(720deg) scale(1.2); opacity: 0; }
        }

        .main-card {
            position: relative;
            z-index: 10;
            max-width: 720px;
            width: 100%;
            background: rgba(255, 245, 248, 0.70);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-radius: 56px 56px 48px 48px;
            box-shadow: 0 30px 60px rgba(200, 70, 100, 0.25), 0 0 0 2px rgba(255, 220, 230, 0.5);
            padding: 32px 28px 40px;
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.5);
        }

        /* header */
        .love-header {
            text-align: center;
            margin-bottom: 24px;
            position: relative;
        }
        .love-header h1 {
            font-family: 'Dancing Script', cursive;
            font-size: 42px;
            color: #b3405a;
            text-shadow: 0 4px 12px rgba(255, 120, 160, 0.3);
            letter-spacing: 1px;
            animation: pulseText 2s infinite alternate;
        }
        @keyframes pulseText {
            0% { transform: scale(1); }
            100% { transform: scale(1.02); }
        }
        .love-header .sub {
            font-size: 18px;
            font-weight: 600;
            color: #a04b62;
            background: rgba(255, 220, 230, 0.6);
            display: inline-block;
            padding: 6px 24px;
            border-radius: 60px;
            backdrop-filter: blur(4px);
            margin-top: 4px;
        }

        /* stage indicator */
        .stage-indicator {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 10px 0 18px;
            flex-wrap: wrap;
        }
        .stage-dot {
            width: 38px;
            height: 38px;
            border-radius: 40px;
            background: #fbc2d0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            font-size: 14px;
            color: #863a4e;
            transition: 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
            border: 2px solid transparent;
            box-shadow: 0 4px 8px rgba(160, 60, 80, 0.08);
        }
        .stage-dot.active {
            background: #ff8aae;
            color: #fff;
            border-color: #ffb3cb;
            transform: scale(1.15);
            box-shadow: 0 8px 20px rgba(255, 80, 130, 0.4);
        }
        .stage-dot.done {
            background: #cfa6b5;
            color: #fff;
            border-color: #ecc0cf;
        }

        /* main content */
        .content {
            background: rgba(255, 245, 248, 0.5);
            backdrop-filter: blur(4px);
            border-radius: 40px;
            padding: 24px 20px 28px;
            box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.6);
            transition: 0.4s ease;
            min-height: 340px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .question-text {
            font-size: 26px;
            font-weight: 700;
            color: #562b3a;
            text-align: center;
            margin-bottom: 12px;
            line-height: 1.3;
        }
        .question-text i {
            color: #e85a7a;
            margin: 0 6px;
            animation: wiggle 1.5s infinite;
        }
        @keyframes wiggle {
            0%,100% { transform: rotate(0deg); }
            25% { transform: rotate(12deg); }
            75% { transform: rotate(-12deg); }
        }

        .love-message {
            font-size: 17px;
            color: #754b5c;
            text-align: center;
            max-width: 400px;
            margin-bottom: 20px;
            background: rgba(255, 200, 215, 0.3);
            padding: 12px 20px;
            border-radius: 60px;
            backdrop-filter: blur(2px);
        }

        .action-area {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 16px;
            margin: 10px 0 12px;
            width: 100%;
        }

        .btn-love {
            border: none;
            background: #ff8aae;
            color: #fff;
            font-weight: 700;
            font-size: 20px;
            padding: 14px 36px;
            border-radius: 80px;
            display: inline-flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 10px 24px rgba(255, 70, 120, 0.25);
            transition: 0.25s cubic-bezier(0.34, 1.56, 0.64, 1);
            cursor: pointer;
            border: 2px solid rgba(255, 255, 255, 0.3);
            flex: 1 1 auto;
            justify-content: center;
            min-width: 140px;
            letter-spacing: 0.5px;
        }
        .btn-love:hover {
            transform: scale(1.05) translateY(-4px);
            background: #ff769e;
            box-shadow: 0 16px 36px rgba(255, 60, 120, 0.35);
        }
        .btn-love:active {
            transform: scale(0.96);
        }
        .btn-love i {
            font-size: 24px;
        }

        .btn-secondary {
            background: #dbb8c5;
            box-shadow: 0 6px 16px rgba(160, 80, 100, 0.15);
            color: #3f2a32;
        }
        .btn-secondary:hover {
            background: #cfa6b5;
            color: #1f1218;
        }

        .btn-success {
            background: #67b896;
            border-color: #b0dfcb;
        }
        .btn-success:hover {
            background: #4fa884;
        }

        .btn-warning {
            background: #f5b37a;
            border-color: #fad7b3;
            color: #4f2e1d;
        }
        .btn-warning:hover {
            background: #eea263;
        }

        /* progress bar */
        .progress-wrap {
            margin: 18px 0 6px;
            width: 100%;
            background: rgba(255, 200, 215, 0.3);
            border-radius: 40px;
            height: 10px;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
        .progress-bar {
            height: 100%;
            width: 0%;
            background: linear-gradient(90deg, #ff9ab3, #ff688e);
            border-radius: 40px;
            transition: width 0.7s cubic-bezier(0.34, 1.56, 0.64, 1);
        }

        .footer-note {
            margin-top: 18px;
            text-align: center;
            color: #9a6a7a;
            font-weight: 600;
            font-size: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            flex-wrap: wrap;
        }
        .footer-note i {
            color: #e85a7a;
            animation: pulse 1.5s infinite;
        }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.3); }
            100% { transform: scale(1); }
        }

        /* stage specific */
        .gif-placeholder {
            font-size: 52px;
            line-height: 1;
            margin: 4px 0 8px;
            animation: bounce 1.8s infinite;
        }
        @keyframes bounce {
            0%,100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }

        /* responsiveness */
        @media (max-width: 520px) {
            .main-card { padding: 20px 14px; }
            .love-header h1 { font-size: 32px; }
            .question-text { font-size: 21px; }
            .btn-love { font-size: 17px; padding: 12px 20px; min-width: 110px; }
            .stage-dot { width: 32px; height: 32px; font-size: 12px; }
        }
    </style>
</head>
<body>

    <!-- floating hearts bg -->
    <div class="floating-hearts" id="floatingHearts"></div>

    <div class="main-card">
        <div class="love-header">
            <h1>💕 Will you come <br>on a date with me? 💕</h1>
            <div class="sub"><i class="fas fa-heart" style="color:#e85a7a;"></i> 8 stages of love <i class="fas fa-heart" style="color:#e85a7a;"></i></div>
        </div>

        <!-- stage dots -->
        <div class="stage-indicator" id="stageDots"></div>

        <div class="content" id="contentArea">
            <!-- dynamically rendered -->
        </div>

        <div class="progress-wrap">
            <div class="progress-bar" id="progressBar" style="width:0%;"></div>
        </div>

        <div class="footer-note">
            <i class="fas fa-heart"></i> every step brings us closer <i class="fas fa-heart"></i>
        </div>
    </div>

    <script>
        (function() {
            // -------- 8 STAGES (he can't say no) --------
            const stages = [{
                id: 0,
                title: "🌸 Hey you!",
                msg: "I've been thinking about you all day...",
                icon: "💖",
                btnText: "Yes, tell me more!",
                nextBtn: true,
                special: false
            }, {
                id: 1,
                title: "☕ A little coffee?",
                msg: "Just us, some warm drinks, and good vibes.",
                icon: "☕",
                btnText: "I'd love that!",
                nextBtn: true,
                special: false
            }, {
                id: 2,
                title: "🎬 Movie night?",
                msg: "Cuddles, popcorn, and your favourite film.",
                icon: "🍿",
                btnText: "Let's watch!",
                nextBtn: true,
                special: false
            }, {
                id: 3,
                title: "🌅 Sunset walk",
                msg: "Hand in hand, watching the sky turn gold.",
                icon: "🌇",
                btnText: "That sounds dreamy",
                nextBtn: true,
                special: false
            }, {
                id: 4,
                title: "🍽️ Fancy dinner?",
                msg: "Candlelight, good food, and your smile.",
                icon: "🍷",
                btnText: "Yes, I'm in!",
                nextBtn: true,
                special: false
            }, {
                id: 5,
                title: "🎶 Dance with me",
                msg: "No music needed — just us swaying.",
                icon: "💃",
                btnText: "Let's dance!",
                nextBtn: true,
                special: false
            }, {
                id: 6,
                title: "💝 Surprise date",
                msg: "I planned everything just for you.",
                icon: "🎁",
                btnText: "I can't wait!",
                nextBtn: true,
                special: false
            }, {
                id: 7,
                title: "💞 YES! You said YES!",
                msg: "It's official — we're going on a date! I'm the luckiest.",
                icon: "🥰",
                btnText: "I love you! ❤️",
                nextBtn: false,
                special: true
            }];

            // -------- state --------
            let currentStage = 0;
            const contentArea = document.getElementById('contentArea');
            const stageDots = document.getElementById('stageDots');
            const progressBar = document.getElementById('progressBar');

            // -------- helpers --------
            function renderStage(index) {
                const stage = stages[index];
                if (!stage) return;

                // update dots
                updateDots(index);

                // progress
                const progress = ((index) / (stages.length - 1)) * 100;
                progressBar.style.width = progress + '%';

                // content
                let html = `
                    <div class="gif-placeholder">${stage.icon}</div>
                    <div class="question-text">${stage.title}</div>
                    <div class="love-message">${stage.msg}</div>
                    <div class="action-area">
                `;

                if (stage.special) {
                    // final stage: big celebration, no "no" button
                    html += `
                        <button class="btn-love btn-success" id="celebrateBtn">
                            <i class="fas fa-heart"></i> ${stage.btnText}
                        </button>
                        <button class="btn-love btn-warning" id="resetBtn" style="background:#f5b37a;color:#3f2a32;">
                            <i class="fas fa-redo"></i> Start over
                        </button>
                    `;
                } else {
                    // normal stage: yes + no (but no leads to a cute loop)
                    html += `
                        <button class="btn-love" id="yesBtn">
                            <i class="fas fa-check-circle"></i> ${stage.btnText}
                        </button>
                        <button class="btn-love btn-secondary" id="noBtn">
                            <i class="fas fa-heart-broken"></i> No...
                        </button>
                    `;
                }

                html += `</div>`;
                contentArea.innerHTML = html;

                // ----- bind events -----
                if (stage.special) {
                    document.getElementById('celebrateBtn')?.addEventListener('click', function() {
                        // confetti effect (just for fun)
                        createConfetti();
                        // and a sweet message
                        const msg = document.querySelector('.love-message');
                        if (msg) msg.innerHTML = '💞 I love you so much! Can\'t wait for our date! 💞';
                        this.innerHTML = '<i class="fas fa-heart" style="animation: pulse 0.8s infinite;"></i> Forever yours';
                        this.style.transform = 'scale(1.1)';
                    });
                    document.getElementById('resetBtn')?.addEventListener('click', function() {
                        currentStage = 0;
                        renderStage(currentStage);
                    });
                } else {
                    // YES button: advance stage
                    document.getElementById('yesBtn')?.addEventListener('click', function() {
                        if (currentStage < stages.length - 1) {
                            currentStage++;
                            renderStage(currentStage);
                        } else {
                            // fallback
                            currentStage = stages.length - 1;
                            renderStage(currentStage);
                        }
                    });

                    // NO button: playful rejection, but we move to next stage anyway (can't say no)
                    document.getElementById('noBtn')?.addEventListener('click', function() {
                        // cute animation + advance
                        const btn = this;
                        btn.innerHTML = '<i class="fas fa-heart"></i> You can\'t say no! 💕';
                        btn.style.background = '#ff8aae';
                        btn.style.color = '#fff';
                        btn.style.transform = 'scale(1.1)';
                        setTimeout(() => {
                            if (currentStage < stages.length - 1) {
                                currentStage++;
                                renderStage(currentStage);
                            } else {
                                currentStage = stages.length - 1;
                                renderStage(currentStage);
                            }
                        }, 600);
                    });
                }

                // extra floating hearts on stage change
                spawnFloatingHearts(6);
            }

            // -------- dots --------
            function updateDots(activeIndex) {
                stageDots.innerHTML = '';
                stages.forEach((s, i) => {
                    const dot = document.createElement('div');
                    dot.className = 'stage-dot';
                    if (i === activeIndex) dot.classList.add('active');
                    else if (i < activeIndex) dot.classList.add('done');
                    dot.textContent = i + 1;
                    stageDots.appendChild(dot);
                });
            }

            // -------- floating hearts background (decorative) --------
            function spawnFloatingHearts(count = 10) {
                const container = document.getElementById('floatingHearts');
                for (let i = 0; i < count; i++) {
                    const heart = document.createElement('i');
                    heart.className = 'fas fa-heart';
                    const left = Math.random() * 100;
                    const delay = Math.random() * 10;
                    const duration = 10 + Math.random() * 12;
                    const size = 18 + Math.random() * 30;
                    heart.style.left = left + '%';
                    heart.style.fontSize = size + 'px';
                    heart.style.animationDuration = duration + 's';
                    heart.style.animationDelay = delay + 's';
                    heart.style.opacity = 0.15 + Math.random() * 0.25;
                    container.appendChild(heart);
                }
            }

            // -------- mini confetti (for final stage) --------
            function createConfetti() {
                const colors = ['#ff6b8a', '#ffb3cb', '#ffd966', '#b8e0d4', '#f7a1c4'];
                for (let i = 0; i < 40; i++) {
                    const el = document.createElement('div');
                    el.style.position = 'fixed';
                    el.style.width = '10px';
                    el.style.height = '10px';
                    el.style.background = colors[Math.floor(Math.random() * colors.length)];
                    el.style.left = Math.random() * 100 + 'vw';
                    el.style.top = '-10px';
                    el.style.borderRadius = '50%';
                    el.style.pointerEvents = 'none';
                    el.style.zIndex = '999';
                    el.style.opacity = '0.9';
                    el.style.transform = `rotate(${Math.random()*360}deg)`;
                    el.style.transition = `all ${2 + Math.random()*3}s cubic-bezier(0.34, 1.56, 0.64, 1)`;
                    document.body.appendChild(el);
                    requestAnimationFrame(() => {
                        el.style.top = (Math.random() * 80 + 10) + 'vh';
                        el.style.left = (Math.random() * 100) + 'vw';
                        el.style.transform = `rotate(${Math.random()*720}deg) scale(${0.5+Math.random()})`;
                        el.style.opacity = '0';
                    });
                    setTimeout(() => el.remove(), 4000);
                }
            }

            // -------- initial load --------
            function init() {
                // generate background hearts
                spawnFloatingHearts(20);
                renderStage(0);
            }

            init();

            // extra: if user clicks anywhere, add a little heart
            document.addEventListener('click', function(e) {
                if (e.target.closest('.btn-love') || e.target.closest('.stage-dot')) return;
                const heart = document.createElement('i');
                heart.className = 'fas fa-heart';
                heart.style.position = 'fixed';
                heart.style.left = (e.clientX - 16) + 'px';
                heart.style.top = (e.clientY - 16) + 'px';
                heart.style.fontSize = '28px';
                heart.style.color = '#ff6b8a';
                heart.style.pointerEvents = 'none';
                heart.style.zIndex = '999';
                heart.style.transition = 'all 1.2s ease';
                heart.style.opacity = '0.8';
                document.body.appendChild(heart);
                requestAnimationFrame(() => {
                    heart.style.transform = 'translateY(-120px) scale(0.2)';
                    heart.style.opacity = '0';
                });
                setTimeout(() => heart.remove(), 1400);
            });

        })();
    </script>
</body>
</html>
