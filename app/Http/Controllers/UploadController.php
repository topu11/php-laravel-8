<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UploadController extends Controller
{
    public function index()
    {
        //dd(10);
        return view('Upload-management.file-upload-form');
    }
}
