@extends('layouts.app')

@section('content')


<h1>Update Post</h1>
{!! Form::model($post, array('route' => ['blog.update', $post->id], 'method' => 'PATCH')) !!}
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

{!! Form::open(array('route' => ['blog.destroy', $post->id], 'method' => 'DELETE')) !!}
    <div>
      {{Form::submit('Delete Post', ['class' => 'btn btn-primary'])}}
    </div>
{!! Form::close() !!}

@endsection
