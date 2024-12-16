<?php

use App\Http\Controllers\Admin\ForgotPasswordController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\ResetPasswordController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\Category\CategoryController;
use App\Http\Controllers\Admin\Category\SubCategoryController;
use App\Http\Controllers\Admin\Category\BrandController;
use App\Http\Controllers\Admin\Category\CouponController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ReportController;
use App\Http\Controllers\Admin\UserRoleController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\ReturnController;
use App\Http\Controllers\CampaignController;
use App\Http\Controllers\SocialController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\FrontProductController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\PaymentController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {return view('pages.index');});
//Social Login
 Route::get('/auth/redirect/{provider}', [SocialController::class,'redirect']);
 Route::get('/callback/{provider}', [SocialController::class,'callback']);

//auth & user
Auth::routes(['verify' => true]);
Route::get('/home', [HomeController::class,'index'])->name('home');
Route::get('/password-change', [HomeController::class,'changePassword'])->name('password.change');
Route::post('/password-update', [HomeController::class,'updatePassword'])->name('password.update');
Route::get('/user/logout', [HomeController::class,'Logout'])->name('user.logout');

//admin=======
Route::get('admin/home', [AdminController::class,'index']);
Route::get('admin', [LoginController::class,'showLoginForm'])->name('admin.login');
Route::post('admin', [LoginController::class,'login']);
        // Password Reset Routes...
Route::get('admin/password/reset', [ForgotPasswordController::class,'showLinkRequestForm'])->name('admin.password.request');
Route::post('admin-password/email', [ForgotPasswordController::class,'sendResetLinkEmail'])->name('admin.password.email');
Route::get('admin/reset/password/{token}',[ResetPasswordController::class,'showResetForm'])->name('admin.password.reset');
Route::post('admin/update/reset',[ResetPasswordController::class,'reset'])->name('admin.reset.update');
Route::get('/admin/Change/Password',[AdminController::class,'ChangePassword'])->name('admin.password.change');
Route::post('/admin/password/update',[AdminController::class,'Update_pass'])->name('admin.password.update');
Route::get('admin/logout', [AdminController::class,'logout'])->name('admin.logout');

//Admin Section
//Category
Route::get('admin/categories', [CategoryController::class,'category'])->name('categories');
Route::post('admin/store/category', [CategoryController::class,'storecategory'])->name('store.category');
Route::get('delete/category/{id}', [CategoryController::class,'Deletecategory']);
Route::get('edit/category/{id}', [CategoryController::class,'Editcategory']);
Route::post('update/category/{id}', [CategoryController::class,'Updatecategory']);
//Brand
Route::get('admin/brands', [BrandController::class,'brand'])->name('brands');
Route::post('admin/store/brand', [BrandController::class,'storebrand'])->name('store.brand');
Route::get('delete/brand/{id}', [BrandController::class,'Deletebrand']);
Route::get('edit/brand/{id}', [BrandController::class,'Editbrand']);
Route::post('update/brand/{id}', [BrandController::class,'Updatebrand']);
//Sub Category
Route::get('admin/sub/category', [SubCategoryController::class,'subcategories'])->name('sub.categories');
Route::post('admin/store/subcat', [SubCategoryController::class,'storesubcat'])->name('store.subcategory');
Route::get('delete/subcategory/{id}', [SubCategoryController::class,'DeleteSubcat']);
Route::get('edit/subcategory/{id}', [SubCategoryController::class,'EditSubcat']);
Route::post('update/subcategory/{id}', [SubCategoryController::class,'UpdateSubcat']);
// sub Category with Ajax
Route::get('/get/subcategory/{category_id}', [ProductController::class,'getSubcat']);

//Coupons
Route::get('admin/sub/coupon', [CouponController::class,'coupon'])->name('admin.coupon');
Route::post('admin/store/coupon', [CouponController::class,'storecoupon'])->name('store.coupon');
Route::get('delete/coupon/{id}', [CouponController::class,'DeleteCoupon']);
Route::get('edit/coupon/{id}', [CouponController::class,'EditCoupon']);
Route::post('update/coupon/{id}', [CouponController::class,'UpdateCoupon']);
//Newslater
Route::get('admin/newslater', [CouponController::class,'newslater'])->name('admin.newslater');
Route::get('delete/sub/{id}', [CouponController::class,'DeleteSub']);

//Product
Route::get('admin/product/all', [ProductController::class,'index'])->name('all.product');
Route::get('admin/product/add', [ProductController::class,'create'])->name('add.product');
Route::post('admin/store/product', [ProductController::class,'storeProduct'])->name('store.product');
Route::get('inactive/product/{id}', [ProductController::class,'inactive']);
Route::get('active/product/{id}', [ProductController::class,'active']);
Route::get('delete/product/{id}', [ProductController::class,'deleteProduct']);
Route::get('view/product/{id}', [ProductController::class,'viewProduct']);
Route::get('edit/product/{id}', [ProductController::class,'editProduct']);
Route::post('update/product/withoutphoto/{id}', [ProductController::class,'updateProductWithoutPhoto']);
Route::post('update/product/photo/{id}', [ProductController::class,'updateProductPhoto']);

//Blog
Route::get('blog/category/list', [PostController::class,'blogCatlist'])->name('add.blog.categorylist');
Route::post('blog/category/store', [PostController::class,'storeBlogCat'])->name('store.blog.catagory');
Route::get('delete/blog/categorylist/{id}', [PostController::class,'deleteBlogCatlist']);
Route::get('edit/blog/categorylist/{id}', [PostController::class,'editBlogCatlist']);
Route::post('update/blog/categorylist/{id}', [PostController::class,'updateBlogCatlist']);

Route::get('admin/post/all', [PostController::class,'index'])->name('all.blogpost');
Route::get('admin/post/add', [PostController::class,'create'])->name('add.blogpost');
Route::post('blog/post', [PostController::class,'storeBlogPost'])->name('store.post');
Route::get('delete/post/{id}', [PostController::class,'deletePost']);
Route::get('edit/post/{id}', [PostController::class,'editPost']);
Route::post('update/post/{id}', [PostController::class,'updatePost']);


//Frontend
Route::post('store/newslater', [FrontController::class,'StoreNewslater'])->name('store.newslater');

//Add Wishlist
Route::get('add/wishlist/{id}', [WishlistController::class,'adWishlist']);

//Cart
Route::get('add/to/cart/{id}', [CartController::class,'addCart']);
Route::get('check', [CartController::class,'check']);

Route::get('product/cart', [CartController::class,'showCart'])->name('show.cart');
Route::get('remove/cart/{rowId}', [CartController::class,'removeCart']);
Route::post('update/cart/item', [CartController::class,'updateCart'])->name('update.cartitem');

Route::get('/cart/product/view/{id}', [CartController::class,'viewProduct']);
Route::post('insert/into/cart',[CartController::class,'insertCart'])->name('insert.into.cart');

Route::get('user/checkout/',  [CartController::class,'checkout'])->name('user.checkout');
Route::get('user/wishlist/',  [CartController::class,'wishlist'])->name('user.wishlist');

Route::post('user/apply/coupon/',  [CartController::class,'coupon'])->name('apply.coupon');
Route::get('coupon/remove/',  [CartController::class,'couponRemove'])->name('coupon.remove');


Route::get('/product/details/{id}/{product_name}', [FrontProductController::class,'productView']);
Route::post('cart/product/add/{id}', [FrontProductController::class,'addCart']);

//Blog
Route::get('blog/post/',[BlogController::class,'blog'])->name('blog.post');
Route::get('language/english/',[BlogController::class,'english'])->name('language.english');
Route::get('language/bangla/',[BlogController::class,'bangla'])->name('language.bangla');
Route::get('blog/single/{id}',[BlogController::class,'blogSingle']);

//Payment Step
Route::get('payment/page/',[CartController::class,'paymentpage'])->name('payment.step');
Route::post('user/payment/process/',[PaymentController::class,'payment'])->name('payment.process');
Route::post('user/stripe/charge/',[PaymentController::class,'stripeCharge'])->name('stripe.charge');




//Product Details Page
Route::get('products/{id}',[FrontProductController::class,'frontProductsView']);
Route::get('allcategory/{id}',[FrontProductController::class,'frontCategoryView']);



//Admin Order

Route::get('admin/pending/order',[OrderController::class,'newOrder'])->name('admin.neworder');
Route::get('admin/view/order/{id}',[OrderController::class,'viewOrder']);

Route::get('admin/payment/accept/{id}',[OrderController::class,'paymentAccept']);
Route::get('admin/payment/cancel/{id}',[OrderController::class,'paymentCancel']);


Route::get('admin/accept/payment',[OrderController::class,'acceptPayment'])->name('admin.accept.payment');
Route::get('admin/cancel/order',[OrderController::class,'cancelOrder'])->name('admin.cancel.order');

Route::get('admin/process/payment',[OrderController::class,'processPayment'])->name('admin.process.payment');
Route::get('admin/success/payment',[OrderController::class,'successPayment'])->name('admin.success.payment');

Route::get('admin/delivery/process/{id}',[OrderController::class,'deliveryProcess']);
Route::get('admin/delivery/done/{id}',[OrderController::class,'deliveryDone']);


//order Tracking
Route::post('order/tracking/',[FrontController::class,'orderTracking'])->name('order.tracking');




//order Report
Route::get('admin/today/order',[ReportController::class,'todayOrder'])->name('today.order');
Route::get('admin/today/delivery',[ReportController::class,'todayDelivery'])->name('today.delivery');

Route::get('admin/this/month',[ReportController::class,'thisMonth'])->name('this.month');
Route::get('admin/search/report',[ReportController::class,'search'])->name('search.report');

//Report Search
Route::post('admin/search/by/year/',[ReportController::class,'searchByYear'])->name('search.by.year');
Route::post('admin/search/by/month/',[ReportController::class,'searchByMonth'])->name('search.by.month');
Route::post('admin/search/by/date/',[ReportController::class,'searchByDate'])->name('search.by.date');

//Admin Role
Route::get('admin/all/user',[UserRoleController::class,'userRole'])->name('admin.all.user');
Route::get('admin/create/admin',[UserRoleController::class,'userCreate'])->name('create.admin');
Route::post('admin/store/admin',[UserRoleController::class,'userStore'])->name('store.admin');
Route::get('delete/admin/{id}',[UserRoleController::class,'userDelete']);
Route::get('edit/admin/{id}',[UserRoleController::class,'userEdit']);
Route::post('admin/update/admin',[UserRoleController::class,'userUpdate'])->name('update.admin');


//Site Setting
Route::get('admin.site.setting',[SettingController::class,'siteSetting'])->name('admin.site.setting');
Route::post('admin/update/setting',[SettingController::class,'settingUpdate'])->name('update.sitesetting');

//Return Order
Route::get('success/order',[PaymentController::class,'successOrder'])->name('success.order');
Route::get('request/return/{id}',[PaymentController::class,'returnRequest']);

Route::get('admin/return/request',[ReturnController::class,'returnRequest'])->name('admin.return.request');
Route::get('admin/approve/return/{id}',[ReturnController::class,'approveRequest']);

Route::get('admin/all/return',[ReturnController::class,'allReturn'])->name('admin.all.return');


//Campaign

Route::get('campaigns',[CampaignController::class,'campaigns'])->name('campaigns');

//Stock admin.product.stock
Route::get('admin/product/stock',[UserRoleController::class,'productStock'])->name('admin.product.stock');

//Contact
Route::get('contact/page',[ContactController::class,'contact'])->name('contact.page');
Route::post('contact/form',[ContactController::class,'contactStore'])->name('contact.form');
Route::get('all/message',[ContactController::class,'allMessage'])->name('all.message');











