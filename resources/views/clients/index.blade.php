@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <br/>
                <div>
                    <div class="card-body">
                        @if(session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif


                        <h2>Client List</h2>
                        <form action="{{ route('clients.index') }}" method="GET">
                            <div class="form-row">
                                <div class="col">
                                    <select name="sort" class="form-control">
                                        <option value="" selected>Filter by</option>
                                        <option value="first_name" {{ request('sort') === 'first_name' ? 'selected' : '' }}>First Name </option>
                                        <option value="last_name" {{ request('sort') === 'last_name' ? 'selected' : '' }}>Last Name</option>
                                        <option value="email" {{ request('sort') === 'email' ? 'selected' : '' }}>Email</option>
                                        <option value="phone" {{ request('sort') === 'phone' ? 'selected' : '' }}>Phone number</option>
                                    </select>
                                    
                                </div>
                                <div class="col">
                                    <button type="submit" class="btn btn-primary">Sort</button>
                                </div>
                            </div>
                        </form>
                        <div class="table-wrapper">
                        <table class="client-table">
                            <thead>
                                <tr>
                                    <th>ID Number</th>
                                    <th>Date of Birth</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($clients as $client)
                                    <tr>
                                        <td>{{ $client->id_number }}</td>
                                        <td>{{ $client->dob }}</td>
                                        <td>{{ $client->first_name }}</td>
                                        <td>{{ $client->last_name }}</td>
                                        <td>{{ $client->email }}</td>
                                        <td>{{ $client->phone }}</td>
                                        <td>{{ $client->status }}</td>
                                        <td>
                                            <a href="{{ route('clients.edit', ['client' => $client]) }}" class="btn btn-sm btn-primary">Update</a>
                                            <form action="{{ route('clients.destroy', ['client' => $client]) }}" method="post" style="display: inline-block;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete {{ $client->first_name }} {{ $client->last_name }}?')">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
