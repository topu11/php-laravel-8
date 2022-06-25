<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class ClientController extends Controller
{
    public function getallpost()
    {
        $response=Http::get('https://jsonplaceholder.typicode.com/posts');

        return $response;

    }
    public function postbyid($id)
    {
        $response=Http::get('https://jsonplaceholder.typicode.com/posts/'.$id);

        return $response;
    }
    public function team()
    {
        $data = array(
            "api_key" =>md5('good_student_good_boy_very_nice'),
        );

        $postdata = json_encode($data,true);

        //var_dump($postdata);

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://localhost/encoderit-wp/wp-json/encoderitmain/v1/ourteam/',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>$postdata,
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);


        $response=json_decode($response);
        var_dump($response->cto);
    }
}
