<#import "template.ftl" as layout>
<@layout.registrationLayout ; section>
<#if section = "header">
    Log In
</#if>
<#if section = "form">
<form onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
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
        <label class="st-app__checkbox">
            <input class="st-app__checkbox-control" name="rememberMe" type="checkbox" />
            <div class="st-app__checkbox-dummy"></div>
            Remember me
        </label>
        <#if realm.resetPasswordAllowed>
        <a class="st-app__link" href="${url.loginResetCredentialsUrl}">
            Forgot password?
        </a>
        </#if>
    </div>
    <button class="st-app__button" type="submit">
        Log In
        <svg class="st-app__icon st-app__icon_button">
            <use xlink:href="#arrow" />
        </svg>
    </button>
</form>
</#if>
</@layout.registrationLayout>
