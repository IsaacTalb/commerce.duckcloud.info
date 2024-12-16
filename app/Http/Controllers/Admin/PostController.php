<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Image;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
        
    public function blogCatlist()
    {
         $blogcat = DB::table('post_category')->get() ;
         return view('admin.blog.category.index',compact('blogcat'));
    }
   
    
    public function storeBlogCat(Request $request)
    {
         $validation = $request->validate([
             'category_name_en' => 'required|max:255',
             'category_name_in' => 'required|max:255',
             'category_name_bd' => 'required|max:255',
         ]);
         $data=array();
         $data['category_name_en']=$request->category_name_en;
         $data['category_name_in']=$request->category_name_in;
         $data['category_name_bd']=$request->category_name_bd;
         DB::table('post_category')->insert($data);
         $notification=array(
            'messege'=>'Blog Category Inserted Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }
    
    public function deleteBlogCatlist($id)
    {
        DB::table('post_category')->where('id',$id)->delete();
        $notification=array(
            'messege'=>'Blog Category Deleted Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }
    
    
    public function editBlogCatlist($id)
    {
        $blogcat = DB::table('post_category')->where('id',$id)->first();
        return view('admin.blog.category.edit',compact('blogcat'));
    }
    
    public function updateBlogCatlist(Request $request,$id)
    {
        $validation = $request->validate([
            'category_name_en' => 'required|max:255',
            'category_name_in' => 'required|max:255',
            'category_name_bd' => 'required|max:255',
        ]);
        $data=array();
        $data['category_name_en']=$request->category_name_en;
        $data['category_name_in']=$request->category_name_in;
        $data['category_name_bd']=$request->category_name_bd;
        $update=DB::table('post_category')->where('id',$id)->update($data);

        if($update)
        {
            $notification=array(
                'messege'=>'Blog Category Updated Successfully',
                'alert-type'=>'success'
                 );
               return Redirect()->route('add.blog.categorylist')->with($notification);

        }
        else
        {
            $notification=array(
                'messege'=>'Nothing To Update',
                'alert-type'=>'error'
                 );
               return Redirect()->route('add.blog.categorylist')->with($notification);

        }

       
    }

    public function create()
    {
        $blogcat = DB::table('post_category')->get();
        return view('admin.blog.create_blog',compact('blogcat'));
    }
    
      
    public function storeBlogPost(Request $request)
    {
          $data=array();
          $data['post_title_en']=$request->post_title_en;
          $data['post_title_in']=$request->post_title_in;
          $data['post_title_bd']=$request->post_title_bd;
          $data['category_id']=$request->category_id;
          $data['details_en']=$request->details_en;
          $data['details_in']=$request->details_in;
          $data['details_bd']=$request->details_bd;
          $post_image = $request->file('post_image');
           //return response()->json($data);
        if($post_image)
        {
            $post_image_name = hexdec(uniqid()).'.'.$post_image->getClientOriginalExtension();
            Image::make($post_image)->resize(300,300)->save('media/post/'.$post_image_name);
            $data['post_image'] = 'media/post/'.$post_image_name;
            $post = DB::table('posts')->insert($data);
            $notification=array(
                'messege'=>'Post Inserted Successfully',
                'alert-type'=>'success'
                 );
               return Redirect()->back()->with($notification);
        }
          
        
 
    }
    public function index()
    {
        $post = DB::table('posts')
                    ->join('post_category','posts.category_id','post_category.id')
                    ->select('posts.*','post_category.category_name_en')
                    ->get();
                   // return response()->json($product);
                   return view('admin.blog.index_blog',compact('post'));
    }
    
    public function deletePost($id)
    {
        $data = DB::table('posts')->where('id',$id)->first();
        $image1 = $data->post_image;
        unlink($image1);
         DB::table('posts')->where('id',$id)->delete();
        $notification=array(
            'messege'=>'Post Deleted Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }
    public function editPost($id)
    {
        $post = DB::table('posts')->where('id',$id)->first();
        return view('admin.blog.edit_blog',compact('post'));

       
    }
    public function updatePost(Request $request,$id)
    {
        $old_image = $request->post_image;
        $data=array();
        $data['post_title_en']=$request->post_title_en;
        $data['post_title_in']=$request->post_title_in;
        $data['post_title_bd']=$request->post_title_bd;
        $data['category_id']=$request->category_id;
        $data['details_en']=$request->details_en;
        $data['details_in']=$request->details_in;
        $data['details_bd']=$request->details_bd;
        $post_image = $request->file('post_image');
        //return response()->json($data);
     if($post_image)
     {
         unlink($old_image);
         $post_image_name = hexdec(uniqid()).'.'.$post_image->getClientOriginalExtension();
         Image::make($post_image)->resize(300,300)->save('media/post/'.$post_image_name);
         $data['post_image'] = 'media/post/'.$post_image_name;
         DB::table('posts')->where('id',$id)->update($data);
         $notification=array(
             'messege'=>'Post Updated Successfully',
             'alert-type'=>'success'
              );
            return Redirect()->route('all.blogpost')->with($notification);
     }
     else{
        DB::table('posts')->where('id',$id)->update($data);
        $notification=array(
            'messege'=>'Post Updated Without Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->route('all.blogpost')->with($notification);

     }
 
  
    
    

    }

    
    
}
