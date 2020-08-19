<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bulletpoint extends Model
{
    public function resumes()
    {
        return $this->belongsToMany(resume::class);
    }
}
