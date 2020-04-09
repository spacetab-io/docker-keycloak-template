<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        <#if messageHeader??>
        ${messageHeader}
        <#else>
        ${message.summary}
        </#if>
    <#elseif section = "form">
    <div class="st-app__text">
        ${message.summary}:
    </div>
    <div class="st-app__list">
        <#list requiredActions><#items as reqActionItem>- ${msg("requiredAction.${reqActionItem}")}<#sep><br> </#items></#list>
    </div>
    <div class="st-app__row">
        <#if pageRedirectUri?has_content>
            <a class="st-app__link" href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a>
        <#elseif actionUri?has_content>
            <a class="st-app__link" href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a>
        <#elseif (client.baseUrl)?has_content>
            <a class="st-app__link" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>
