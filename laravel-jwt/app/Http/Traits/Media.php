<?php
namespace  App\Http\Traits;

use Illuminate\Http\UploadedFile;

trait Media {
    public static function upload(UploadedFile $image,string $dir) :string
    {
        $newImageName = $image->hashName(); //generate hash name for image
        $image->move(public_path($dir),$newImageName);
        return $newImageName;
    }

    public static function delete(string $path) :bool
    {
        if(file_exists($path)){
            unlink($path);
            return true;
        }
        return false;
    }
}
