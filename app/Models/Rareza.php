<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rareza extends Model
{
    use HasFactory;
    protected $table = "cartas.rareza";
    protected $primaryKey = "id";

    public static function getRarezas(){
        $rarezas = Tipo::select("id as id_rareza", "nombre_rareza")->get();

        return $rarezas;
    }
}
