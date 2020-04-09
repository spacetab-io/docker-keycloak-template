<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>


            <div class="st-app__input">
                <input class="st-app__input-control" name="password-new" placeholder="${msg("passwordNew")}" type="password" autofocus autocomplete="new-password"  />
                <svg class="st-app__icon">
                    <use xlink:href="#password" />
                </svg>
            </div>

            <div class="st-app__input">
                <input class="st-app__input-control" name="password-confirm" placeholder="${msg("passwordConfirm")}" type="password" autocomplete="new-password"  />
                <svg class="st-app__icon">
                    <use xlink:href="#password" />
                </svg>
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
