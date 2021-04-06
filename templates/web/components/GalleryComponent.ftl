<#import "/templates/system/common/ice.ftl" as studio />
<!-- start gallery -->
<section id="gallery" class="templatemo-section templatemo-light-gray-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@studio.h2 $field="galleryTitle_t" class="text-center text-uppercase">
          ${contentModel.galleryTitle_t}
        </@studio.h2>
        <hr>
      </div>
    </div>
  </div>
  <div class="container">

    <@studio.renderRepeatCollection
      $field="gallery_o"
      $containerTag="div"
      $containerAttributes={'class': 'gallery'}
      $itemTag="div"
      $itemAttributes={'class': 'gallery-wrapper'};
      img, index
    >
      <a href="${img.image_s}" class="big">
        <@studio.img
          $field="gallery_o.image_s"
          $index=index
          src=(img.image_s)
          class="gallery img"
          alt="Pizza 1"
        />
      </a>
      <div class="gallery-des">
        <@studio.h3 $field="gallery_o.imageTitle_t" $index=index>
          ${img.imageTitle_t}
        </@studio.h3>
        <@studio.h5 $field="gallery_o.imageDesc_t" $index=index>
          ${img.imageDesc_t}
        </@studio.h5>
      </div>
    </@studio.renderRepeatCollection>
  </div>
</section>
<!-- end gallery_o -->