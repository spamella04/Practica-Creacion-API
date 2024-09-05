<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = ['cedula', 'first_name', 'last_name', 'email', 'phone',  'address', 'position', 'salary', 'start_date', 'end_date', 'status', 'shift'];
}
