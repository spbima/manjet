<#import "parts/common.ftl" as common>
<#import "parts/navbar.ftl" as nb>

<@common.page "Edit user">
    <@nb.navbar />


<div class="card col-8">
    <div class="card-body">

    <h4 class="card-title text-center mb-4 mt-1">Edit user</h4>
    <#if message?has_content>
    <hr>
    <p class="text-danger text-center">${message}</p>
    </#if>
    <form action="/user" method="post">
        <div class="form-group">
            <div class="form-group">
                <label for="email">Name:</label>
                <input name="username" class="form-control" type="text" value="${user.username}">
            </div>
        </div> <!-- form-group// -->
        <div class="form-group">
            <div class="form-group">
                <label for="email">Email:</label>
                <input name="email" class="form-control" type="text" value="">
            </div>
        </div> <!-- form-group// -->

        <div class="form-group">
            <div class="form-group">
                <label for="email">Roles:</label>
                <#list roles as role>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>${role}
                        </label>
                    </div>
                </#list>
            </div>
        </div> <!-- form-group// -->

        <div class="form-group">
            <input type="hidden" name="userId" value="${user.id}" />
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary "> Save  </button>
        </div> <!-- form-group// -->
    </form>
    </div>
</div>

</@common.page>