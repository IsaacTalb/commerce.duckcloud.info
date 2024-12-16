@extends('admin.admin_layouts')

@section('admin_content')

    <!-- ########## START: MAIN PANEL ########## -->
    <div class="sl-mainpanel">
   

      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5>Blog Category Update</h5>
        </div><!-- sl-page-title -->

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Blog Category Update</h6>
          @if ($errors->any())
              <div class="alert alert-danger">
                <ul>
                  @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
                @endforeach
                </ul>
              </div>
            @endif

              <form method="post" action="{{url('update/blog/categorylist/'.$blogcat->id)}}">
                  @csrf
              <div class="modal-body pd-20">   
                <div class="form-group">
                <label for="exampleInputEmail1">Category Name English</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$blogcat->category_name_en}}" name="category_name_en">
                </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Category Name Hindi</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$blogcat->category_name_in}}" name="category_name_in">
                </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Category Name Bangla</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$blogcat->category_name_bd}}" name="category_name_bd">
                </div>
              </div><!-- modal-body -->
              <div class="modal-footer">
                <button type="submit" class="btn btn-info pd-x-20">Update</button>
              </div>
            </div>
            </form>

      

  
    </div><!-- sl-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->

      


@endsection