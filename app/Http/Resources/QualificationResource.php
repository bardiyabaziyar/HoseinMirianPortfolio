<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Hekmatinasser\Verta\Verta;

class QualificationResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'Organization_name'=>$this->organization_name,
            'Certificate'=>$this->certificate_name,
            'GPA'=>$this->certificate_GPA,
            'Achievement_year'=>(string) verta::instance($this->achievement_date)->formatDate()
        ];
    }
}
