<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use App\Http\Resources\BulletpointResource;

class ResumeResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    private function merge_bulletPoints($bullets)
    {
        $merge = [];
        foreach ($bullets as $bullet) {
            $merge[] .= $bullet->description;
        }
        return $merge;
    }

    public function toArray($request)
    {
        return [
            'organization' => $this->organization,
            'location' => $this->location,
            'from' => $this->from,
            'to' => $this->to,
            'role' => $this->role,
            'website' => $this->website,
            'bullet_points' => $this->merge_bulletPoints(BulletpointResource::collection($this->bulletpoints))

        ];
    }
}
