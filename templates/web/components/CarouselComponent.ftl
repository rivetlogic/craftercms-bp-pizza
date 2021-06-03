<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- start flexslider -->

<div class="flexslider">
  <@crafter.renderRepeatCollection
  $field="carouselImages_o"
  $containerAttributes={'class': 'slides'};
  slider, index
  >
    <@crafter.img
      $field="carouselImages_o.sliderImage_s"
      $index=index
      src=(slider.sliderImage_s)
      alt="image"
      class="img-carousel"
    />
    <div class="flex-caption">
      <@crafter.h2 $field="carouselImages_o.sliderTitle_t" $index=index class="slider-title">
        ${slider.sliderTitle_t}
      </@crafter.h2>
      <@crafter.h2 $field="carouselImages_o.sliderSubtitle_t" $index=index class="slider-subtitle">
        ${slider.sliderSubtitle_t}
      </@crafter.h2>
      <@crafter.p $field="carouselImages_o.sliderDescription_t" $index=index class="slider-description">
        ${slider.sliderDescription_t}
      </@crafter.p>
    </div>
  </@crafter.renderRepeatCollection>
</div>
<!-- end flexslider -->