<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Cart;

class FrontProductController extends Controller
{
    //productView
    public function productView($id,$product_name)
    {
        $product = DB::table('products')
        ->join('categories','products.category_id','categories.id')
        ->join('subcategories','products.subcategory_id','subcategories.id')
        ->join('brands','products.brand_id','brands.id')
        ->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
        ->where('products.id',$id)
        ->first();

        $color = $product->product_color;
        $product_color = explode(',',$color);

        $size = $product->product_size;
        $product_size = explode(',',$size);

        return view('pages.products_details',compact('product','product_color','product_size'));
    }


    public function addCart(Request $request,$id)
    {
        $product = DB::table('products')->where('id',$id)->first();
        $data = array();


    if($product->discount_price == NULL)
    {


        Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->selling_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);

          $notification=array(
            'messege'=>'Product Successfully Added',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }
    else{

         Cart::add(['id' => $product->id, 'name' => $product->product_name, 'qty' => $request->qty, 'price' => $product->discount_price, 'weight' => 1, 'options' => ['image1' => $product->image_one, 'image2' => $product->image_two, 'image3' => $product->image_three,'size' =>$request->size,'color' =>$request->color]]);
         $notification=array(
            'messege'=>'Product Successfully Added',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);

         }



    }

    public function frontProductsView($id)
    {
        $products = DB::table('products')->where('subcategory_id',$id)->paginate(10);
        $categorys = DB::table('categories')->get();
        $brands = DB::table('products')->where('subcategory_id',$id)->select('brand_id')->groupBy('brand_id')->get();
        return view('pages.all_products',compact('products','categorys','brands'));
    }

    public function frontCategoryView($id){

        $category_all =  DB::table('products')->where('category_id',$id)->paginate(10);
        return view('pages.all_category',compact('category_all'));

      }


}
