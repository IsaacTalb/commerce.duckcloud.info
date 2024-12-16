<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//use DB;
use Illuminate\support\facades\DB;


class ReturnController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    
    public function returnRequest()
    {
        $order = DB::table('orders')->where('return_order',1)->get();
        return view('admin.order.return.return_request',compact('order'));
    }
    
    public function approveRequest($id)
{

    DB::table('orders')->where('id',$id)->update(['return_order'=>2]);
    $notification=array(
        'messege'=>'Order Return Success',
        'alert-type'=>'success'
        );
    return Redirect()->back()->with($notification);

}
public function allReturn()
{
    $order = DB::table('orders')->where('return_order',2)->get();
    return view('admin.order.return.all_Return',compact('order'));
}


}
