<?php

use App\Http\Controllers\api\ProductController;
use App\Http\Controllers\api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('/login', [UserController::class, 'login']);

Route::middleware('auth:api')->group(function (){
    Route::get('/logout', [UserController::class, 'logout']);
    Route::get('/user', [UserController::class, 'user']);
    Route::apiResource('/products', ProductController::class);
    Route::get('/search/{title}', [ProductController::class, 'search']);
});

//Route::middleware('auth:user')->get('/user', function (Request $request) {
//
//});

//Route::get('/user', function () {
//    Route::get('/logout', [UserController::class, 'logout']);
//})->middleware('auth:api');
