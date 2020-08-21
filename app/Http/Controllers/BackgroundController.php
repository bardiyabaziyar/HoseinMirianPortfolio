<?php

namespace App\Http\Controllers;

use App\background;
use App\Http\Resources\BackgroundResource;
use Illuminate\Http\Request;

class BackgroundController extends Controller
{
    public function index()
    {
        $backgrounds = background::first();
        return new BackgroundResource($backgrounds);

    }
}
