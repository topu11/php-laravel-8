<?php

namespace Database\Seeders;

use App\Models\Post;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostTableSidder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create();
        foreach (range(1, 30) as $index) {
             Post::create(
                [
                    'title'=>$faker->sentence(2),
                    'post'=>$faker->paragraph(5)
                ]
                
             );

            // DB::table('posts')->insert(
                
            // );
            
        }

    }
}
