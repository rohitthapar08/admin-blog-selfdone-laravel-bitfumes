<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
// });

// Route::get('post', function () {
//     // return view('user/post');
//     return view('user.post');
// })->name('post');

//User Routes
Route::group(['namespace'=>'User'],function(){

    Route::get('/','HomeController@index');

    Route::get('post/{post}','PostController@post')->name('post');


    
    Route::get('post/tag/{tag}','HomeController@tag')->name('tag');

    Route::get('post/category/{category}','HomeController@category')->name('category');


});
//Admin Routes
Route::group(['namespace'=>'Admin'],function(){

    Route::get('admin/home','HomeController@home')->name('admin.home');
    //User Routes
    Route::resource('admin/user','UserController');
    //Roles Routes
    Route::resource('admin/role','RoleController');
    // Permission Routes
	Route::resource('admin/permission','PermissionController');
    //Post Routes
    Route::resource('admin/post','PostController');
    //Tag Routes
    Route::resource('admin/tag','TagController');
    //Category Routes
    Route::resource('admin/category','CategoryController');
    //admin auth routes
    Route::get('admin-login', 'Auth\LoginController@showLoginForm')->name('admin.login');

    Route::post('admin-login','Auth\LoginController@login');
    
});

// Route::get('/','User\HomeController@index');
// Route::get('post','User\PostController@index')->name('post');

// Route::resource('admin/post','Admin\PostsController');
// Route::resource('admin/tag','Admin\TagController');
// Route::resource('admin/category','Admin\CategoryController');


// Route::get('admin/home', function () {
//     return view('admin.home');
// })->name('post');

// Route::get('admin/post', function () {
//     return view('admin.post.post');
// });

// Route::get('admin/tag', function () {
//     return view('admin.tag.tag');
// });

// Route::get('admin/category', function () {
//     return view('admin.category.category');
// });
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
