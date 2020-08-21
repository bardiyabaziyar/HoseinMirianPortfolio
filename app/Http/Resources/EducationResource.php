<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Hekmatinasser\Verta\Verta;
use Illuminate\Support\Carbon;

class EducationResource extends Resource
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
            'certificate_name' => $this->certificate_name,
            'from' => $this->from,
            'to' => $this->to,
            'organization' => $this->organization_name,
            'description' => $this->description
        ];
    }
}
