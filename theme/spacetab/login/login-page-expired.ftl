<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">
        <div class="st-app__text">
            ${msg("pageExpiredMsg1")} <a class="st-app__link" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .<br/>
            ${msg("pageExpiredMsg2")} <a class="st-app__link" href="${url.loginAction}">${msg("doClickHere")}</a> .
        </div>
    </#if>
</@layout.registrationLayout>
