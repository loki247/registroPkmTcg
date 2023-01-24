@extends("layouts.app")

@section("css")
    <link href="{{ asset("css/datatables.min.css") }}" rel="stylesheet" type="text/css">
@endsection

@section("content")
<div class="card">
    <div class="card-header">
        <h5>Pokémon Registrados</h5>
    </div>

    <div class="card-body">
        <table class="table table-sm table-bordered" id="tabla-cartas">
            <thead>
            <tr>
                <th class="text-center">Imagen</th>
                <th class="text-center">ID</th>
                <th class="text-center">Nombre</th>
                <th class="text-center">Edición</th>
                <th class="text-center">Rareza</th>
            </tr>
            </thead>

            <tbody>
            @foreach(\App\Models\Carta::getCartas() as $carta)
                <tr>
                    <td class="text-center">
                        <img src="{{ $carta->url_img_small }}" style="height: 100px;" alt="{{ $carta->nombre_carta }}">
                    </td>
                    <td class="text-center">{{ $carta->id_carta }}</td>
                    <td>{{ $carta->nombre_carta }}</td>
                    <td>{{ $carta->nombre_set }}</td>
                    <td>{{ $carta->nombre_rareza }}</td>
                </tr>
            @endforeach

            </tbody>
        </table>
    </div>
</div>
@endsection

@section("js")
    <script type="text/javascript" src="{{ asset("js/datatables.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset("js/cartas/index.js") }}"></script>
@endsection
