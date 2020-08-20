<?php

namespace App\Http\Controllers;

use App\education;
use App\Http\Resources\EducationResource;
use App\Http\Resources\QualificationResource;
use Illuminate\Http\Request;

class EducationController extends Controller
{
    public function index()
    {
        $educations = education::all();
        return EducationResource::collection($educations);
    }

    public function single(education $education)
    {
        return new EducationResource($education);
    }
}
