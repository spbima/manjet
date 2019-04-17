<#import "parts/common.ftl" as common>
<#import "parts/navbar.ftl" as nb>

<@common.page "Users">
    <@nb.navbar />

    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>

        <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}">edit</a></td>
        </tr>
        </#list>

        </tbody>
    </table>
</@common.page>