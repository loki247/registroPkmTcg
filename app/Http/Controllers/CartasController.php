<?php

namespace App\Http\Controllers;

use App\Models\Carta;
use Illuminate\Http\Request;
use DB;

class CartasController extends Controller
{
    public function indexView(){
        return view("cartas.index");
    }

    public function sincronizarImg(){
        $cartas = Carta::getCartas();

        foreach ($cartas as $carta){
            $url = "https://api.pokemontcg.io/v2/cards/" . $carta->id_carta;

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type:application/json']);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

            $response = json_decode(curl_exec($ch));

            if (curl_errno($ch)) {
                print curl_error($ch);
            }

            curl_close($ch);

            if(!isset($response->error)){
                DB::beginTransaction();
                try{
                    Carta::updateImgs($carta->id, $response->data->images->small, $response->data->images->large);
                    DB::commit();
                }catch (Exception $e){
                    DB::rollback();
                    return response()->json(['error' => $e]);
                }
            }
        }
    }
}
