@php
    $slider = DB::table('products')
                ->join('brands', 'products.brand_id', '=', 'brands.id')
                ->select('products.*', 'brands.brand_name')
                ->where('main_slider', 1)
                ->orderBy('id', 'DESC')
                ->first();
@endphp

<div class="banner">
    <div class="banner_background" style="background-image:url({{ asset('public/frontend/images/banner_background.jpg') }})"></div>
    <div class="container fill_height">
        <div class="row fill_height">
            @if($slider && $slider->image_one)
                <div class="banner_product_image">
                    <img src="{{ asset($slider->image_one) }}" alt="Product Image" style="height: 450px;">
                </div>
            @else
                <div class="banner_product_image">
                    <img src="{{ asset('public/frontend/images/default_image.jpg') }}" alt="Default Image" style="height: 450px;">
                </div>
            @endif
            <div class="col-lg-5 offset-lg-4 fill_height">
                <div class="banner_content">
                    <h1 class="banner_text">
                        {{ $slider && $slider->product_name ? $slider->product_name : 'Product Name Unavailable' }}
                    </h1>
                    <div class="banner_price">
                        @if($slider && $slider->discount_price === null)
                            <h2>
                                {{ $slider && $slider->selling_price ? 'TK' . $slider->selling_price : 'Price Unavailable' }}
                            </h2>
                        @else
                            @if($slider && $slider->selling_price)
                                <span>TK{{ $slider->selling_price }}</span>
                            @endif
                            {{ $slider && $slider->discount_price ? 'TK' . $slider->discount_price : 'Discount Price Unavailable' }}
                        @endif
                    </div>
                    <div class="banner_product_name">
                        {{ $slider && $slider->brand_name ? $slider->brand_name : 'Brand Name Unavailable' }}
                    </div>
                    <div class="button banner_button"><a href="#">Shop Now</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
