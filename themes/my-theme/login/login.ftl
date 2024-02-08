<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle", (realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
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
                        <input class="login-field input-style" type="text" id="username" placeholder="${msg("username")}" name="username" tabindex="1">
                    </div>
                    <div class="input-box">
                        <input class="login-field input-style" type="password" id="password" placeholder="${msg("password")}" name="password" tabindex="2">
                    </div>
                    <div>
                        <button class="button-style pull-right">ENTRA</button>
                    </div>
                </form>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
