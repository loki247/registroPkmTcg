<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tipo extends Model
{
    use HasFactory;
    protected $table = "tipo";
    protected $primaryKey = "id";

    public static function getTipos(){
        $tipos = Tipo::select("id as id_tipo", "nombre_tipo")->get();

        return $tipos;
    }
}
