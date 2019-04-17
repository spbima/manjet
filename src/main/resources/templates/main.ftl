<#import "parts/common.ftl" as common>
<#import "parts/navbar.ftl" as nb>

<@common.page "Messages">
    <@nb.navbar />

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
                <td>${message.id}</td>
                <td>${message.text}</td>
                <td>${message.tag}</td>
                <td>${message.authorName}</td>
            </tr>
        </#list>

        </tbody>
    </table>
</@common.page>

