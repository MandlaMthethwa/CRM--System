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
}


