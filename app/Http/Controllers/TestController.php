<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{

    public function index()
    {
        return "Allah Akbar";
    }
    public function home($id = null)
    {

        if (isset($id)) {
            return "ID is found" . ' ' . $id;
        } else {
            return "ID is not found";
        }
    }

    public function view2()
    {
        $name = "A. B. M. Touhidul islam";
        $users = array(
            'firstname' => 'Touhidul islam',
            'lastname' => 'Topu',
            'email' => 'touhidulislam256@gmail.com',
            'phone' => '01741315099',
        );

        return view('home2', compact(['name', 'users']));
    }

    public function view4(Request $request)
    {
            //return $request->path();
            return $request->url();
    }

}
