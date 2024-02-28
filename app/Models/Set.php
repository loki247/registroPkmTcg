<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Set extends Model
{
    use HasFactory;
    protected $table = "cartas.set";
    protected $primaryKey = "id";

    public static function getSets(){
        $sets = Set::select("id as id_set", "identificador_set", "nombre_set", "total_cartas")->get();

        return $sets;
    }
}
