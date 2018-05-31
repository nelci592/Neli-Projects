@extends('layouts.app')

@section('content')
<header class="masthead">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="site-heading">
          <h1>Nelci Blog</h1>
          <span class="subheading">Cryptocurrency</span>
        </div>
      </div>
    </div>
  </div>
</header>

<!-- Main Content -->
<div class="container">
  <?php foreach ($posts as $key => $post): ?>
  <div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
      <div class="post-preview">
        <a href="{{ route('blog.show', $post->id )}}">
          <h2 class="post-title">
            {{ $post->title }}
          </h2>
        </a>
        <p class="post-meta">Posted by
          <a href="#">{{ $post->author }}</a></p>
      </div>
      <hr>
    <?php endforeach; ?>
      <!-- Pager -->
      <div class="clearfix">
        <a class="btn btn-primary float-right" href="{{ route('blog.create' )}}">Create Posts &rarr;</a>
      </div>
    </div>
  </div>
</div>

<hr>
@endsection
