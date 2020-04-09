<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("loginProfileTitle")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <#if user.editUsernameAllowed>
                <div class="st-app__input">
                    <input class="st-app__input-control" autofocus placeholder="${msg("username")}" name="username" type="text" />
                    <svg class="st-app__icon">
                        <use xlink:href="#login" />
                    </svg>
                </div>
            </#if>
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("email")}" name="email" type="text" />
            </div>
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("firstName")}" name="firstName" type="text" />
            </div>
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="${msg("lastName")}" name="lastName" type="text" />
            </div>
            <#if isAppInitiatedAction??>
                <button class="st-app__button" type="submit" value="${msg("doCancel")}">
                    ${msg("doCancel")}
                    <svg class="st-app__icon st-app__icon_button">
                        <use xlink:href="#arrow" />
                    </svg>
                </button>
            </#if>
            <button class="st-app__button" type="submit" value="${msg("doSubmit")}">
                ${msg("doSubmit")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    </#if>
</@layout.registrationLayout>
