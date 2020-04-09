<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("errorTitle")}
    <#elseif section = "form">
        <div class="st-app__message st-app__message_error">
            <svg class="st-app__icon st-app__icon_message st-app__icon_error">
                <use xlink:href="#error" />
            </svg>
            ${message.summary?no_esc}
        </div>
        <#if client?? && client.baseUrl?has_content>
            <a class="st-app__link" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a>
        </#if>
    </#if>
</@layout.registrationLayout>
