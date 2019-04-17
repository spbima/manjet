<#macro login message>
<div style="height: 30px"></div>
<div class="row">
    <div class="mx-auto col-sm-6">
        <div class="card">
            <article class="card-body">
                <h4 class="card-title text-center mb-4 mt-1">Sign in</h4>

                <#if message?has_content>
                <hr>
                <p class="text-danger text-center">${message}</p>
                </#if>

                <form action="/login" method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                            </div>
                            <input name="username" class="form-control" placeholder="Enter user name" type="text">
                        </div> <!-- input-group.// -->
                    </div> <!-- form-group// -->
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                            </div>
                            <input name="password" class="form-control" placeholder="Enter password" type="password">
                        </div> <!-- input-group.// -->
                    </div> <!-- form-group// -->
                    <div class="form-group">
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <button type="submit" class="btn btn-primary btn-block"> Login </button>
                    </div> <!-- form-group// -->
                    <p class="text-center"><a href="#">Forgot password?</a></p>
                    <p class="text-center"><a href="/registration">Registration</a></p>
                </form>
            </article>
        </div>
    </div>
</div>
</#macro>