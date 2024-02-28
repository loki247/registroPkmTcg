<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supertipo extends Model
{
    use HasFactory;
    protected $table = "cartas.supertipo";
    protected $primaryKey = "id";

    public static function getSupertipos(){
        $supertipos = Supertipo::select("id as id_supertipo", "nombre_supertipo")->get();

        return $supertipos;
    }
}
