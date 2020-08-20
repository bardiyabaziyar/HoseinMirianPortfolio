<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use App\portfolio;

class PortfolioResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    private function merge_skills($skills)
    {
        $merge = [];
        foreach ($skills as $skill) {
            $merge[] .= $skill->skill_title;
        }
        return $merge;
    }

    public function toArray($request)
    {

        return [
            'title' => $this->title,
            'type' => $this->portfolio_type->type,
            'img' => $this->project_image,
            'organization' => $this->organization,
            'location' => $this->location,
            'role' => $this->role,
            'website' => $this->website,
            'source_code' => $this->source_code,
            'techs' => $this->merge_skills(SkillResource::collection($this->skills))

        ];
    }

}
