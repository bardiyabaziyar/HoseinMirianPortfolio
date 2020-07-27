<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class SkilResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'Skill title' => $this->skill_name,
            'description' => $this->description,
            'Level' => $this->skill_level,
            'SkillType' => $this->skill_types->type,
            'SkillImage' => $this->skill_image
        ];
    }
}
