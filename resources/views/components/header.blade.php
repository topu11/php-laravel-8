<div>
    <!-- Knowing is not enough; we must apply. Being willing is not enough; we must do. - Leonardo da Vinci -->

    <h1>This is header component</h1>
    @if (isset($name))
        {{ $name }}
    @endif

    <ul>
        @if (isset($fruits))
            @foreach ($fruits as $fruit)
                <li>{{ $fruit }}</li>
            @endforeach
        @endif

    </ul>

    <ul>
        @if (isset($fruits1))
            @foreach ($fruits1 as $fruit)
                <li>{{ $fruit }}</li>
            @endforeach
        @endif

    </ul>
</div>
