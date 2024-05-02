<?php

namespace App\Models;

use App\Traits\HasFormatRupiah;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Testing\Fluent\Concerns\Has;

class Transaksi extends Model
{
    use HasFactory;
    use HasFormatRupiah;
    protected $table = 'transaksi';
    protected $guarded = ['id'];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function scopeFilter($query)
    {
        if (request('search')) {
            $query->where('id', 'LIKE', '%'.request('search').'%');
        }
    }
}
