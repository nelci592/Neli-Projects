@extends('layouts.app')

@section('content')


<h1>Create Post</h1>
{!! Form::open(['route' => 'blog.store', 'method' => 'POST']) !!}
    <div class="form-group">
      {{Form::label('title', 'Title')}}
      {{Form::text('title','', ['class' => 'form-control', 'placeholder' => 'Enter Title'])}}
    </div>
    <div class="form-group">
      {{Form::label('description', 'Post description')}}
      {{Form::text('description', '', ['class' => 'form-control', 'placeholder' => 'Enter description'])}}
    </div>
    <div class="form-group">
      {{Form::label('author', 'Author Name')}}
      {{Form::textarea('author', '', ['class' => 'form-control', 'placeholder' => 'Enter author'])}}
    </div>
    <div >
      {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}
    </div>
{!! Form::close() !!}

@endsection
