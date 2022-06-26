@extends('layouts.master')
@section('title','FileUpload')
@section('content')
<div class="container py-5">
    <div class="row">
        <div class="col-12">
            <form method="post" action="" enctype="multipart/form-data">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Upload image" name="file">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
        </div>
    </div>
</div>
@endsection


