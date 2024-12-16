<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class WishlistController extends Controller
{

    public function adWishlist($id)
    {
        if(!Auth::Check()){
            return  response()->json(['error' => 'At first Loging your account']);
        }

        $userid = Auth::user()->id;
        $check = DB::table('wishlists')->where('user_id', $userid)->where('product_id', $id)->first();

        $data = array(
        'user_id' => $userid,
        'product_id' => $id);

        if ($check) {
            DB::table('wishlists')->where('user_id', $userid)->where('product_id', $id)->delete();
            // User::where('id',$id)->delete();

            return response()->json(['error' => 'Product remove from wishlist']);
        }else{
            DB::table('wishlists')->insert($data);
            return response()->json(['success' => 'Product Added on wishlist']);
        }
       }
}
