<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contact extends Model
{
    protected $fillable = ['name', 'email', 'subject', 'message', 'next_message_time'];
    public $timestamps = false;

    public function setMessageAttribute($value)
    {
        $this->attributes['message'] = preg_replace('/<[^>]*>/', '', $value);
    }

}
