<?php

namespace App\Http\Controllers\api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequestLogin;
use App\Http\Requests\UserRequestRegister;
use App\Http\Traits\GeneralTrait;
use App\Models\Alphabet;

use App\Models\Offer;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use PHPOpenSourceSaver\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    //vaildation
        //login
        //return token
  use GeneralTrait;
    public function register(UserRequestRegister $request){

         $validated = $request->validated();
          $validated['password']= Hash::make($request->password);
         //$validated['password'] =password_hash($request->password,PASSWORD_BCRYPT);
         $user= User ::create($validated );
        $token = Auth::login($user);
        if (! $token) {

            return $this->returnError('E001','بيانات الدخول غير صحيحه');
        }
        $user->api_token=$token;
        return $this->returnData('user' ,  $user,'User created successfully');
    }

    public function login(UserRequestLogin $request)
    {
        try{
        $credentials = $request->only('email', 'password');
        $token = Auth::guard('api')->attempt($credentials);
        if (!$token) {
            return $this->returnError('401','Unauthorized');
        }
        $user = Auth::user();
        $user->api_token=$token;
        return $this->returnData('user' ,  $user);
    }catch(Exception $ex){
        return $this->returnError($ex->getCode(),$ex->getMessage());

    }
    }
    public function logout(Request $request)
    {

        // $user=  Auth::logout();
        // return $this->returnSuccessMessage(msg:'Successfully logged out');
            try {
                JWTAuth::invalidate(JWTAuth::parseToken($request->token));
                return $this->returnSuccessMessage(msg:'Logged out successfully');
                //$user=  Auth::logout(); //logout
            }catch (Exception $ex){
                return  $this->returnError($ex->getCode(),$ex->getMessage());
            }



    }
    public function refresh()
    {
        $user = Auth::user();
        try {
        $user->api_token=Auth::refresh();
        return $this->returnData('user' ,  $user,'User refresh token successfully');
    }catch (Exception $ex){
        return  $this->returnError($ex->getCode(),$ex->getMessage());
            }
    }

}
