<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class skills extends Model
{
    public function skill_types()
    {
        return $this->belongsTo(portfolio_type::class, 'portfolio_types_id');
    }

    public function portfolios()
    {
        return $this->belongsToMany(portfolio::class);
    }
}
