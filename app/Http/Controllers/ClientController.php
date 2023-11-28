<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Client;


class ClientController extends Controller
{
    public function index(Request $request)
    {
        $sort = $request->input('sort');

        $clients = Client::when($sort, function ($query) use ($sort) {
            $query->orderBy($sort, 'asc');
        })->get();

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
    $client = new client();
    $client->id_number = $validatedData['id_number'];
    $client->first_name = $validatedData['first_name'];
    $client->last_name = $validatedData['last_name'];
    $client->email = $validatedData['email'];
    $client->phone = $validatedData['phone'];
    $client->status = $validatedData['status'];

    $client->save();
    return redirect('/');
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
    $client->save();
    return redirect('/');
}

public function destroy(Client $client)
    {
        $client->delete();

        return redirect('/');
    }

}
