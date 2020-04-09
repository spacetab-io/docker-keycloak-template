<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
        <#if realm.password>
            <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="st-app__input">
                    <input class="st-app__input-control" autofocus placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>" name="username" type="text" <#if usernameEditDisabled??>disabled<#else>autofocus autocomplete="off"</#if> />
                    <svg class="st-app__icon">
                        <use xlink:href="#login" />
                    </svg>
                </div>
                <#if realm.rememberMe && !usernameEditDisabled??>
                    <div class="st-app__row">
                        <label class="st-app__checkbox">
                            <input class="st-app__checkbox-control" name="rememberMe" type="checkbox" <#if login.rememberMe??>checked</#if> />
                            <div class="st-app__checkbox-dummy"></div>
                            Remember me
                        </label>
                    </div>
                </#if>
                <button class="st-app__button" type="submit" value="${msg("doLogIn")}" name="login">
                    Log In
                    <svg class="st-app__icon st-app__icon_button">
                        <use xlink:href="#arrow" />
                    </svg>
                </button>
            </form>
        </#if>
        <#if realm.password && social.providers??>
            <div class="st-app__row">
                <#list social.providers as p>
                    <a href="${p.loginUrl}" class="zocial ${p.providerId} st-app__link">${p.displayName}</a>
                </#list>
            </div>
        </#if>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div class="st-app__row">
                <a class="st-app__link" href="${url.registrationUrl}">${msg("doRegister")}</a>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
