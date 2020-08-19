<?php

namespace App\Http\Controllers;

use App\Http\Resources\QualificationResource;
use App\qualification;
use Illuminate\Http\Request;

class QualificationController extends Controller
{
    public function index()
    {
        $qualifications = qualification::all();
        return QualificationResource::collection($qualifications);
    }

    public function single(qualification $qualification)
    {
        return new QualificationResource($qualification);
    }
}
