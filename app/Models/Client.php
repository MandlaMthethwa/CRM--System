<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'clients';
    protected $primaryKey='uuid';
    public $incremementing = 'false';
    protected $keyType= 'string';
    protected $fillable = ['uuid','id_number','dob','first_name','last_name','email','phone','status'];
    protected $dates = ['deleted_at'];
}
