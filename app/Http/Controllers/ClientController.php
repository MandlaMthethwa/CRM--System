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
public function edit(Client $client)
{
    return view('clients.edit', compact('client'));
}

public function update(Request $request, Client $client)
{
    $validatedData = $request->validate([
        'id_number' => 'required|numeric|unique:your_table_name,id_number,' . $client->id . '|max:9999999999999',
        'first_name' => 'required|string',
        'last_name' => 'required|string',
        'email' => 'required|email|unique:your_table_name,email,' . $client->id,
        'phone' => 'required|string',
        'status' => 'required|string',
    ]);

    $client->id_number = $validatedData['id_number'];
    $client->first_name = $validatedData['first_name'];
    $client->last_name = $validatedData['last_name'];
    $client->email = $validatedData['email'];
    $client->phone = $validatedData['phone'];
    $client->status = $validatedData['status'];

    return redirect('clients/');
}

}
