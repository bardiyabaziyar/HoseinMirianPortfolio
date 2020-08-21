<?php

namespace App\Http\Controllers;

use App\Http\Resources\ServicesResource;
use App\services;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function index()
    {
        $services = services::all();
        return ['data' => ['services_list' => ServicesResource::collection($services)]];
    }

    public function single(services $services)
    {
        return new ServicesResource($services);
    }
}
