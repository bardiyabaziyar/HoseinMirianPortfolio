<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Hekmatinasser\Verta\Verta;
use Illuminate\Support\Carbon;

class QualificationResource extends Resource
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
            'Organization_name' => $this->organization_name,
            'Certificate' => $this->certificate_name,
            'GPA' => $this->certificate_GPA,
            'Achievement_Date' => (string)Carbon::parse($this->achievement_date)->format('d M Y')
        ];
    }
}
