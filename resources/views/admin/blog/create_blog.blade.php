@extends('admin.admin_layouts')


@section('admin_content')

    <!-- ########## START: MAIN PANEL ########## -->
    <div class="sl-mainpanel">
      <nav class="breadcrumb sl-breadcrumb">
        <span class="breadcrumb-item active">Blog Section</span>
      </nav>

      <div class="sl-pagebody">

      <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">New Post ADD
              <a href="{{route('all.blogpost')}}" class="btn btn-success btn-sm pull-right">All Post</a>
          </h6>

          <p class="mg-b-20 mg-sm-b-30">New Post Add Form</p>

          <form method="post" action="{{route('store.post')}}" enctype="multipart/form-data">
          @csrf
          <div class="form-layout">
            <div class="row mg-b-25">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label">Post Title (English): <span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_en" value="" placeholder="Enter Post Title English">
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label">Post Title (Hindi):<span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_in" value="" placeholder="Enter Post Title Hindi">
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label">Post Title (Bangla): <span class="tx-danger">*</span></label>
                  <input class="form-control" type="text" name="post_title_bd" value="" placeholder="Enter Post Title Bangla">
                </div>
                </div><!-- col-4 -->
             
              <div class="col-lg-4">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Blog Category: <span class="tx-danger">*</span></label>
                  <select class="form-control select2" data-placeholder="Choose Category" name="category_id">
                    <option label="Choose Category"></option>
                    @foreach($blogcat as $row)
                    <option value="{{$row->id}}">{{$row->category_name_en}}</option>
                    @endforeach
                  </select>
                </div>
              </div><!-- col-4 -->
           
            
              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (English): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote" name="details_en"> </textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (Hindi): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote1" name="details_in"> </textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-12">
                <div class="form-group">
                  <label class="form-control-label">Product Details (Bangla): <span class="tx-danger">*</span></label>
                  <textarea class="form-control" id="summernote2" name="details_bd"> </textarea>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Post Image: <span class="tx-danger">*</span></label><br>
                  <label class="custom-file">
                      <input type="file" id="file" class="custom-file-input" name="post_image" onchange="readURL1(this);" requried="" >
                      <span class="custom-file-control"></span> 
                     <img src="#" id='one'>
                 </label>    
                </div>
              </div><!-- col-4 -->
              </div><!-- row -->

            <div class="form-layout-footer">
              <button class="btn btn-info mg-r-5" type="submit">Submit Form</button>
            </div><!-- form-layout-footer -->
          </div><!-- form-layout -->
        </div><!-- card -->

</form>
       
        </div><!-- row -->

       
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
 