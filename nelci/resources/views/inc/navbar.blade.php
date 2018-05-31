<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Nelci</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">

    <ul class="navbar-nav">

      <li class="nav-item active">
        <a class="nav-link" href="home">Home</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="about">About</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="contact">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{ route('blog.index') }}">Blog</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{ route('login') }}">Sign in</a>
      </li>

      <li><a class="nav-link" href="{{ route('register') }}">Register</a>

      </li>

    </ul>
  </div>
</nav>
