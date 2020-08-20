<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class DescriptionResource extends Resource
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
            'skills_description' => $this->skills_description,
            'hero_description' => $this->hero_description,
            'services_description' => $this->services_description
        ];
    }
}
