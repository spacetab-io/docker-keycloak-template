<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section="header">
        Log In
    <#elseif section="form">
        <form action="${url.loginAction}" method="post">
            <div class="st-app__input">
                <input class="st-app__input-control" autofocus placeholder="Code" name="otp" type="text" />
                <svg class="st-app__icon">
                    <use xlink:href="#login" />
                </svg>
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
