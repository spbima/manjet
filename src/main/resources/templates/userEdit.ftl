<#import "parts/common.ftl" as common>
<#import "parts/navbar.ftl" as nb>

<@common.page "Edit user">
    <@nb.navbar />


<div class="card">
    <article class="card-body">
        <h4 class="card-title text-center mb-4 mt-1">Edit user</h4>
        <#if message?has_content>
        <hr>
        <p class="text-danger text-center">${message}</p>
        </#if>
        <form action="/user" method="post">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input name="username" class="form-control" placeholder="Enter user name" type="text"<#if user_name?has_content> value="${user_name}"</#if>>
                </div> <!-- input-group.// -->
            </div> <!-- form-group// -->
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input name="password" class="form-control" placeholder="Enter password" type="password"<#if user_password?has_content> value="${user_password}"</#if>>
                </div> <!-- input-group.// -->
            </div> <!-- form-group// -->
            <div class="form-group">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit" class="btn btn-primary"> Save  </button>
            </div> <!-- form-group// -->
        </form>
    </article>
</div>

</@common.page>