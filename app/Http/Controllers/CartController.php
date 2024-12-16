<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Cart;
use Response;
use Auth;
use Session;

class CartController extends Controller
{
    public function addCart($id){


    $product = DB::table('products')->where('id',$id)->first();

if($product->discount_price == NULL)
{
      Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->selling_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);
      return response()->json(['success' => 'Successfully Added on your Cart']);
}
else{
     Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->discount_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);
     return response()->json(['success' => 'Successfully Added on your Cart']);

}

}

public function check()
{
    $content = Cart::content();

    return response()->json($content);
}

public function showCart()
{
    $cart = Cart::content();
    //var_dump($cart);
    //return ($cart);
     return view('pages.cart',compact('cart'));
}
public function removeCart($rowId)
{
    Cart::remove($rowId);
    $notification=array(
        'messege'=>'Product Remove from Cart',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);
}

public function updateCart(Request $request)
{
    $rowId = $request->productid;
    $qty = $request->qty;
    Cart::update($rowId,$qty);
    $notification=array(
        'messege'=>'Product Quantity Updated',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);
}



public function viewProduct($id){
    $product = DB::table('products')
            ->join('categories','products.category_id','categories.id')
            ->join('subcategories','products.subcategory_id','subcategories.id')
            ->join('brands','products.brand_id','brands.id')
            ->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
            ->where('products.id',$id)
            ->first();
            //return response()->json($product);

     $color = $product->product_color;
     $product_color = explode(',', $color);

    $size = $product->product_size;
     $product_size = explode(',', $size);

return response::json(array(
'product' => $product,
'color' => $product_color,
'size' => $product_size,
));


}


public function insertCart(Request $request){
    $id = $request->product_id;
 $product = DB::table('products')->where('id',$id)->first();
 $color = $request->color;
 $size = $request->size;
 $qty = $request->qty;

$data = array();

if($product->discount_price == NULL)
{


    Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->selling_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);

      $notification=array(
        'messege'=>'Product Added successfully',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);
}
else{

    Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->discount_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);

     $notification=array(
        'messege'=>'Product Added successfully',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);

}

}


public function checkout()
{
    if(Auth::Check()){
        $cart = Cart::content();
        return view('pages.checkout',compact('cart'));

    }
    else
    {
        $notification=array(
            'messege'=>'At first Loging your account',
            'alert-type'=>'success'
             );
           return Redirect()->route('login')->with($notification);

    }
}

public function wishlist()
{
    $userid = Auth::id();
    $product = DB::table('wishlists')
            ->join('products','wishlists.product_id','products.id')
            ->select('products.*','wishlists.user_id')
            ->where('wishlists.user_id',$userid)
            ->get();
            // return response()->json($product);
            return view('pages.wishlist',compact('product'));
}

public function coupon(Request $request)
{
    $coupon = $request->coupon;
    $check = DB::table('coupons')->where('coupon',$coupon)->first();
    if($check)
    {
        Session::put('coupon',[
            'name' => $check->coupon,
            'discount' => $check->discount,
            'balance' => str_replace( ',', '', Cart::Subtotal())-$check->discount ,

        ]);
        $notification=array(
                    'messege'=>'Successfully Coupon Applied',
                    'alert-type'=>'success'
                      );
                    return Redirect()->back()->with($notification);
    }
    else
    {
        $notification=array(
            'messege'=>'Invalid Coupon',
            'alert-type'=>'error'
              );
            return Redirect()->back()->with($notification);
    }
}

public function couponRemove()
{
    Session::forget('coupon');
    $notification=array(
        'messege'=>'Coupon Remove Successfully',
        'alert-type'=>'error'
          );
        return Redirect()->back()->with($notification);
}

public function paymentpage()
{
    $cart = Cart::content();
    return view('pages.payment',compact('cart'));
}

}
