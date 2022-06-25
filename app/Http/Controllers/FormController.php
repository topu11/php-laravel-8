<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FormController extends Controller
{

    public function index()
    {
        return view('home.form');
    }

    public function formpost(Request $request)
    {
        $request->validate(

            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:10'

            ]
        );

        
        
    }
}
