<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use App\portfolio;

class PortfolioResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    private function fetch_skills($obj){
        $list=[];
        foreach ($obj->skills as $skill){
            $list[].=$skill->skill_name;
        }
        return $list;
    }
    public function toArray($request)
    {

        return [
          'Description'=>$this->description,
          'Organization'=>$this->organization_name,
          'Link Address'=>$this->project_link,
          'project type'=>$this->portfolio_type->type,
            'portfolioImage'=>$this->project_image,
          'skills'=>$this->fetch_skills($this)

        ];
    }

}
