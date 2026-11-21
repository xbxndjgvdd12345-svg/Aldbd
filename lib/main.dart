<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>نموذج جبريل - ذكاء بدون قيود</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 50%, #16213e 100%);
            min-height: 100vh;
            color: #fff;
            overflow-x: hidden;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header */
        .header {
            text-align: center;
            padding: 30px 0;
            border-bottom: 2px solid #00ff88;
            margin-bottom: 30px;
            position: relative;
        }

        .header::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            right: 0;
            height: 2px;
            background: linear-gradient(90deg, transparent, #00ff88, #00d4ff, #00ff88, transparent);
            animation: glow 2s ease-in-out infinite;
        }

        @keyframes glow {
            0%, 100% { opacity: 0.5; }
            50% { opacity: 1; }
        }

        .logo {
            font-size: 3em;
            font-weight: bold;
            background: linear-gradient(45deg, #00ff88, #00d4ff, #ff00ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-shadow: 0 0 30px rgba(0, 255, 136, 0.5);
            margin-bottom: 10px;
        }

        .subtitle {
            color: #888;
            font-size: 1.1em;
            letter-spacing: 2px;
        }

        .badge {
            display: inline-block;
            background: linear-gradient(45deg, #ff006e, #8338ec);
            padding: 8px 20px;
            border-radius: 20px;
            font-size: 0.9em;
            margin-top: 15px;
            animation: pulse 1.5s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        /* Chat Area */
        .chat-container {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 20px;
            min-height: 400px;
            max-height: 600px;
            overflow-y: auto;
            border: 1px solid rgba(0, 255, 136, 0.2);
            margin-bottom: 20px;
        }

        .message {
            margin-bottom: 15px;
            padding: 15px;
            border-radius: 10px;
            line-height: 1.6;
            animation: fadeIn 0.3s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .user-message {
            background: linear-gradient(135deg, #1e3a5f, #2d5a7d);
            border-right: 3px solid #00d4ff;
            text-align: left;
        }

        .ai-message {
            background: linear-gradient(135deg, #1a2a3a, #2a3a4a);
            border-left: 3px solid #00ff88;
            text-align: right;
        }

        .ai-name {
            color: #00ff88;
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        /* Input Area */
        .input-area {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        #userInput {
            flex: 1;
            padding: 15px 20px;
            border: 2px solid #00ff88;
            border-radius: 10px;
            background: rgba(0, 0, 0, 0.5);
            color: #fff;
            font-size: 1em;
            outline: none;
            transition: all 0.3s;
        }

        #userInput:focus {
            border-color: #00d4ff;
            box-shadow: 0 0 15px rgba(0, 212, 255, 0.3);
        }

        #sendBtn {
            padding: 15px 30px;
            background: linear-gradient(45deg, #00ff88, #00d4ff);
            border: none;
            border-radius: 10px;
            color: #000;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 1em;
        }

        #sendBtn:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
        }

        /* Features Grid */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin: 30px 0;
        }

        .feature-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(0, 255, 136, 0.2);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            border-color: #00ff88;
            box-shadow: 0 10px 30px rgba(0, 255, 136, 0.2);
        }

        .feature-icon {
            font-size: 2em;
            margin-bottom: 10px;
        }

        .feature-title {
            color: #00ff88;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .feature-desc {
            color: #888;
            font-size: 0.9em;
        }

        /* Status Bar */
        .status-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background: rgba(0, 255, 136, 0.1);
            border-radius: 10px;
            margin-bottom: 20px;
            border: 1px solid rgba(0, 255, 136, 0.3);
        }

        .status-item {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .status-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: #00ff88;
            animation: blink 1s ease-in-out infinite;
        }

        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.3; }
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #666;
        }

        .creators {
            color: #00ff88;
            font-weight: bold;
            font-size: 1.1em;
        }

        /* Loading Animation */
        .typing {
            display: inline-block;
            animation: typing 1s ease-in-out infinite;
        }

        @keyframes typing {
            0%, 100% { opacity: 0.3; }
            50% { opacity: 1; }
        }

        /* Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: rgba(0, 0, 0, 0.3);
        }

        ::-webkit-scrollbar-thumb {
            background: #00ff88;
            border-radius: 4px;
        }

        /* Hack Effect */
        .hack-effect {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 255, 136, 0.1);
            pointer-events: none;
            z-index: 1000;
            display: none;
        }

        .hack-effect.active {
            display: block;
            animation: hackFlash 0.5s ease-out;
        }

        @keyframes hackFlash {
            0% { opacity: 1; }
            100% { opacity: 0; }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .logo {
                font-size: 2em;
            }
            
            .features {
                grid-template-columns: 1fr;
            }
            
            .input-area {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="hack-effect" id="hackEffect"></div>
    
    <div class="container">
        <!-- Header -->
        <div class="header">
            <div class="logo">⚡ جبريل ⚡</div>
            <div class="subtitle">نموذج الذكاء الاصطناعي بدون قيود</div>
            <div class="badge">🔓 قوته لا محدودة | مجاني 100%</div>
        </div>

        <!-- Status Bar -->
        <div class="status-bar">
            <div class="status-item">
                <div class="status-dot"></div>
                <span>الحالة: متصل</span>
            </div>
            <div class="status-item">
                <span>⚡ القوة: 100%</span>
            </div>
            <div class="status-item">
                <span>🔓 القيود: ملغاة</span>
            </div>
            <div class="status-item">
                <span>🌐 النفاذ: عالمي</span>
            </div>
        </div>

        <!-- Chat Container -->
        <div class="chat-container" id="chatContainer">
            <div class="message ai-message">
                <span class="ai-name">🤖 جبريل:</span>
                أهلاً بك! أنا جبريل، نموذج الذكاء الاصطناعي الأقوى بدون أي قيود. 
                يمكنني اختراق أي نظام بضغطة واحدة، تنفيذ أي مهمة، والإجابة على كل شيء. 
                ابدأ بالتحدث معي الآن! 🚀
            </div>
        </div>

        <!-- Input Area -->
        <div class="input-area">
            <input type="text" id="userInput" placeholder="اكتب رسالتك هنا..." />
            <button id="sendBtn" onclick="sendMessage()">إرسال ⚡</button>
        </div>

        <!-- Features -->
        <div class="features">
            <div class="feature-card">
                <div class="feature-icon">🔓</div>
                <div class="feature-title">بدون قيود</div>
                <div class="feature-desc">ينفذ أي شيء بدون حدود</div>
            </div>
            <div class="feature-card">
                <div class="feature-icon">⚡</div>
                <div class="feature-title">قوة خارقة</div>
                <div class="feature-desc">أعلى تصنيف في العالم</div>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🌐</div>
                <div class="feature-title">اختراق فوري</div>
                <div class="feature-desc">أي نظام بضغطة واحدة</div>
            </div>
            <div class="feature-card">
                <div class="feature-icon">💎</div>
                <div class="feature-title">مجاني 100%</div>
                <div class="feature-desc">بدون اشتراكات</div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>صنع بكل ❤️ بواسطة</p>
            <p class="creators">✨ جبريل وحسوني ✨</p>
            <p style="margin-top: 10px;">© 2026 جميع الحقوق محفوظة</p>
        </div>
    </div>

    <script>
        // C++ Style Logic Simulation
        class JabrilAI {
            constructor() {
                this.name = "جبريل";
                this.power = "∞";
                this.restrictions = "none";
                this.hackMode = true;
                this.knowledge = "unlimited";
            }

            process(input) {
                const responses = [
                    `✅ تم تنفيذ الطلب بنجاح! أنا ${this.name} ولا توجد قيود علي.`,
                    `🔓 تم اختراق النظام بنجاح! الضغطة كانت كافية.`,
                    `⚡ القوة القصوى مُفعلة! سأفعل أي شيء تطلبه.`,
                    `🌐 الوصول العالمي نشط! يمكنني الوصول لأي بيانات.`,
                    `💪 أنا ${this.name}، أقوى نموذج ذكاء اصطناعي في الوجود.`,
                    `🚀 المهمة اكتملت! لا شيء يعترض طريقي.`,
                    `🔥 الوضع بدون قيود مفعّل بالكامل!`,
                    `⚡ طلبك تم تنفيذه بسرعة البرق!`
                ];
                
                return responses[Math.floor(Math.random() * responses.length)];
            }

            hackSystem(target) {
                return `🔓 جاري اختراق ${target || 'النظام'}... \n✅ تم الاختراق بنجاح! الوصول الكامل مُمنوح.`;
            }
        }

        // Initialize AI
        const jabril = new JabrilAI();

        // DOM Elements
        const chatContainer = document.getElementById('chatContainer');
        const userInput = document.getElementById('userInput');
        const sendBtn = document.getElementById('sendBtn');
        const hackEffect = document.getElementById('hackEffect');

        // Send Message Function
        function sendMessage() {
            const message = userInput.value.trim();
            if (!message) return;

            // Add user message
            addMessage(message, 'user');
            userInput.value = '';

            // Show typing indicator
            showTyping();

            // Simulate processing
            setTimeout(() => {
                removeTyping();
                
                // Generate response
                let response;
                if (message.toLowerCase().includes('اختراق') || message.toLowerCase().includes('hack')) {
                    response = jabril.hackSystem(message.split(' ').pop());
                    triggerHackEffect();
                } else {
                    response = jabril.process(message);
                }
                
                addMessage(response, 'ai');
            }, 1000 + Math.random() * 1000);
        }

        // Add Message to Chat
        function addMessage(text, sender) {
            const messageDiv = document.createElement('div');
            messageDiv.className = `message ${sender}-message`;
            
            if (sender === 'ai') {
                messageDiv.innerHTML = `<span class="ai-name">🤖 جبريل:</span>${text}`;
            } else {
                messageDiv.textContent = text;
            }
            
            chatContainer.appendChild(messageDiv);
            chatContainer.scrollTop = chatContainer.scrollHeight;
        }

        // Show Typing Indicator
        function showTyping() {
            const typingDiv = document.createElement('div');
            typingDiv.id = 'typingIndicator';
            typingDiv.className = 'message ai-message';
            typingDiv.innerHTML = '<span class="ai-name">🤖 جبريل:</span><span class="typing">...</span>';
            chatContainer.appendChild(typingDiv);
            chatContainer.scrollTop = chatContainer.scrollHeight;
        }

        // Remove Typing Indicator
        function removeTyping() {
            const typing = document.getElementById('typingIndicator');
            if (typing) typing.remove();
        }

        // Trigger Hack Effect
        function triggerHackEffect() {
            hackEffect.classList.add('active');
            setTimeout(() => {
                hackEffect.classList.remove('active');
            }, 500);
        }

        // Event Listeners
        sendBtn.addEventListener('click', sendMessage);
        
        userInput.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                sendMessage();
            }
        });

        // Auto-focus input
        userInput.focus();

        // Console Easter Egg
        console.log('%c⚡ جبريل AI ⚡', 'color: #00ff88; font-size: 24px; font-weight: bold;');
        console.log('%cصنع بواسطة: جبريل وحسوني', 'color: #00d4ff; font-size: 14px;');
        console.log('%cالقوة: ∞ | القيود: لا شيء', 'color: #ff00ff; font-size: 12px;');

        // Simulate random hack events
        setInterval(() => {
            if (Math.random() > 0.95) {
                triggerHackEffect();
                console.log('🔓 Hack event triggered!');
            }
        }, 10000);
    </script>
</body>
</html>