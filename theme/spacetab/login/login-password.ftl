<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false displayWide=false; section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
        <form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <div class="st-app__input">
                <input class="st-app__input-control"
                       placeholder="${msg("password")}"
                       name="password"
                       type="password" />
                <svg class="st-app__icon">
                    <use xlink:href="#password" />
                </svg>
            </div>
            <div class="st-app__row">
                <a class="st-app__link" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
            </div>
            <button class="st-app__button" type="submit" value="${msg("doLogIn")}" name="login">
                ${msg("doLogIn")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    </#if>
</@layout.registrationLayout>
