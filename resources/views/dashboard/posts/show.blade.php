@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <a href="/dashboard/posts" class="btn btn-success"><i class="bi bi-arrow-left"></i> Back to all my posts</a>
            <a href="" class="btn btn-warning"><i class="bi bi-pencil-fill"></i> Edit</a>
            <a href="" class="btn btn-danger"><i class="bi bi-x-circle"></i> Delete</a>

            <img src="http://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">

            <article class="my-3 fs-5">
            {!! $post->body !!}
            </article>

            <a href="/blog" class="d-block mt-3">Back to posts</a>
        </div> 
    </div>
</div>
@endsection
