<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- start gallery -->
<section id="gallery" class="templatemo-section templatemo-light-gray-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@crafter.h2 $field="galleryTitle_t" class="text-center text-uppercase">
          ${contentModel.galleryTitle_t}
        </@crafter.h2>
        <hr>
      </div>
    </div>
  </div>
  <div class="container">

    <@crafter.renderRepeatGroup
      $field="gallery_o"
      $containerTag="div"
      $containerAttributes={'class': 'gallery'}
      $itemTag="div"
      $itemAttributes={'class': 'gallery-wrapper'};
      img, index
    >
      <a href="${img.image_s}" class="big">
        <@crafter.img
          $field="gallery_o.image_s"
          $index=index
          src=(img.image_s)
          class="gallery img"
          alt="Pizza 1"
        />
      </a>
      <div class="gallery-des">
        <@crafter.h3 $field="gallery_o.imageTitle_t" $index=index>
          ${img.imageTitle_t}
        </@crafter.h3>
        <@crafter.h5 $field="gallery_o.imageDesc_t" $index=index>
          ${img.imageDesc_t}
        </@crafter.h5>
      </div>
    </@crafter.renderRepeatGroup>
  </div>
</section>
<!-- end gallery_o -->