<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayRequiredFields=true; section>
    <#if section = "header">
        Mobile Authenticator Setup
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <div class="st-app__text st-app__text_no-margin">
                1. Install one of the following applications on your mobile
                <div class="st-app__list">
                    - FreeOTP
                    <br />
                    - Google Authenticator
                </div>
            </div>
            <div class="st-app__text">
                2. Open the application and scan the barcode
            </div>
            <div class="st-app__qr-cont js-image-cont">
                <img class="st-app__qr"
                     src="data:image/png;base64, ${totp.totpSecretQrCode}">
                <a class="st-app__link js-show-qr-code"
                   href="#">
                    Unable to scan?
                </a>
            </div>
            <div class="st-app__qr-cont st-app__qr-cont_mobile js-code-cont">
                <div class="st-app__qr-hash js-qr-hash">
                    <input class="st-app__qr-input js-qr-code-input"
                           value="${totp.totpSecretEncoded}"
                           type="text">
                    <svg class="st-app__icon">
                        <use xlink:href="#copy" />
                    </svg>
                </div>
                <a class="st-app__link js-show-qr-image"
                   href="#">
                    Show QR Code
                </a>
            </div>
            <div class="st-app__text">
                3. Enter the one-time code provided by the application and click Submit to finish the setup
            </div>
            <div class="st-app__input st-app__input">
                <input class="st-app__input-control"
                       name="totp"
                       placeholder="Code"
                       type="text" />
            </div>
            <input type="hidden" name="totpSecret" value="${totp.totpSecret}" />
            <#if mode??><input type="hidden" id="mode" name="mode" value="${mode}"/></#if>
            <button class="st-app__button"
                    type="submit">
                Log In
                <svg class="st-app__icon st-app__icon_button">
                    <use xlink:href="#arrow" />
                </svg>
            </button>
        </form>
        <div class="st-app__copy-notify js-copy-modal">
            Code is copied to clickboard!
            <svg class="st-app__icon st-app__icon_notify js-close-copy">
                <use xlink:href="#close" />
            </svg>
        </div>
        <div class="st-app__overlay js-qr-modal">
            <div class="st-app__modal">
                <svg class="st-app__icon st-app__icon_modal js-close-qr-modal">
                    <use xlink:href="#close" />
                </svg>
                <img class="st-app__modal-qr" src="data:image/png;base64, ${totp.totpSecretQrCode}">
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
