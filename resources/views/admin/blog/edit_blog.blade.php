@extends('admin.admin_layouts')

@section('admin_content')

@php
$blogcategory = DB::table('post_category')->get();
@endphp

    <!-- ########## START: MAIN PANEL ########## -->
    <div class="sl-mainpanel">


      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5>Blog Post Update</h5>
        </div><!-- sl-page-title -->

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Blog Post Update</h6>
          @if ($errors->any())
              <div class="alert alert-danger">
                <ul>
                  @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
                @endforeach
                </ul>
              </div>
            @endif

              <form method="post" action="{{url('update/post/'.$post->id)}}">
                  @csrf
              <div class="modal-body pd-20">
              <div class="form-group">
                  <label class="form-control-label">Post Title (English): <span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_en" value="{{$post->post_title_en}}" placeholder="Enter Post Title English">
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label">Post Title (Hindi):<span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_in" value="{{$post->post_title_in}}"placeholder="Enter Post Title Hindi">
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label">Post Title (Bangla): <span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_bd" value="{{$post->post_title_bd}}" placeholder="Enter Post Title Bangla">
                </div>
                </div><!-- col-4 -->

              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Blog Category: <span class="tx-danger">*</span></label>
                  <select class="form-control select2" data-placeholder="Choose Category" name="category_id">
                    <option label="Choose Category"></option>
                    @foreach($blogcategory as $row)
                    <option value="{{$row->id}}" <?php if($row->id == $post->category_id){
                        echo "selected";} ?>   >
                        {{$row->category_name_en}}</option>
                    @endforeach
                  </select>
                </div>
              </div><!-- col-4 -->


              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (English): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote" name="details_en" > {!!$post->details_en!!}</textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (Hindi): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote1" name="details_in" >{!!$post->details_in!!}</textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (Bangla): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote2" name="details_bd" > {!!$post->details_bd!!}</textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Post Image: <span class="tx-danger">*</span></label><br>
                  <label class="custom-file">
                      <input type="file" id="file" class="custom-file-input" name="post_image" onchange="readURL1(this);" >
                      <span class="custom-file-control"></span>
                     <img src="#" id='one'>
                 </label>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Old Post Image: <span class="tx-danger">*</span></label><br>
                  <label class="custom-file">
                  <img src="{{URL::to($post->post_image)}}" height="70px" width="70px">
                  <input type="hidden" name="old_image" value="{{ $post->post_image }}">
                 </label>
                </div>
              </div><!-- col-4 -->

              </div><!-- col-4 -->
              </div><!-- modal-body -->
              <div class="modal-footer">
                <button type="submit" class="btn btn-info pd-x-20">Update</button>
              </div>
            </div>
            </form>




    </div><!-- sl-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
     $('select[name="category_id"]').on('change',function(){
          var category_id = $(this).val();
          if (category_id) {

            $.ajax({
              url: "{{ url('/get/subcategory/') }}/"+category_id,
              type:"GET",
              dataType:"json",
              success:function(data) {
              var d =$('select[name="subcategory_id"]').empty();
              $.each(data, function(key, value){

              $('select[name="subcategory_id"]').append('<option value="'+ value.id + '">' + value.subcategory_name + '</option>');

              });
              },
            });

          }else{
            alert('danger');
          }

            });
      });

 </script>

<script type="text/javascript">
  function readURL1(input){
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#one')
        .attr('src', e.target.result)
        .width(70)
        .height(70);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }
</script>




@endsection
