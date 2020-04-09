<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <div class="st-app__text st-app__row">
                ${msg("clientCertificate")}:
                <#if x509.formData.subjectDN??>
                    ${(x509.formData.subjectDN!"")}
                <#else>
                    ${msg("noCertificate")}
                </#if>
            </div>
            <#if x509.formData.isUserEnabled??>
                <div class="st-app__text st-app__row">
                    ${msg("doX509Login")}: ${(x509.formData.username!'')}
                </div>
            </#if>
            <button class="st-app__button" type="submit" name="login" value="${msg("doContinue")}">
                ${msg("doContinue")}
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
            <#if x509.formData.isUserEnabled??>
                <button class="st-app__button" type="submit" name="cancel" value="${msg("doIgnore")}">
                    ${msg("doIgnore")}
                    <svg class="st-app__icon st-app__icon_button">
                        <use xlink:href="#arrow" />
                    </svg>
                </button>
            </#if>
        </form>
    </#if>
</@layout.registrationLayout>
