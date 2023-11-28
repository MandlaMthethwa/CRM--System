<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Client;


class ClientController extends Controller
{
    public function index(){
        $clients = Client::all();
        return view('clients.index', compact('clients'));
    }
    public function create(){
        return view('clients.create');
    }
    public function store(Request $request){
      $request->validate([
        'id_number' => 'required|numeric|unique:your_table_name,id_number|max:9999999999999',
        'first_name' => 'required|string',
        'last_name' => 'required|string',
        'email' => 'required|email|unique:your_table_name,email',
        'phone' => 'required|string',
        'status' => 'required|string',
    ]);
}

}
