<#import "template.ftl" as layout>
<@layout.registrationLayout bodyClass="oauth"; section>
    <#if section = "header">
        <#if client.name?has_content>
            ${msg("oauthGrantTitle",advancedMsg(client.name))}
        <#else>
            ${msg("oauthGrantTitle",client.clientId)}
        </#if>
    <#elseif section = "form">
        <div class="st-app__text st-app__text_no-margin">
            ${msg("oauthGrantRequest")}
        </div>
        <div class="st-app__list">
            <#list oauth.clientScopesRequested>
                - <#items as clientScope>${advancedMsg(clientScope.consentScreenText)}<#sep><br> </#items>
            </#list>
        </div>
        <form action="${url.oauthAction}" method="POST">
            <input type="hidden" name="code" value="${oauth.code}">

            <button class="st-app__button" type="submit" value="${msg("doYes")}" name="accept">
                ${msg("doYes")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>

            <button class="st-app__button" type="submit" value="${msg("doNo")}" name="cancel">
                ${msg("doNo")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    </#if>
</@layout.registrationLayout>
