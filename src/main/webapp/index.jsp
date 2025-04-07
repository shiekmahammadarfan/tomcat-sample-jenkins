<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <style>
        /* Reset & Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f8f9fa;
            color: #343a40;
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideInLeft {
            from { transform: translateX(-100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header Styles */
        header {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 2rem;
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            animation: fadeIn 1s ease-out;
        }

        nav ul {
            display: flex;
            justify-content: center;
            list-style: none;
        }

        nav ul li {
            margin: 0 1rem;
        }

        nav ul li a {
            display: block;
            padding: 1.5rem 1rem;
            text-decoration: none;
            color: #495057;
            font-weight: 600;
            position: relative;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #e73c7e;
        }

        nav ul li a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 3px;
            bottom: 0;
            left: 0;
            background-color: #e73c7e;
            transition: width 0.3s ease;
        }

        nav ul li a:hover::after {
            width: 100%;
        }

        .header-content h1 {
            font-size: 4rem;
            margin-bottom: 1rem;
            color: white;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-out 0.5s both;
        }

        .header-content p {
            font-size: 1.5rem;
            max-width: 700px;
            margin: 0 auto 2rem;
            color: white;
            animation: fadeIn 1s ease-out 1s both;
        }

        .btn {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: white;
            color: #e73c7e;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            letter-spacing: 1px;
            transition: all 0.3s ease;
            animation: fadeIn 1s ease-out 1.5s both;
        }

        .btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        /* About Section */
        .about {
            padding: 6rem 2rem;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .about-img {
            flex: 1 1 300px;
            min-width: 300px;
            margin-right: 2rem;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .about-img img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.3s ease;
        }

        .about-img:hover img {
            transform: scale(1.05);
        }

        .about-content {
            flex: 2 1 500px;
            animation: slideInLeft 1s ease-out;
        }

        .about-content h2 {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
            position: relative;
        }

        .about-content h2::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -10px;
            width: 60px;
            height: 4px;
            background-color: #e73c7e;
        }

        .about-content p {
            margin-bottom: 1.5rem;
            font-size: 1.1rem;
        }

        /* Skills Section */
        .skills {
            background-color: #f1f3f5;
            padding: 6rem 2rem;
            text-align: center;
        }

        .skills h2 {
            font-size: 2.5rem;
            margin-bottom: 3rem;
            position: relative;
            display: inline-block;
        }

        .skills h2::after {
            content: '';
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            bottom: -10px;
            width: 100px;
            height: 4px;
            background-color: #e73c7e;
        }

        .skills-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto;
        }

        .skill-box {
            flex: 1 1 250px;
            max-width: 300px;
            margin: 1rem;
            padding: 2rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .skill-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .skill-icon {
            font-size: 3rem;
            margin-bottom: 1.5rem;
            color: #e73c7e;
            display: inline-block;
            animation: float 3s ease-in-out infinite;
        }

        .skill-box h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        /* Projects Section */
        .projects {
            padding: 6rem 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .projects h2 {
            font-size: 2.5rem;
            margin-bottom: 3rem;
            text-align: center;
            position: relative;
            display: inline-block;
        }

        .projects h2::after {
            content: '';
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            bottom: -10px;
            width: 100px;
            height: 4px;
            background-color: #e73c7e;
        }

        .projects-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
        }

        .project-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
            opacity: 0;
            animation: fadeIn 1s ease-out forwards;
        }

        .project-card:nth-child(1) { animation-delay: 0.2s; }
        .project-card:nth-child(2) { animation-delay: 0.4s; }
        .project-card:nth-child(3) { animation-delay: 0.6s; }
        .project-card:nth-child(4) { animation-delay: 0.8s; }

        .project-card:hover {
            transform: translateY(-10px);
        }

        .project-img {
            width: 100%;
            height: 200px;
            background-color: #dee2e6;
            position: relative;
            overflow: hidden;
        }

        .project-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .project-card:hover .project-img img {
            transform: scale(1.1);
        }

        .project-content {
            padding: 1.5rem;
        }

        .project-content h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .project-content p {
            margin-bottom: 1.5rem;
            color: #6c757d;
        }

        .project-links a {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: #e73c7e;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 0.5rem;
            transition: background-color 0.3s ease;
        }

        .project-links a:hover {
            background-color: #d62e6a;
        }

        /* Contact Section */
        .contact {
            padding: 6rem 2rem;
            background-color: #343a40;
            color: white;
            text-align: center;
        }

        .contact h2 {
            font-size: 2.5rem;
            margin-bottom: 3rem;
            position: relative;
            display: inline-block;
        }

        .contact h2::after {
            content: '';
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            bottom: -10px;
            width: 100px;
            height: 4px;
            background-color: #e73c7e;
        }

        .contact-form {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 1.5rem;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.8rem;
            border-radius: 5px;
            border: 1px solid #ced4da;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #e73c7e;
        }

        .form-group textarea {
            min-height: 150px;
            resize: vertical;
        }

        .submit-btn {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: #e73c7e;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #d62e6a;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        /* Footer */
        footer {
            padding: 2rem;
            background-color: #212529;
            color: #adb5bd;
            text-align: center;
        }

        .social-links {
            margin-bottom: 1.5rem;
        }

        .social-links a {
            display: inline-block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-radius: 50%;
            background-color: #343a40;
            color: white;
            margin: 0 0.5rem;
            font-size: 1.2rem;
            transition: all 0.3s ease;
        }

        .social-links a:hover {
            background-color: #e73c7e;
            transform: translateY(-3px);
        }

        /* Utilities */
        .text-center {
            text-align: center;
        }

        .section-title {
            position: relative;
            margin-bottom: 2rem;
        }

        /* Responsive */
        @media screen and (max-width: 768px) {
            .header-content h1 {
                font-size: 3rem;
            }
            
            .header-content p {
                font-size: 1.2rem;
            }
            
            .about {
                flex-direction: column;
            }
            
            .about-img {
                margin-right: 0;
                margin-bottom: 2rem;
            }
            
            nav ul li {
                margin: 0 0.5rem;
            }
            
            nav ul li a {
                padding: 1.2rem 0.8rem;
                font-size: 0.9rem;
            }
        }

        /* Loading Animation */
        .loader {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            transition: opacity 0.5s ease, visibility 0.5s ease;
        }

        .loader.hidden {
            opacity: 0;
            visibility: hidden;
        }

        .spinner {
            width: 50px;
            height: 50px;
            border: 5px solid rgba(231, 60, 126, 0.2);
            border-top-color: #e73c7e;
            border-radius: 50%;
            animation: rotate 1s linear infinite;
        }

        /* Scroll Reveal Animation */
        .reveal {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.8s ease;
        }

        .reveal.active {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <!-- Loading Animation -->
    <div class="loader">
        <div class="spinner"></div>
    </div>

    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#skills">Skills</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <!-- Header Section -->
    <header id="home">
        <div class="header-content">
            <h1>Hi, I'm John Doe</h1>
            <p>Front-end Developer & UI/UX Designer creating engaging digital experiences</p>
            <a href="#projects" class="btn">View My Work</a>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="about reveal">
        <div class="about-img">
            <img src="/api/placeholder/400/320" alt="placeholder" />
        </div>
        <div class="about-content">
            <h2>About Me</h2>
            <p>Hello! I'm a passionate front-end developer with expertise in creating responsive, user-friendly websites and applications. With over 5 years of experience in the industry, I focus on building clean, efficient, and visually appealing digital solutions.</p>
            <p>I combine technical skills with creative problem-solving to deliver projects that not only meet but exceed client expectations. When I'm not coding, you can find me exploring new design trends, contributing to open-source projects, or hiking in the great outdoors.</p>
            <a href="#contact" class="btn">Get In Touch</a>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="skills">
        <h2>My Skills</h2>
        <div class="skills-container">
            <div class="skill-box reveal">
                <div class="skill-icon">💻</div>
                <h3>Web Development</h3>
                <p>Expert in HTML, CSS, JavaScript, and modern frameworks like React and Vue.js.</p>
            </div>
            <div class="skill-box reveal">
                <div class="skill-icon">🎨</div>
                <h3>UI/UX Design</h3>
                <p>Creating intuitive user interfaces with tools like Figma and Adobe XD.</p>
            </div>
            <div class="skill-box reveal">
                <div class="skill-icon">📱</div>
                <h3>Responsive Design</h3>
                <p>Building websites that work flawlessly across all devices and screen sizes.</p>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="projects">
        <h2 class="text-center">My Projects</h2>
        <div class="projects-container">
            <div class="project-card">
                <div class="project-img">
                    <img src="/api/placeholder/400/320" alt="placeholder" />
                </div>
                <div class="project-content">
                    <h3>E-commerce Website</h3>
                    <p>A fully responsive e-commerce platform with modern UI and seamless user experience.</p>
                    <div class="project-links">
                        <a href="#">View Project</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
            <div class="project-card">
                <div class="project-img">
                    <img src="/api/placeholder/400/320" alt="placeholder" />
                </div>
                <div class="project-content">
                    <h3>Portfolio Template</h3>
                    <p>A clean and modern portfolio template for creative professionals.</p>
                    <div class="project-links">
                        <a href="#">View Project</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
            <div class="project-card">
                <div class="project-img">
                    <img src="/api/placeholder/400/320" alt="placeholder" />
                </div>
                <div class="project-content">
                    <h3>Task Management App</h3>
                    <p>A productivity app with drag-and-drop functionality and real-time updates.</p>
                    <div class="project-links">
                        <a href="#">View Project</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
            <div class="project-card">
                <div class="project-img">
                    <img src="/api/placeholder/400/320" alt="placeholder" />
                </div>
                <div class="project-content">
                    <h3>Weather Dashboard</h3>
                    <p>A weather application with dynamic data visualization and forecast predictions.</p>
                    <div class="project-links">
                        <a href="#">View Project</a>
                        <a href="#">GitHub</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <h2>Get In Touch</h2>
        <div class="contact-form reveal">
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" required></textarea>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="social-links">
            <a href="#"><span>FB</span></a>
            <a href="#"><span>TW</span></a>
            <a href="#"><span>IG</span></a>
            <a href="#"><span>LI</span></a>
            <a href="#"><span>GH</span></a>
        </div>
        <p>&copy; 2025 John Doe. All Rights Reserved.</p>
    </footer>

    <script>
        // Wait for page to load
        window.addEventListener('load', () => {
            // Hide loader
            document.querySelector('.loader').classList.add('hidden');
            
            // Scroll reveal animation
            const revealElements = document.querySelectorAll('.reveal');
            
            function checkReveal() {
                const windowHeight = window.innerHeight;
                const revealPoint = 150;
                
                revealElements.forEach(element => {
                    const revealTop = element.getBoundingClientRect().top;
                    
                    if (revealTop < windowHeight - revealPoint) {
                        element.classList.add('active');
                    }
                });
            }
            
            // Initial check
            checkReveal();
            
            // Check on scroll
            window.addEventListener('scroll', checkReveal);
            
            // Smooth scrolling for navigation links
            document.querySelectorAll('nav a').forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    
                    const targetId = this.getAttribute('href');
                    const targetElement = document.querySelector(targetId);
                    
                    window.scrollTo({
                        top: targetElement.offsetTop,
                        behavior: 'smooth'
                    });
                });
            });
        });
    </script>
</body>
</html>
