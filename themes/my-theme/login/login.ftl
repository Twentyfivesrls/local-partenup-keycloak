

<#import "template.ftl" as layout>
<script src="https://code.jquery.com/jquery-3.6.0.min.js">
    $(document).ready(function() {
        $('.input-style').focus(function() {
            $(this).siblings('span.placeholder').addClass('placeholder-up');
        });

        $('.input-style').blur(function() {
            if (!$(this).val()) {
                $(this).siblings('span.placeholder').removeClass('placeholder-up');
            }
        });
    });
</script>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password; section>
    <#if section = "title">
        ${msg("loginTitle", (realm.displayName!''))}
    <#elseif section = "header">
    <#elseif section = "form">
<div class="login-content">
    <div class="box">
        <div class="img-conteiner">
        <img src="${url.
        resourcesPath}/img/logosenzasfondo.png" alt="Logo" rel="icon" class="logo">
        </div>
        <#if realm.password>
            <div class="gradient-background">
                <span>Benvenuto!</span>
            </div>
        <div class="card" id="loginCard">
                <form id="kc-form-login" class="form" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <div class="input-box">
                        <input class="input-style" type="text" id="username" placeholder="${msg("Username")}" name="username" tabindex="1" autofocus autocomplete="off"
                               aria-invalid="<#if messagesPerField.existsError('username', 'password')>true</#if>">
                        <#if messagesPerField.existsError('username','password')>
                            <span id="input-error" class="invalid-input" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>
                    </div>
                    <div class="input-box">
                        <input class="input-style" type="password" id="password" placeholder="${msg("Password")}" name="password" autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>">
                        <#if messagesPerField.existsError('username','password')>
                            <span id="input-error" class="invalid-input" aria-live="polite">
                            </span>
                        </#if>
                    </div>
                    <div>
                        <button class="button-style pull-right">ENTRA</button>
                    </div>
                </form>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
