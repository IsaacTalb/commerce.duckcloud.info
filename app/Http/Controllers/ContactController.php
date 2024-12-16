<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ContactController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function contact()

    {
        return view('pages.contact');
    }
    public function contactStore(Request $request)
    {


        $data = array();
        $data['name'] = $request->name;
        $data['phone'] = $request->phone;
        $data['email'] = $request->email;
        $data['message'] = $request->message;



        DB::table('contact')->insert($data);
     $notification=array(
               'messege'=>'Your Message Insert Successfully',
               'alert-type'=>'success'
                );
              return Redirect()->back()->with($notification);
    }

    public function allMessage()

    {
        $message = DB::table('contact')->get();
        return view('admin.contact.all_message',compact('message'));
    }
}
