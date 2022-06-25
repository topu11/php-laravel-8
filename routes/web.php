<?php

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\PhpStrome;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormController;
use App\Http\Controllers\TestController;
use \App\Http\Controllers\PostController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\FluentController;
use App\Http\Controllers\StudentController;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/users', function () {

    return "Allah Akbar";
});

Route::get('/user/{username?}', function ($username = null) {

    if (isset($username)) {
        return $username;
    } else {
        return "no users name found";
    }
});

Route::get('/usertest/{username}', function ($username = null) {

    if (isset($username)) {
        return $username;
    } else {
        return "no users name found";
    }
});

Route::get('/test', [TestController::class, 'index'])->name('test.index');
Route::get('/home/{id?}', [TestController::class, 'home'])->name('test.home')->where('id', '[0-9]+');
Route::get('/view1/{name?}', function ($name = null) {

    return view('home', compact(['name']));
})->where('name', '[a-zA-Z]+');

Route::get('/view2', [TestController::class, 'view2']);

Route::get('/view3', function () {

    $fruits = ['mango', 'banana', 'orage', 'apple', 'liche'];
    $fruits1 = ['mango1', 'banana1', 'orage1', 'apple1', 'liche1'];
    return view('component', compact(['fruits', 'fruits1']));
});

Route::get('/allpost', [ClientController::class, 'getallpost'])->name('allpost');
Route::get('/postbyid/{id}', [ClientController::class, 'postbyid'])->name('post.id');
Route::get('/team', [ClientController::class, 'team'])->name('post.team');
Route::get('/fluent-string', [FluentController::class, 'index'])->name('fluent');
Route::get('/php-strome', [PhpStrome::class, 'index']);

Route::get('/view4', [TestController::class, 'view4'])->middleware('checkuser');

Route::get('/form-view', [FormController::class, 'index'])->name('form.view');

Route::post('/form-post', [FormController::class, 'formpost'])->name('form.post');


Route::controller(PostController::class)->group(function () {

    Route::name('post.')->group(function () {
        Route::get('/view-post-form', 'index')->name('form_view');

        Route::post('/insert-post-form', 'store')->name('form_store');

        Route::get('/archive-post-data', 'archive_post_data')->name('post_archive');

        Route::get('/view-single-post-data/{id}', 'single_post_data')->name('single_post');

        Route::get('/delete-single-post/{id}', 'delete')->name('delete');

        Route::get('/edit-single-post/{id}', 'edit')->name('edit');

        Route::post('/update-single-post', 'update')->name('update');
    });

});

Route::get('/student-post-mapping',[StudentController::class,'index']);

Route::get('/table-structure', function(){
    //DB::table('posts');
    $studenttabledescription=DB::select('DESCRIBE posts');

    var_dump($studenttabledescription);
    // return response()->json([
    //   'status'=>'success',
    //   'studenttabledescription'=>$studenttabledescription
    // ],200);
});