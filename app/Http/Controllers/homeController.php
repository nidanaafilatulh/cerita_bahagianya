<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;

class homeController extends Controller
{
    public function index()
    {
        return view('home');
        
    }
    public function coba()
    {
        $model = Post::where('slug', 'rizaldi-rina')->firstOrFail();

        return view('printUndangan.simplify',['posts'=>$model]);
        
    }
}
