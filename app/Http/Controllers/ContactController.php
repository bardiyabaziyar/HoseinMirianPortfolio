<?php

namespace App\Http\Controllers;

use App\contact;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    public function store(Request $request)
    {

        $validate = validator::make($request->all(), [
            'name' => 'required|max:50',
            'email' => 'required|email',
            'subject' => 'required|max:255',
            'message' => 'required'
        ]);
        if ($validate->fails()) {
            return response([
                'data' => ['errors' => $validate->errors()]
            ]);
        }
        $contact = contact::where('email', $request['email'])->orderBy('next_message_time', 'desc')->first();
        if (!is_null($contact)) {
            if ($contact->next_message_time > Carbon::now()) {
                return response([
                    'data' => ['errors' => 'Try again in one minute later!']
                ]);
            }
        }
        contact::create(array_merge($request->all(), ['next_message_time' => Carbon::now()->addMinute()]));
        return response([
            'data' => ['success' => 'Message Successfully Received !']
        ]);


    }
}
