<?php

namespace App\Http\Controllers;

use App\description;
use App\Http\Resources\DescriptionResource;
use Illuminate\Http\Request;

class DescriptionController extends Controller
{
    public function index()
    {
        $description = description::first();
        return new DescriptionResource($description);
    }
}
