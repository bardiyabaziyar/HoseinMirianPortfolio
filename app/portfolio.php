<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class portfolio extends Model
{
    public function portfolio_type()
    {
        return $this->belongsTo(portfolio_type::class);
    }
}
