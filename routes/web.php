<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/user-form', function () {
//     return view('user-form');
// });
Route::auth();
Route::get('/', [HomeController::class, 'index'])->name('home');
// clients
// Route::middleware(['auth'])->group(function () {
    Route::get('/about', function () {
        return view('clients.about');
    })->name('about');

    Route::get('/profile', function () {
        return view('livewire.profile');
    })->name('profile');

    Route::get('/blog', function () {
        return view('clients.blog');
    })->name('blog');

    Route::get('/blog-details', function () {
        return view('clients.blog-details');
    })->name('blog-details');

    Route::get('/cart', function () {
        return view('clients.cart');
    })->name('cart');

    Route::get('/checkout', function () {
        return view('clients.checkout');
    })->name('checkout');

    Route::get('/coming-soon', function () {
        return view('clients.coming-soon');
    })->name('coming-soon');

    Route::get('/contact', function () {
        return view('clients.contact');
    })->name('contact');

    Route::get('/404', function () {
        return view('clients.error-404');
    })->name('404');


    Route::get('/faq', function () {
        return view('clients.faq');
    })->name('faq');

    // Route::get('/home', function () {
    //     return view('clients.home');
    // })->name('home');

    Route::get('/portfolio', function () {
        return view('clients.portfolio');
    })->name('portfolio');

    Route::get('/portfolio-details', function () {
        return view('clients.portfolio-details');
    })->name('portfolio-details');

    Route::get('/product-details', function () {
        return view('clients.product-details');
    })->name('product-details');

    Route::get('/product', function () {
        return view('clients.product');
    })->name('product');

    Route::get('/store', function () {
        return view('clients.store');
    })->name('store');

    Route::get('/wishlist', function () {
        return view('clients.wishlist');
    })->name('wishlist');
// });

