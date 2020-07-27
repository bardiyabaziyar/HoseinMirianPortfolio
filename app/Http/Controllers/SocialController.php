<?php

namespace App\Http\Controllers;

use App\Http\Resources\SocialResource;
use App\social;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    public function index()
    {
        $social=social::all();
        return SocialResource::collection($social);
    }
    public function single(social $social){
        return new SocialResource($social);
    }
}
