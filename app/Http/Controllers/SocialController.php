<?php

namespace App\Http\Controllers;

use App\Http\Resources\SocialResource;
use App\social;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    public function index()
    {
        $socials = social::all();
        return ['data' => ['socials_list' => SocialResource::collection($socials)]];
    }

    public function single(social $social)
    {
        return new SocialResource($social);
    }
}
