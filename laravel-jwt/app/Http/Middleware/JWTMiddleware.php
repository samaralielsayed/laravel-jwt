<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use PHPOpenSourceSaver\JWTAuth\Facades\JWTAuth;

class JWTMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {  $messa='';
        try{
            JWTAuth::parseToken();
                return $next($request);
        }catch (\PHPOpenSourceSaver\JWTAuth\Exceptions\TokenExpiredException $e){
            $messa='Exception ';
        }
        catch (\PHPOpenSourceSaver\JWTAuth\Exceptions\TokenInvalidException $e){
            $messa='Invalid token';
        }
        catch (\PHPOpenSourceSaver\JWTAuth\Exceptions\JWTException $e){
            $messa='provide token';
        }
        return response()->json([
            'succes'=>false,
            'message'=>$messa
        ]);

    }
}
