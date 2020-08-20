<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class ServicesResource extends Resource
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
            'icon' => $this->icon,
            'title' => $this->title,
            'description' => $this->description
        ];
    }
}
