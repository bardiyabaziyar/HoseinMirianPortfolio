<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Hekmatinasser\Verta\Verta;

class WorkhistoryResource extends Resource
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
            'Organization'=>$this->organization_name,
            'From'=>(string)verta::instance($this->from)->formatDate(),
            'To'=> (string)verta::instance($this->to)->formatDate(),
            'Role'=>$this->role,
            'Description'=>$this->description

        ];
    }
}
