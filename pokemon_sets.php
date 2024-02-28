 <?php
$servername = "localhost";
$username = "root";
$password = "123asd";
$dbName = "pokemon_tcg";

$conn = mysqli_connect($servername, $username, $password, $dbName);

if (!$conn){
  die("Connection failed: " . mysqli_connect_error());
}

$url = "https://api.pokemontcg.io/v2/sets";

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

//echo (count($response->data));

for ($i = 0; $i < count($response->data); $i++) {
    $sql = "INSERT INTO `set` (id_set, nombre_set, total_cartas) VALUES (" . json_encode($response->data[$i]->id) . ", " . utf8_decode(json_encode($response->data[$i]->name, JSON_UNESCAPED_UNICODE)) . ", " . utf8_decode(json_encode($response->data[$i]->total, JSON_UNESCAPED_UNICODE)) . ")";

    if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

