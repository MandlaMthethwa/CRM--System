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
        $validatedData = $request->validate([
        'id_number' => 'required|numeric|unique:clients,id_number|max:9999999999999',
        'first_name' => 'required|string',
        'last_name' => 'required|string',
        'email' => 'required|email|unique:clients,email',
        'phone' => 'required|string',
        'status' => 'required|string',
    ]);
    $clients = new client();
    $clients->id_number = $validatedData['id_number'];
    $clients->first_name = $validatedData['first_name'];
    $clients->last_name = $validatedData['last_name'];
    $clients->email = $validatedData['email'];
    $clients->phone = $validatedData['phone'];
    $clients->status = $validatedData['status'];

    $clients->save();
    return redirect('clients/');
}

}
