<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("emailLinkIdpTitle", idpAlias)}
    <#elseif section = "form">
        <div class="st-app__text">
            ${msg("emailLinkIdp1", idpAlias, brokerContext.username, realm.displayName)}
        </div>
        <div class="st-app__text">
            ${msg("emailLinkIdp2")} <a class="st-app__link" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp3")}
        </div>
        <div class="st-app__text">
            ${msg("emailLinkIdp4")} <a class="st-app__link" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp5")}
        </div>
    </#if>
</@layout.registrationLayout>
