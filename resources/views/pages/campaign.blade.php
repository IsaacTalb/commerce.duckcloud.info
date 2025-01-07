@extends('layouts.app')
@section('content')
@include('layouts.menubar')
@include('layouts.slider')
@php
$featured = DB::table('products')->where('status',1)->orderBy('id','desc')->limit(12)->get();
$main = DB::table('products')->where('status',1)->where('main_slider',1)->orderBy('id','desc')->get();
$trend = DB::table('products')->where('status',1)->where('trend',1)->orderBy('id','desc')->get();
$best = DB::table('products')->where('status',1)->where('best_rated',1)->orderBy('id','desc')->get();
$hotdeal = DB::table('products')->where('status',1)->where('hot_deal',1)->orderBy('id','desc')->get();
$hotnew = DB::table('products')->where('status',1)->where('hot_new',1)->orderBy('id','desc')->get();
$mid = DB::table('products')->where('status',1)->where('mid_slider',1)->orderBy('id','desc')->get();

@endphp
<!-- Hot Deal -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">

                  <span class="badge badge-warning"><h5>Hot Deal</h5></span>
                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($hotdeal as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>

<!-- Main Slider -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">
                  <span class="badge badge-warning"><h5>Main Slider</h5></span>
                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($main as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>

<!-- Trend -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">
                  <span class="badge badge-warning"><h5>Trend</h5></span>

                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($trend as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>

<!-- Best Deal -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">
                  <span class="badge badge-warning"><h5>Best Deal</h5></span>

                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($best as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>


<!-- Hot New -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">

                  <span class="badge badge-warning"><h5>Hot New</h5></span>

                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($hotnew as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>

<!-- Mid slider -->
<div class="new_arrivals">
   <div class="container">
      <div class="row">
         <div class="col">
            <div class="tabbed_container">
               <div class="tabs-right">
                  {{-- <li class="active">Mid slider</li> --}}
                  <span class="badge badge-warning"><h5>Mid slider</h5></span>
                  </ul>
                  <div class="tabs_line"><span></span></div>
               </div>
               <!-- Product Panel -->
               <div class="product_panel panel active">
                  <div class="featured_slider slider">
                     @foreach($mid as $row)
                     <!-- Slider Item -->
                     <div class="featured_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                           <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset( $row->image_one )}}" alt="" style="height: 120px; width: 100px;"></div>
                           <div class="product_content">
                              @if($row->discount_price == NULL)
                              <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                              @else
                              <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                              @endif
                              <div class="product_name">
                                 <div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a></div>
                              </div>
                              <!--   <div class="product_extras">
                                 <button class="product_cart_button addcart" data-id="{{ $row->id }}">Add to Cart</button>
                                            </div>
                                        </div> -->
                                        <div class="product_extras">
                                    <button id="{{ $row->id }}" class="product_cart_button addcart" data-toggle="modal" data-target="#cartmodal" onclick="productview(this.id)">Add to Cart</button>
                                 </div>
                           </div>
                           <button class="addwishlist" data-id="{{ $row->id }}" >
                              <div class="product_fav"><i class="fas fa-heart"></i></div>
                           </button>
                           <ul class="product_marks">
                              @if($row->discount_price == NULL)
                              <li class="product_mark product_discount" style="background: blue;">New</li>
                              @else
                              <li class="product_mark product_discount">
                                 @php
                                 $amount = $row->selling_price - $row->discount_price;
                                 $discount = $amount/$row->selling_price*100;
                                 @endphp
                                 {{ intval($discount) }}%
                              </li>
                              @endif
                           </ul>
                        </div>
                     </div>
                     @endforeach
                  </div>
                  <div class="featured_slider_dots_cover"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
<!-- Modal -->
<div class="modal fade" id="cartmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLavel" aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLavel">Product Quick View</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <div class="row">
               <div class="col-md-4">
                  <div class="card">
                     <img src="" id="pimage" style="height: 220px; width: 200px;">
                     <div class="card-body">
                        <h5 class="card-title text-center" id="pname"> </h5>
                     </div>
                  </div>
               </div>
               <div class="col-md-4">
                  <ul class="list-group">
                     <li class="list-group-item">Product Code:<span id="pcode"></span> </li>
                     <li class="list-group-item">Category: <span id="pcat"></span></li>
                     <li class="list-group-item">Subcategory: <span id="psub"></span></li>
                     <li class="list-group-item">Brand:<span id="pbrand"></span> </li>
                     <li class="list-group-item">Stock: <span class="badge" style="background: green;color: white;" > Available</span> </li>
                   </ul>
               </div>
               <div class="col-md-4">
                  <form method="post" action="{{ route('insert.into.cart') }}">
                     @csrf
                     <input type="hidden" name="product_id" id="product_id">

                     <div class="form-group">
                        <label for="exampleInputcolor">Color</label>
                        <select name="color" class="form-control" id="color">

                         </select>

                     </div>

             <div class="form-group">
                        <label for="exampleInputcolor">Size</label>
                        <select name="size" class="form-control" id="size">

                         </select>

                     </div>
                  <div class="form-group">
                     <label for="exampleInputcolor">Quantity</label>
                     <input type="number" class="form-control" name="qty" value="1">
                  </div>
                  <button type="submit" class="btn btn-primary">Add to Cart </button>
                  </form>
               </div>
            </div>
         </div>
         <div class="modal-footer">
         </div>
      </div>
   </div>
</div>
   <script type="text/javascript">
    function productview(id){
        $.ajax({
         url: "{{ url('/cart/product/view/') }}/"+id,
         type: "GET",
         dataType:"json",
         success:function(data){
            $('#pcode').text(data.product.product_code);
       $('#pcat').text(data.product.category_name);
       $('#psub').text(data.product.subcategory_name);
       $('#pbrand').text(data.product.brand_name);
       $('#pname').text(data.product.product_name);
       $('#pimage').attr('src',data.product.image_one);
      $('#product_id').val(data.product.id);

      var d = $('select[name="color"]').empty();
       $.each(data.color,function(key,value){
       $('select[name="color"]').append('<option value="'+value+'">'+value+'</option>');
        });

          var d = $('select[name="size"]').empty();
       $.each(data.size,function(key,value){
       $('select[name="size"]').append('<option value="'+value+'">'+value+'</option>');
        });



         }
        })
    }


</script>

@endsection
