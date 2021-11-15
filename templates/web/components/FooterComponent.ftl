<#import "/templates/system/common/crafter.ftl" as crafter />

<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@crafter.p $field="copyrightNotice_t">
          ${contentModel.copyrightNotice_t}
        </@crafter.p>
        <hr>
        <@crafter.renderRepeatGroup
          $field="social_o"
          $containerAttributes={'class': 'social-icon'}
          $containerTag="ul"
          $itemTag="li";
          icon, index
        >
          <a href="${icon.profileURL_s}" target="_blank" class="fa ${icon.socialOptions_s}"></a>
        </@crafter.renderRepeatGroup>
      </div>
    </div>
  </div>
</footer>