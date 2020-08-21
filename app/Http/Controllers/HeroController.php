<?php

namespace App\Http\Controllers;

use App\hero;
use App\Http\Resources\HeroResource;
use Illuminate\Http\Request;

class HeroController extends Controller
{
    public function index()
    {
        $hero = hero::first();
        return new HeroResource($hero);
    }
}
