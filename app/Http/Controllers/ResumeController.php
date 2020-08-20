<?php

namespace App\Http\Controllers;

use App\Http\Resources\ResumeResource;
use App\Http\Resources\WorkhistoryResource;
use App\resume;
use App\workhistory;
use Illuminate\Http\Request;

class ResumeController extends Controller
{
    public function index()
    {
        $resume = resume::with('bulletpoints')->get();
        return ResumeResource::collection($resume);
    }

    public function single(resume $resume)
    {
        return new ResumeResource($resume);
    }

}
