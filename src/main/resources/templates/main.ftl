<#import "parts/common.ftl" as common>

<@common.page "Messages">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">#</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Messages</a>
                </li>
                <!--
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
                -->
            </ul>

            <form action="/logout" method="post" class="form-inline mt-2 mt-md-0">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="btn btn-info btn-sm my-2 my-sm-0" type="submit">Sign Out</button>
            </form>
        </div>
    </nav>

    <div style="height:10px"></div>

    <!--
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Messages</li>
        </ol>
    </nav>
    -->

    <form method="post" class="form-inline">

        <div class="form-group mx-sm-2 mb-2">
            <input type="text" name="text" class="form-control" placeholder="Input message" />
        </div>
        <div class="form-group mx-sm-2 mb-2">
            <input type="text" name="tag" class="form-control" placeholder="Input tag" />
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-secondary mb-2">Add</button>
    </form>

    <form method="get" action="/main" class="form-inline">
        <div class="form-group col-8 mx-sm-3 mb-2">
            <h2>List of messages:</h2>
        </div>
        <div class="form-group mx-sm-3 mb-2">
            <input type="text" name="filter" class="form-control" value="${filter}"/>
        </div>
        <button type="submit" class="btn btn-secondary mb-2">Filter</button>
    </form>


    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Message</th>
            <th scope="col">Tag</th>
            <th scope="col">Author</th>
        </tr>
        </thead>
        <tbody>

        <#list messages as message>
            <tr>
                <th scope="row">${message.id}</th>
                <td>${message.text}</td>
                <td>${message.tag}</td>
                <td>${message.authorName}</td>
            </tr>
        </#list>

        </tbody>
    </table>
</@common.page>

