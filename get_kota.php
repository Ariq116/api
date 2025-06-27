<?php

$curl = curl_init();

$province = $_GET['province_id'];

curl_setopt_array($curl,array(
    CURLOPT_URL => "https://api.rajaongkir.com/starter/city?province=$province",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
        "key: 1c9376a61aa0399ce3ecbb4e2a7aaacf"
    ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err)  {
echo "cURL Error #:" . $err;
} else {
    echo $response;
}

?>