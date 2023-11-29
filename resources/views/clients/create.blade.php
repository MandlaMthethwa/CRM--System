@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2 >Add Client</h2>
                <div class="card">
                    

                    <div class="card-body">
                        @if(session('success'))
                            <div class="alert alert-success" role="alert">
                                {{ session('success') }}
                            </div>
                        @endif

                        <form method="POST" action="{{ route('clients.store') }}">
                            @csrf

                            <div class="form-group">
                                <label for="id_number">ID Number</label>
                                <input type="number" name="id_number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="dob">Date of birth</label>
                                <input type="date" name="dob" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="first_name">First Name</label>
                                <input type="text" name="first_name" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="last_name">Last Name</label>
                                <input type="text" name="last_name" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" name="phone" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="status">Status</label>
                                <select name="status" class="form-control" required>
                                    <option>-- Select Status --</option>
                                    <option value="open">Open</option>
                                    <option value="in_process">In Process</option>
                                    <option value="completed">Completed</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary">Create Client</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
