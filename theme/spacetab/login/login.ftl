<#import "template.ftl" as layout>
<@layout.registrationLayout ; section>
<#if section = "header">
    Log In
</#if>
<#if section = "form">
<form class="st-app__login-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
    <div class="st-app__input">
        <input class="st-app__input-control" autofocus placeholder="Login" name="username" type="text" />
        <svg class="st-app__icon">
            <use xlink:href="#login" />
        </svg>
    </div>
    <div class="st-app__input">
        <input class="st-app__input-control" name="password" placeholder="Password" type="password" />
        <svg class="st-app__icon">
            <use xlink:href="#password" />
        </svg>
    </div>
    <div class="st-app__row">
        <#if realm.resetPasswordAllowed>
        <a class="st-app__link" href="${url.loginResetCredentialsUrl}">
            Forgot password?
        </a>
        </#if>
    </div>
    <div class="st-app__actions">
        <button class="st-app__button" type="submit">
            Log In
            <svg class="st-app__icon st-app__icon_button">
                <use xlink:href="#arrow" />
            </svg>
        </button>
        <div class="sk-circle-bounce">
            <#list 1..12 as i>
                <div class="sk-child sk-circle-${i}"></div>
            </#list>
        </div>
    </div>
</form>
</#if>
</@layout.registrationLayout>
