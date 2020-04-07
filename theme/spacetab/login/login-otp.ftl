<#import "template.ftl" as layout>
<@layout.registrationLayout title=msg("doLogIn") ; section>
<#if section = "form">
    <form onsubmit="login.disabled = true; return true;"
          action="${url.loginAction}"
          method="post">
        <#if otpLogin.userOtpCredentials?size gt 1>
            <#list otpLogin.userOtpCredentials as otpCredential>
                <input type="hidden" value="${otpCredential.id}">
            </#list>
        </#if>
        <div class="st-app__input">
            <input class="st-app__input-control"
                   autofocus
                   autocomplete="off"
                   placeholder="Login"
                   name="otp"
                   type="text" />
            <svg class="st-app__icon">
                <use xlink:href="#login" />
            </svg>
        </div>
        <button class="st-app__button"
                type="submit">
            Log In
            <svg class="st-app__icon st-app__icon_button">
                <use xlink:href="#arrow" />
            </svg>
        </button>
    </form>
</#if>
</@layout.registrationLayout>
