<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carta extends Model
{
    use HasFactory;
    protected $table = "carta";
    protected $primaryKey = "id";

    public static function getCartas(){
        $cartas = Carta::select(
            "carta.id",
            "carta.id_carta",
            "carta.nombre_carta",
            "carta.numero",
            "carta.valor_estimado",
            "set.nombre_set",
            "carta.url_img_small",
            "rareza.nombre_rareza")
            ->leftjoin("set", "carta.id_edicion", "=", "set.id")
            ->leftjoin("rareza", "carta.id_rareza", "=", "rareza.id")
            ->get();

        return $cartas;
    }

    public static function updateImgs($id, $rutaImgSmall, $rutaImgLarge){
        Carta::where("id", "=", $id)->update([
            'url_img_small' => $rutaImgSmall,
            'url_img_large' => $rutaImgLarge
        ]);
    }
}
