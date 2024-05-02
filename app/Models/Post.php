<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [
        'id',
    ];

    public function scopeFilter($query)
    {
        if (request('search')) {
            $query->where('slug', 'LIKE', '%'.request('search').'%');
        }
    }

    public function transaksi(){
        return $this->belongsTo(Transaksi::class);
    }
}
