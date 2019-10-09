<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <#if contentModel.showFooter_b>
                <p>Copyright &copy; 2084 ${contentModel.siteName_t}</p>
                <hr>
                </#if>
                <ul class="social-icon" <@studio.iceAttr iceGroup="social"/>>
                <#list contentModel.social_o.item as icon>
                    <li><a href="${icon.profileURL_s}" target="_blank" class="fa ${icon.socialOptions_s}"></a></li>
                </#list>
                </ul>
            </div>
        </div>
    </div>
</footer>