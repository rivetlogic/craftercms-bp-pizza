<#import "/templates/system/common/ice.ftl" as studio />

<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@studio.p $field="copyrightNotice_t">
          ${contentModel.copyrightNotice_t}
        </@studio.p>
        <hr>
        <@studio.renderRepeatCollection
          $field="social_o"
          $containerAttributes={'class': 'social-icon'};
          icon, index
        >
          <a href="${icon.profileURL_s}" target="_blank" class="fa ${icon.socialOptions_s}"></a>
        </@studio.renderRepeatCollection>
      </div>
    </div>
  </div>
</footer>