<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Hekmatinasser\Verta\Verta;
use Illuminate\Support\Carbon;

class WorkhistoryResource extends Resource
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
            'Organization' => $this->organization_name,
            'From' => (string)Carbon::parse($this->from)->format('d M Y'),
            'To' => (string)Carbon::parse($this->to)->format('d M Y'),
            'Role' => $this->role,
            'Description' => $this->description

        ];
    }
}
