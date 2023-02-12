<nav class="navbar navbar-expand-lg navbar-light nav-bg">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/profile">Profile <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ads">View ADs</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout">Logout</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" method="get" action="/search">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search ADs" aria-label="Search">
            <button class="btn nav-btn my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
