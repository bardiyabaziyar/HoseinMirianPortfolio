<?php

namespace App\Http\Controllers;

use App\about;
use App\Http\Resources\AboutResource;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $about = about::first();
        return new AboutResource($about);
    }
}
