<?php
use App\Http\Controllers\ProductController;
use App\products;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Route;
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

/*use Illuminate\Routing\Route;*/

Route::get('/', function () {
    return view('welcome');
});
/* Product Routes */
Route::get('/boutique','ProductController@index')->name('products.index');
Route::get('/boutique/{slug}','ProductController@show')->name('products.show');
Route::get('/search', 'ProductController@search')->name('products.search');
/* Cart Routes */
Route::group(['middleware' => ['auth']], function(){
  Route::get('/panier', 'CartController@index')->name('cart.index');
  Route::post('/panier/ajouter','CartController@store')->name('cart.store');
  Route::delete('/panier/{rowId}','CartController@destroy')->name('cart.destroy');
  Route::patch('/panier/{rowId}','CartController@update')->name('cart.update');
});
//Route::get('/videpanier',function(){
  //  Cart::destroy();
//});
Route::group(['middleware' => ['auth']], function () {
  Route::get('/paiement', 'CheckoutController@index')->name('checkout.index');
  Route::post('/paiement', 'CheckoutController@store')->name('checkout.store');
  Route::get('/merci', 'CheckoutController@thankYou')->name('checkout.thankyou');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
