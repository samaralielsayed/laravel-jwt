<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Traits\GeneralTrait;
use App\Models\Alphabet;
use App\Models\Number;
use Illuminate\Http\Request;

class AmericanSignLanguageController extends Controller
{
    use GeneralTrait;
    public function alphabetAll(){
        //$alphabets = Alphabet::all();
     $alphabets= Alphabet::select('id','image','name')->get();
     return $this->returnData('alphabets' ,  $alphabets,'All Alphabets');
     }
     public function alphabetShow( $id)
{
    $alphabet=Alphabet::find( $id);
    if (is_null( $alphabet)) {
        return $this->returnError('',' Alphabet not found.');
    }
    $path = asset('images/alphabets/'.$alphabet->image);
    $alphabet->image=$path;
   return $this->returnData('alphabet' ,  $alphabet,'Alphabet showed successfully');

}
public function numbersAll(){
    //$alphabets = Alphabet::all();
 $alphabets= Number::select('id','image','name')->get();
 return $this->returnData('alphabets' ,  $alphabets,'All Numbers');
 }
 public function numbersShow( $id)
{
$alphabet=Number::find( $id);
if (is_null( $alphabet)) {
    return $this->returnError('','Number  not found.');
}
$path = asset('images/numbers/'.$alphabet->image);
$alphabet->image=$path;
return $this->returnData('alphabet' ,  $alphabet,'Number showed successfully');

}
}
