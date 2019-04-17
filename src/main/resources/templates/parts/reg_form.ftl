<#macro registration>
<div style="height: 30px"></div>
<div class="row">
    <div class="mx-auto col-sm-6">
        <div class="card">
            <article class="card-body">
                <h4 class="card-title text-center mb-4 mt-1">Registration</h4>
                <#if message?has_content>
                <hr>
                <p class="text-danger text-center">${message}</p>
                </#if>
                <form action="/registration" method="post">
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
                        <button type="submit" class="btn btn-primary btn-block"> Register  </button>
                    </div> <!-- form-group// -->
                </form>
            </article>
        </div>
    </div>
</div>
</#macro>

<#macro registration_complite>
<div style="height: 30px"></div>
<div class="row">
    <div class="mx-auto col-sm-6">
        <div class="card">
            <article class="card-body">
                <h4 class="card-title text-center mb-4 mt-1">Registration</h4>

                <hr>
                <p class="text-success text-center">Registration completed!</p>

                <p class="text-center">Now you can <a href="/login">Sign In</a></p>

            </article>
        </div>
    </div>
</div>
</#macro>