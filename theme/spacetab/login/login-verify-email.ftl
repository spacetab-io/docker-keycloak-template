<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
        <div class="st-app__text">
            ${msg("emailVerifyInstruction1")}
        </div>
        <div class="st-app__text">
            ${msg("emailVerifyInstruction2")}
            <a class="st-app__link" href="${url.loginAction}">${msg("doClickHere")}</a>
            ${msg("emailVerifyInstruction3")}
        </div>
    </#if>
</@layout.registrationLayout>
