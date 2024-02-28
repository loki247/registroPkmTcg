<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subtipo extends Model
{
    use HasFactory;
    protected $table = "cartas.subtipo";
    protected $primaryKey = "id";

    public static function getSubtipos(){
        $subtipos = Subtipo::select("id as id_subtipo", "nombre_subtipo")->get();

        return $subtipos;
    }
}
