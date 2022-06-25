<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Header extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $name;
    public $fruits;
    public $fruits1;
    public function __construct($name=null,$fruitss=null,$fruitss1=null)
    {
        $this->name=$name;
        $this->fruits=$fruitss;
        $this->fruits1=$fruitss1;
    }

    

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.header');
    }
}
