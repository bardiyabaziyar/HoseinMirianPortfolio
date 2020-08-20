<?php

namespace App\Http\Controllers;

use App\Http\Resources\SkilResource as SkillResource;
use App\skills;
use Illuminate\Http\Request;


class SkillController extends Controller
{
    public function index()
    {
        $skills = skills::all();
        return ['data' => ['skills_list' => SkillResource::collection($skills)]];
    }

    public function single(skills $skills)
    {
        return new SkillResource($skills);
    }
}
