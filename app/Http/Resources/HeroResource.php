<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class HeroResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param $hero
     * @return array
     * @internal param \Illuminate\Http\Request $request
     */
    private function FieldToArray($hero)
    {
        $Array = explode('|', $hero->text_flasher);
        return $Array;
    }

    public function toArray($request)
    {
        return
            ['text_flasher' => $this->FieldToArray($this)];
    }
}
