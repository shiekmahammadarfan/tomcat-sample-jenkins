<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Portfolio</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #fff;
      overflow-x: hidden;
    }

    header {
      padding: 2rem;
      text-align: center;
      animation: fadeInDown 1.2s ease-out;
    }

    header h1 {
      font-size: 3rem;
      margin-bottom: 0.5rem;
      color: #00eaff;
    }

    header p {
      font-size: 1.2rem;
      color: #a0e7e5;
    }

    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem;
      padding: 2rem;
      animation: fadeInUp 1.5s ease-out;
    }

    .card {
      background: rgba(255, 255, 255, 0.1);
      padding: 1.5rem;
      border-radius: 15px;
      backdrop-filter: blur(10px);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      text-align: center;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 20px 30px rgba(0, 0, 0, 0.4);
    }

    .card h3 {
      margin-bottom: 1rem;
      font-size: 1.5rem;
      color: #00eaff;
    }

    .card p {
      color: #f1f1f1;
    }

    .card img {
      width: 100%;
      max-height: 150px;
      object-fit: cover;
      border-radius: 10px;
      margin-bottom: 1rem;
    }

    footer {
      text-align: center;
      padding: 2rem;
      color: #ccc;
      animation: fadeIn 2s ease-in;
    }

    @keyframes fadeInDown {
      from {
        opacity: 0;
        transform: translateY(-50px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(50px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeIn {
      from { opacity: 0; }
      to { opacity: 1; }
    }
  </style>
</head>
<body>
  <header>
    <h1>Hi, I'm Alex</h1>
    <p>Web Developer | Designer | Tech Enthusiast</p>
  </header>

  <section class="container">
    <div class="card">
      <img src="https://via.placeholder.com/300x150?text=About+Me" alt="About Me Image">
      <h3>About Me</h3>
      <p>I love building beautiful, functional websites and experimenting with cool UI/UX ideas.</p>
    </div>
    <div class="card">
      <img src="https://via.placeholder.com/300x150?text=Projects" alt="Projects Image">
      <h3>Projects</h3>
      <p>Check out my GitHub for open-source contributions and personal projects.</p>
    </div>
    <div class="card">
      <img src="https://via.placeholder.com/300x150?text=Contact" alt="Contact Image">
      <h3>Contact</h3>
      <p>Email: alex@example.com<br>LinkedIn: @alexdev</p>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 Alex Dev. All rights reserved.</p>
  </footer>
</body>
</html>
