<?php

namespace App\Http\Controllers;

use App\Http\Resources\PortfolioResource as PortfolioResource;
use App\portfolio;
use App\portfolio_type;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    public function index()
    {
        $portfolios=portfolio::with('skills','portfolio_type')->get();
//        return $portfolios;
        return PortfolioResource::collection($portfolios);
    }

    public function single(portfolio $portfolio)
    {
        return new PortfolioResource($portfolio);
    }
}
