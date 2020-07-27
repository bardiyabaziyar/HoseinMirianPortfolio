<?php

namespace App\Http\Controllers;

use App\Http\Resources\WorkhistoryResource;
use App\workhistory;
use Illuminate\Http\Request;

class WorkhistoryController extends Controller
{
    public function index()
    {
        $works=workhistory::all();
        return WorkhistoryResource::collection($works);
    }

    public function single(workhistory $workhistory)
    {
        return new WorkhistoryResource($workhistory);
    }

}
