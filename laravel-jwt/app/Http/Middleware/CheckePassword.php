<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckePassword
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if($request->api_password != env('API_PASSWORD','hPOOH8oG79')){
            return response()->json(['message'=>'Unathenticated.']);
        }
        return $next($request);
    }
}
