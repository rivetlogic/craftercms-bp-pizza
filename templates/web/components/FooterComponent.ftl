<#import "/templates/system/common/ice.ftl" as studio />

<@studio.componentRootTag $tag="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@studio.p $field="copyrightNotice_t">
          ${contentModel.copyrightNotice_t}
        </@studio.p>
        <hr>
        <ul class="social-icon">
          <#list contentModel.social_o.item as icon>
            <li>
              <a href="${icon.profileURL_s}" target="_blank" class="fa ${icon.socialOptions_s}"></a>
            </li>
          </#list>
        </ul>
      </div>
    </div>
  </div>
</@studio.componentRootTag>