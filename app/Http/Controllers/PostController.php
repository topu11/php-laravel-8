<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function index()
    {
        return view('post.form');
    }
    public function store(Request $request)
    {
        $validated = $request->validate(
            array(
                'title' => 'required|max:15',
                'post' => 'required|max:100',
            )
        );

        $inserted = DB::table('posts')->insert([
            'title' => $validated['title'],
            'post' => $validated['post'],
        ]);
        if ($inserted) {
            return back()->with('data_inserted', 'Data Inserted Successfully');
        }

    }
    public function archive_post_data()
    {
        $posts = DB::table('posts')->get();
        return view('post.archieve', compact('posts'));
    }
    public function single_post_data($id)
    {
        $post = DB::table('posts')->where('id', $id)->first();

        return view('post.single', compact('post'));

    }
    public function delete($id)
    {
        DB::table('posts')->where('id', $id)->delete();

        return back()->with('data_deleted', 'Data deleted Successfully');
    }

    public function edit($id)
    {
        $post = DB::table('posts')->where('id', $id)->first();

        return view('post.edit', compact('post'));
    }

    public function update(Request $request)
    {
        DB::table('posts')
            ->where('id', $request->id)
            ->update([
                'title' => $request->title,
                'post' => $request->post,
            ]);

        return redirect('/archive-post-data')->with('data_updated', 'Data Updated Successfully');
    }

}
