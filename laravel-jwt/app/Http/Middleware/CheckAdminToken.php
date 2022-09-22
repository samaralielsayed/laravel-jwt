<?php

namespace App\Http\Middleware;

use App\Http\Traits\GeneralTrait;
use Closure;
use Exception;
use Illuminate\Http\Request;
use PHPOpenSourceSaver\JWTAuth\Facades\JWTAuth;
use Throwable;

// use PHPOpenSourceSaver\JWTAuth\Exceptions\TokenExpiredException;
// use Tymon\JWTAuth\Middleware\GetUserFromToken;
class CheckAdminToken
{
    use GeneralTrait;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        $user = null;
        try {
            $user = JWTAuth::parseToken()->authenticate();
                //throw an exception

        }
        catch (Exception $e) {
            if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenInvalidException){
                return $this->returnError('3001','INVALID _TOKEN');
            }else if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenExpiredException){
                return $this->returnError('3001','EXPIRED_TOKEN');
            } else{
                return $this->returnError('3001','Error');

            }
        }
        catch (Throwable $e) {
            if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenInvalidException){
                return $this->returnError('3001','INVALID _TOKEN');
            }else if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenExpiredException){
                return $this->returnError('3001','EXPIRED_TOKEN');
            } else{
                return $this->returnError('3001','Error');

            }
        }
        if(! $user){
           // return response()->json(['success'=>false,'msg'=>trans(key:'Unauthenticted')],status:200);
           return $this->returnError('3001',trans(key:'Unauthenticted'));
        }
        return $this->returnSuccessMessage(msg:'success');
        return $next($request);
    }
}
