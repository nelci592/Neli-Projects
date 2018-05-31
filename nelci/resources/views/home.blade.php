@extends('layouts.app')

  @section('content')
  <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a>
                    @endauth
                </div>
            @endif

            <div class="content">
                @if(isset($message))
                  <ul class="list-group">
                      <li class="list-group-item">Name: {{$message->name}} </li>
                      <li class="list-group-item">Email: {{$message->email}} </li>
                      <li class="list-group-item">Message: {{$message->message}} </li>

                  </ul>
                @endif
                <div class="links">
                    <a href="https://coinmarketcap.com/">Cryptocurrency Market</a>
                    <a href="https://masterthecrypto.com/dangers-in-cryptocurrency-investing/">Dangers and Risks</a>
                </div>
            </div>
        </div>
    </body>
    <h1>Home</h1>
    <p>Hello :) This is Nelci & Dimo's Website. Feel free to join</p>
  @endsection
