<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html>
<html class="${properties.kcHtmlClass!}">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="last-modified" content="2019-01-17 15:30:19 +0530">
    <meta http-equiv="Expires" content="600" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
    <title><#nested "title"></title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <!--<link href="${url.resourcesPath}/css/semantic.min.css" rel="stylesheet" />
    <link href="${url.resourcesPath}/css/login.css" rel="stylesheet" />-->
    
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
   
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>

<body class="${properties.kcBodyClass!}">
    <main>
    <div id="kc-logo"><a href="${properties.kcLogoLink!'#'}" title="kc-logo-wrapper"><div id="kc-logo-wrapper"></div><span class="hide">kc-logo</span></a></div>

    <div id="kc-container" class="${properties.kcContainerClass!}">
        <div id="kc-container-wrapper" class="${properties.kcContainerWrapperClass!}">

            <div id="kc-header" class="${properties.kcHeaderClass!}">
                <div id="kc-header-wrapper" class="${properties.kcHeaderWrapperClass!}"><#nested "header"></div>
            </div>

            <#if realm.internationalizationEnabled>
                <div id="kc-locale" class="${properties.kcLocaleClass!}">
                    <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                        <div class="kc-dropdown" id="kc-locale-dropdown">
                            <a href="#" id="kc-current-locale-link">${locale.current}</a>
                            <ul>
                                <#list locale.supported as l>
                                    <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                </#list>
                            </ul>
                        </div>
                    </div>
                </div>
            </#if>

            <div id="kc-content" class="${properties.kcContentClass!}">
                <div id="kc-content-wrapper" class="${properties.kcContentWrapperClass!}">
                    <#if displayMessage && message?has_content>
                        <!--div class="${properties.kcFeedbackAreaClass!}">
                            <div class="alert alert-${message.type}">
                                <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                                <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                                <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                                <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                                <span class="kc-feedback-text">${message.summary}</span>
                            </div>
                        </div-->
                    </#if>


                    <div class="ui grid stackable">
                        <div class="six wide column login-left">
                            <div class="logo">
                                <a href="${properties.kcLogoLink!'#'}"><img src="${url.resourcesPath}/img/sunbird_logo.png" /></a>
                            </div>
                            <p class="slider-heading mobile-heading">Track your goal, perform better!</p>
                            <!-- Slideshow container -->
                            <div class="slideshow-container">

                                <!-- Full-width images with number and caption text -->
                                <div class="mySlides fade">
                                    <div class="slide">
                                        <p class="slider-heading">1. Track your goal, perform better!</p>
                                        <p class="slider-sub-heading">Et quidem rerum hic tenetur a se esse fugiendum itaque turbent, ut enim
                                            ad minima veniam, quis nostrum exercitationem ullam corporis.</p>
                                    </div>
                                </div>

                                <div class="mySlides fade">
                                    <div class="slide">
                                        <p class="slider-heading">2. Track your goal, perform better!</p>
                                        <p class="slider-sub-heading">Et quidem rerum hic tenetur a se esse fugiendum itaque turbent, ut enim
                                            ad minima veniam, quis nostrum exercitationem ullam corporis.</p>
                                    </div>
                                </div>

                                <div class="mySlides fade">
                                    <div class="slide">
                                        <p class="slider-heading">3. Track your goal, perform better!</p>
                                        <p class="slider-sub-heading">Et quidem rerum hic tenetur a se esse fugiendum itaque turbent, ut enim
                                            ad minima veniam, quis nostrum exercitationem ullam corporis.</p>
                                    </div>
                                </div>

                                <!-- Next and previous buttons -->
                                <!-- <span class="prev" (click)="plusSlides(-1)">&#10094;</span>
                                <span class="next" (click)="plusSlides(1)">&#10095;</span> -->
                            </div>
                            <br>

                            <!-- The dots/circles -->
                            <div class="slider-dots">
                                <span class="dot" onclick="currentSlide(1)"></span>
                                <span class="dot" onclick="currentSlide(2)"></span>
                                <span class="dot" onclick="currentSlide(3)"></span>
                            </div>
                        </div>
                        <div class="six wide column login-right middle aligned">


                            <div id="kc-form" class="${properties.kcFormAreaClass!}">
                                <div id="kc-form-wrapper" class="${properties.kcFormAreaWrapperClass!}">
                                    <#nested "form">
                                </div>
                            </div>
                        </div>
                        <div id="mobile-registration" class="field">
                        <div class="ui content signUpMsg">
                            ${msg("noAccount")} <span id="signup" role="link" tabindex="0" class="registerLink" onclick=navigate('self')>${msg("registerHere")}</span>
                        </div>
                    </div>
                    </div>
                    <script type="text/javascript">
                        var sessionTenant = sessionStorage.getItem("rootTenantLogo");
                        
                        if(sessionTenant){
                            var imgSrc = "${url.resourcesPath}/img/tenants/"+sessionTenant+".png";
                        }else{
                            var imgSrc = "${url.resourcesPath}/img/logo.png";
                        }

                        var logoImg =  document.querySelector(".ui.header img");
                        if(logoImg){
                            logoImg.setAttribute('class','logo-image');
                            if(sessionTenant) {
                                var logoname = sessionTenant + 'logo';
                                logoImg.setAttribute('alt',logoname);
                            } else {
                                var logoname = 'Sunbird logo';
                                logoImg.setAttribute('alt',logoname);
                            }
                            logoImg.src = imgSrc;
                            logoImg.addEventListener("error", ()=>{ logoImg.onerror=null;logoImg.src='${url.resourcesPath}/img/logo.png'});
                        }
                    </script>
                    <#if displayInfo>
                        <div id="kc-info" class="${properties.kcInfoAreaClass!}">
                            <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                                <#nested "info">
                            </div>
                        </div>
                    </#if>
                </div>
            </div>
        </div>
    </div>
    </main>
</body>
 <script src="${url.resourcesPath}/js/slider.js" type="text/javascript"></script>
</html>
</#macro>
