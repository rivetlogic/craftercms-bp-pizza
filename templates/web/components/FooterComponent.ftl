<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>${contentModel.copyrightNotice_t}</p>
                <hr>
                <ul class="social-icon" <@studio.iceAttr iceGroup="social"/>>
                <#list contentModel.social_o.item as icon>
                    <li><a href="${icon.profileURL_s}" target="_blank" class="fa ${icon.socialOptions_s}"></a></li>
                </#list>
                </ul>
            </div>
        </div>
    </div>
</footer>