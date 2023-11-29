@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2 >Update Client Details</h2>

                <div class="card">
                    <div class="card-body">
                        @if(session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif

                        <form method="POST" action="{{ route('clients.update', ['client' => $client]) }}">
                            @csrf
                            @method('PUT')

                            <div class="form-group">
                                <label for="id_number">ID Number</label>
                                <input type="number" name="id_number" class="form-control" value="{{ $client->id_number }}" required>
                            </div>
                            <div class="form-group">
                                <label for="dob">Date of birth</label>
                                <input type="date" name="dob" class="form-control" value="{{ $client->dob}}" required>
                            </div>

                            <div class="form-group">
                                <label for="first_name">First Name</label>
                                <input type="text" name="first_name" class="form-control" value="{{ $client->first_name }}" required>
                            </div>

                            <div class="form-group">
                                <label for="last_name">Last Name</label>
                                <input type="text" name="last_name" class="form-control" value="{{ $client->last_name }}" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" value="{{ $client->email }}" required>
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" name="phone" class="form-control" value="{{ $client->phone }}" required>
                            </div>

                            <div class="form-group">
                                <label for="status">Status</label>
                                <select name="status" class="form-control" required>
                                    <option value="open" {{ $client->status === 'open' ? 'selected' : '' }}>Open</option>
                                    <option value="in_process" {{ $client->status === 'in_process' ? 'selected' : '' }}>In Process</option>
                                    <option value="completed" {{ $client->status === 'completed' ? 'selected' : '' }}>Completed</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
