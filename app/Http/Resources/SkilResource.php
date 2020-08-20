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
            'title' => $this->skill_title,
            'level' => $this->skill_level,
            'img' => $this->skill_image
        ];
    }
}
