<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;

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
Auth::routes();
Route::resource('categories', clientController::class);

//index
Route::get('/', [ClientController::class, 'index']);

//create
Route::get('/clients/create', [ClientController::class,'create'])->name('clients.create');
Route::post('/clients', [ClientController::class,'store'])->name('clients.store');

//edit
Route::get('/clients/{client}/edit', [clientController::class, 'edit'])->name('clients.edit');
Route::put('/clients/{client}', [clientController::class, 'update'])->name('clients.update');




