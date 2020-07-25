<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class about extends Model
{

    public function skill()
    {
        return $this->hasMany(skills::class);
    }

    public function social()
    {
        return $this->hasMany(social::class);
    }

    public function qualification()
    {
        return $this->hasMany(qualification::class);
    }
}
