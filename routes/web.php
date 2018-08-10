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

/*
|--------------------------------------------------------------------------
| Backend
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'administrator'], function () {
    Voyager::routes();
});

/*
|--------------------------------------------------------------------------
| Frontend
|--------------------------------------------------------------------------
*/
// Trang Chủ
Route::get('/', function () {
    return view('frontend.pages.home');
})->name('frontend.pages.home');

// Giới Thiệu
Route::get('/gioi-thieu.html', function () {
    return view('frontend.pages.about');
})->name('frontend.pages.about');

// Dự Án
Route::get('/du-an.html', function () {
    return view('frontend.pages.project');
})->name('frontend.pages.project');

// Dịch Vụ
Route::get('/dich-vu.html', function () {
    return view('frontend.pages.service');
})->name('frontend.pages.service');
// Chi Tiết Dịch Vụ
Route::get('/dich-vu/{slug}_{id}.html', 'FrontendController@serviceDetail')
    ->name('frontend.pages.service-detail');

// Tin Tức
Route::get('/tin-tuc.html', function () {
    return view('frontend.pages.news');
})->name('frontend.pages.news');
// Chi Tiết Tin Tức
Route::get('/{slug}_{id}.html', 'FrontendController@newsDetail')
    ->name('frontend.pages.news-detail');

// Liên Hệ
Route::get('/lien-he.html', function () {
    return view('frontend.pages.contact');
})->name('frontend.pages.contact');