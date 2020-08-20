<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class resume extends Model
{
    public function bulletpoints()
    {
        return $this->belongsToMany(bulletpoint::class);
    }
}
