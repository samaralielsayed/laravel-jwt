<?php

use App\Http\Controllers\api\Admin\AuthController;
use App\Http\Controllers\api\AmericanSignLanguageController;
use App\Http\Controllers\VerificationController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware(['api'])->prefix('v1')->group(function(){
    Route::controller(AuthController::class)->group(function(){
        Route::post('register', 'register');
        Route::post('login', 'login');
        Route::post('logout', 'logout');
        Route::post('refresh', 'refresh');
        });
        Route::controller(AmericanSignLanguageController::class)->group(function(){
            Route::get('alphabets/all','alphabetAll')->name('alphabets.all');
            Route::get('alphabets/edit/{id}' ,'alphabetShow')->name('alphabets.show');
            Route::get('numbers/all','numbersAll')->name('numbers.all');
            Route::get('numbers/edit/{id}' ,'numbersShow')->name('numbers.show');

            });
        Route::controller(VerificationController::class)->group(function(){
            Route::get('/email/verify/{id}/{hash}', 'verify')->middleware(['auth', 'signed'])->name('verification.verify');
            Route::get('/email/resend', 'resend')->middleware(['auth', 'throttle:6,1'])->name('verification.send');
            });
    });



