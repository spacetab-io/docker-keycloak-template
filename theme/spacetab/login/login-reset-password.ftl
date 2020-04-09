<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <div class="st-app__input">
                <input class="st-app__input-control"
                       name="username"
                       autofocus
                       placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                       value="<#if auth?has_content && auth.showUsername()>${auth.attemptedUsername}<#else></#if>"
                       type="text" />
                <svg class="st-app__icon">
                    <use xlink:href="#password" />
                </svg>
            </div>
            <div class="st-app__row">
                <a class="st-app__link" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a>
            </div>
            <button class="st-app__button" type="submit">
                ${msg("doSubmit")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
