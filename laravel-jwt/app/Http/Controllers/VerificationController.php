<?php

namespace App\Http\Controllers;

use App\Http\Traits\GeneralTrait;
use Exception;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;

class VerificationController extends Controller
{
    use GeneralTrait;
    public function resend(Request $request)
    {
        $request->user()->sendEmailVerificationNotification();
        return response()->json(['message' => __('auth.email_sent')]);
    }

    public function verify(EmailVerificationRequest $request)
    {
       
        $request->fulfill();
        return response()->json(['message' =>__('auth.user_verified_successfully')]);
    }
}
