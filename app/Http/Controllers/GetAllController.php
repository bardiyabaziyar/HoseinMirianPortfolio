<?php

namespace App\Http\Controllers;

use App\about;
use App\background;
use App\description;
use App\education;
use App\hero;
use App\Http\Resources\AboutResource;
use App\Http\Resources\BackgroundResource;
use App\Http\Resources\DescriptionResource;
use App\Http\Resources\EducationResource;
use App\Http\Resources\HeroResource;
use App\Http\Resources\PortfolioResource;
use App\Http\Resources\ResumeResource;
use App\Http\Resources\ServicesResource;
use App\Http\Resources\SkilResource;
use App\Http\Resources\SocialResource;
use App\portfolio;
use App\resume;
use App\services;
use App\skills;
use App\social;
use Illuminate\Http\Request;

class GetAllController extends Controller
{
    public function get()
    {
        $about = about::first();
        $backgrounds=background::first();
        $skills = skills::all();
        $description=description::first();
        $hero=hero::first();
        $services=services::all();
        $socials = social::all();
        $educations = education::all();
        $resume = resume::with('bulletpoints')->get();
        $portfolios = portfolio::with('skills', 'portfolio_type')->get();
        return response([
           'data'=>[
               'about'=> new AboutResource($about),
               'backgrounds'=>new BackgroundResource($backgrounds),
               'skills'=>['skills_list'=>SkilResource::collection($skills)],
               'hero'=>new HeroResource($hero),
               'services'=>['services_list'=>ServicesResource::collection($services)],
               'socials'=>['socials_list'=>SocialResource::collection($socials)],
               'education'=>EducationResource::collection($educations),
               'resume'=>ResumeResource::collection($resume),
               'portfolio'=>PortfolioResource::collection($portfolios),
               'description'=>new DescriptionResource($description)

       ] ]);

    }
}
