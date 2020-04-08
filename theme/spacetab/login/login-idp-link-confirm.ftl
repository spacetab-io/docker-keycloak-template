<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("confirmLinkIdpTitle")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <button class="st-app__button" type="submit" name="submitAction" value="updateProfile">
                ${msg("confirmLinkIdpReviewProfile")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
            <button class="st-app__button" type="submit" name="submitAction" value="linkAccount">
                ${msg("confirmLinkIdpContinue", idpAlias)}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
    </#if>
</@layout.registrationLayout>
