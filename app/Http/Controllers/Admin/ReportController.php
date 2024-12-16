<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function todayOrder()
    {
        $today = date('d-m-y');
        $order = DB::table('orders')->where('status',0)->where('date',$today)->get();
        return view('admin.report.today_order',compact('order'));


    }
    public function todayDelivery()
    {
        $today = date('d-m-y');
        $order = DB::table('orders')->where('status',3)->where('date',$today)->get();
        return view('admin.report.today_delivery',compact('order'));


    }

    public function thisMonth()
    {
        $month = date('F');
        $order = DB::table('orders')->where('status',3)->where('month',$month)->get();
        return view('admin.report.month_delivery',compact('order'));


    }

    public function search()
    {
       // $month = date('F');
        //$order = DB::table('orders')->where('status',3)->where('month',$month)->get();
        return view('admin.report.search');


    }

    public function searchByYear(Request $request )
    {
        $year = $request->year;
    //    echo "$year";
        $total = DB::table('orders')->where('status',3)->where('year',$year)->sum('total');
        $order = DB::table('orders')->where('status',3)->where('year',$year)->get();
        //echo "$total";
        return view('admin.report.search_by_year',compact('order','total'));


    }



    public function searchByMonth(Request $request )
    {
        $month = $request->month;
    //    echo "$year";
        $total = DB::table('orders')->where('status',3)->where('month',$month)->sum('total');
        $order = DB::table('orders')->where('status',3)->where('month',$month)->get();
        //echo "$total";
        return view('admin.report.search_by_month',compact('order','total'));


    }
    public function searchByDate(Request $request )
    {
        $date = $request->date;
    //    echo "$year";
        $newdate = date('d-m-y',strtotime($date));
              //echo "$newdate";
         $total = DB::table('orders')->where('status',3)->where('date',$newdate)->sum('total');
         $order = DB::table('orders')->where('status',3)->where('date',$newdate)->get();
        // //echo "$total";
         return view('admin.report.search_by_date',compact('order','total'));


    }


}
