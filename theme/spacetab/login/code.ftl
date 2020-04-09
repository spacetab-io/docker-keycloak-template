<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <#if code.success>
            ${msg("codeSuccessTitle")}
        <#else>
            ${msg("codeErrorTitle", code.error)}
        </#if>
    <#elseif section = "form">
        <#if code.success>
            <div class="st-app__text">
                ${msg("copyCodeInstruction")}
            </div>
            <div class="st-app__qr-cont st-app__qr-cont_mobile js-code-cont">
                <div class="st-app__qr-hash js-qr-hash">
                    <input class="st-app__qr-input js-qr-code-input"
                           value="${code.code}"
                           type="text">
                    <svg class="st-app__icon">
                        <use xlink:href="#copy" />
                    </svg>
                </div>
            </div>
        <#else>
            <div class="st-app__message st-app__message_error">
                <svg class="st-app__icon st-app__icon_message st-app__icon_error">
                    <use xlink:href="#error" />
                </svg>
                ${code.error}
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
