<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class SettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function siteSetting()
    {
        $setting = DB::table('sitesetting')->first();
        return view('admin.setting.site_setting',compact('setting'));
    }

    public function settingUpdate(Request $request){

        $id = $request->id;

        $data = array();
        $data['phone_one'] = $request->phone_one;
        $data['phone_two'] = $request->phone_two;
        $data['email'] = $request->email;
        $data['company_name'] = $request->company_name;
        $data['company_address'] = $request->company_address;
        $data['facebook'] = $request->facebook;
        $data['youtube'] = $request->youtube;
        $data['instagram'] = $request->instagram;
        $data['twitter'] = $request->twitter;
        DB::table('sitesetting')->where('id',$id)->update($data);

     $notification=array(
               'messege'=>'SiteSetting Updated Successfully',
               'alert-type'=>'success'
                );
              return Redirect()->route('admin.site.setting')->with($notification);

    }
}

