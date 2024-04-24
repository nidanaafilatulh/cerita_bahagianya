<?php

use App\Http\Controllers\adminController;
use App\Http\Controllers\authenticationController;
use App\Http\Controllers\homeController;
use App\Http\Controllers\postController;
use Illuminate\Support\Facades\Route;

Route::get('/', [homeController::class, 'index']);

Route::get('/admin', [authenticationController::class, 'index'])->middleware('guest');
Route::post('/admin', [authenticationController::class, 'authenticate'])->middleware('guest');
Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [adminController::class, 'index']);
    Route::get('/dashboard/manage', [adminController::class, 'manage']);
    Route::get('/dashboard/create', [adminController::class, 'create']);
    Route::post('/dashboard/create', [adminController::class, 'store']);
    Route::get('/dashboard/transaksi', [adminController::class, 'transaksiIndex']);
    Route::get('/dashboard/transaksi/create', [adminController::class, 'transaksiCreate']);
    Route::post('/dashboard/transaksi/create', [adminController::class, 'storeTransaksi']);
    Route::delete('/dashboard/transaksi/{id}', [adminController::class, 'destroyTransaksi']);
    Route::delete('/dashboard/manage/{slug}', [adminController::class, 'destroy']);
    Route::get('dashboard/manage/{slug}/edit', [adminController::class, 'updateCreate']);
    Route::get('dashboard/transaksi/{id}/edit', [adminController::class, 'updateTransaksi']);
    Route::patch('dashboard/transaksi/{id}/edit', [adminController::class, 'updateTransaksiStore']);
    Route::patch('dashboard/manage/{slug}/edit', [adminController::class, 'updateStore']);
    Route::get('/cetak-pdf/{post}', [adminController::class, 'createPDF'])->name('cetak.pdf');
    Route::post('/logout', [authenticationController::class, 'logout']);
});

Route::get('{slug}', [postController::class, 'index']);
Route::post('{slug}', [postController::class, 'store']);
Route::get('/print', function () {
    return view('coba');
});
