<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class AboutResource extends Resource
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
            'name' => $this->name,
            'biography' => $this->biography,
            'cv_link' => $this->cv_link,
            'age' => $this->age,
            'full_summary' => $this->full_summary,
            'address' => $this->address,
            'email' => $this->email,
            'phone' => $this->phone,
            'nationality' => $this->nationality,
            'degree' => $this->degree,
            'remote_availability' => $this->remote_availability,
            'years_experience' => $this->years_experience
        ];
    }
}
