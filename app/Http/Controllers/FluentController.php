<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;

class FluentController extends Controller
{
    //
    public function index()
    {
        echo '<h1>Fluent String</h1>';
        echo '<br>';
        echo Str::of('Welcome to Touhidul Islma')->after('Welocome To');
        echo '<br>';
        echo Str::of('A\B\C\D\E')->afterLast('\\');
        echo '<br>';
        echo Str::of('Hello')->append('World');
        echo '<br>';
        echo Str::of('Touhidul islam')->lower();
        echo '<br>';
        echo Str::of('Touhidul islam')->upper();
        echo '<br>';
        echo Str::of('1234 456')->replace('TOUHIDUL','ISLAM');
        echo '<br>';
        echo Str::of('Welcome to bangladesh')->title();
        echo '<br>';
        echo Str::of('This is a slug')->slug('/');
        echo '<br>';
        echo Str::of('This is a slug')->slug('-');
        echo '<br>';
        echo Str::of('This is a slug')->substr(2,7);
        echo '<br>';
        echo Str::of('/This is a slug/')->trim('/');
        echo '<br>';
    
    }
}
