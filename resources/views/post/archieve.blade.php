<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Site</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous">
    </script>
</head>

<body>
    <div class="container py-5">
        @if (Session::has('data_deleted'))
            <div class="alert-succsess">{{ Session::get('data_deleted') }}</div>
        @endif
        @if (Session::has('data_updated'))
            <div class="alert-success p-5">
                {{ Session::get('data_updated') }}
            </div>
        @endif
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">SL</th>
                    <th scope="col">Title</th>
                    <th scope="col">Post</th>
                    <th Sccpe="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; ?>
                @foreach ($posts as $post)
                    <tr>
                        <th>{{ $i++ }}</th>
                        <th>{{ $post->title }}</th>
                        <th>{{ $post->post }}</th>
                        <th><a class="btn btn-success" href="/view-single-post-data/{{ $post->id }}">View Post</a>
                        </th>
                        <th><a class="btn btn-success" href="/view-post-form">Add Post</a></th>
                        <th><a class="btn btn-danger" href="delete-single-post/{{ $post->id }}"
                                onclick="return CheckDelete()">Delete Post</a></th>
                        <th><a class="btn btn-success" href="/edit-single-post/{{ $post->id }}">Update Post</a></th>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>
<script>
    function CheckDelete() {
        if (confirm('Are You want to delete the post')) {
            return true;
        } else {
            return false;
        }
    }
</script>

</html>
