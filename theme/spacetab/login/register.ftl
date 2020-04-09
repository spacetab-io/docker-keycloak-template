<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
        <form action="${url.registrationAction}" method="post">
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("firstName")}" name="firstName" type="text" />
            </div>
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("lastName")}" name="lastName" type="text" />
            </div>
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("email")}" name="email" type="text" />
            </div>
            <#if user.registrationEmailAsUsername>
                <div class="st-app__input">
                    <input class="st-app__input-control" autofocus placeholder="${msg("username")}" name="username" type="text" />
                    <svg class="st-app__icon">
                        <use xlink:href="#login" />
                    </svg>
                </div>
            </#if>
            <#if passwordRequired??>
                <div class="st-app__input">
                    <input class="st-app__input-control" name="password" placeholder="${msg("password")}" type="password" autocomplete="new-password"/>
                    <svg class="st-app__icon">
                        <use xlink:href="#password" />
                    </svg>
                </div>
                <div class="st-app__input">
                    <input class="st-app__input-control" name="password-confirm" placeholder="${msg("passwordConfirm")}" type="password" autocomplete="new-password"/>
                    <svg class="st-app__icon">
                        <use xlink:href="#password" />
                    </svg>
                </div>
            </#if>
            <#if recaptchaRequired??>
            <div class="st-app__row">
                <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
            </div>
            </#if>
            <div class="st-app__row">
                <a class="st-app__link" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a>
            </div>
            <button class="st-app__button" type="submit">
                ${msg("doRegister")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    </#if>
</@layout.registrationLayout>
