<#import "/templates/system/common/ice.ftl" as studio />
<!-- start flexslider -->

<@studio.componentRootTag class="flexslider">
  <@studio.renderRepeatCollection
  $field="carouselImages_o"
  $containerAttributes={'class': 'slides'};
  slider, index
  >
    <@studio.img
      $field="carouselImages_o.sliderImage_s"
      $index=index
      src=(slider.sliderImage_s)
      alt="image"
      class="img-carousel"
    />
    <div class="flex-caption">
      <@studio.h2 $field="carouselImages_o.sliderTitle_t" $index=index class="slider-title">
        ${slider.sliderTitle_t}
      </@studio.h2>
      <@studio.h2 $field="carouselImages_o.sliderSubtitle_t" $index=index class="slider-subtitle">
        ${slider.sliderSubtitle_t}
      </@studio.h2>
      <@studio.p $field="carouselImages_o.sliderDescription_t" $index=index class="slider-description">
        ${slider.sliderDescription_t}
      </@studio.p>
    </div>
  </@studio.renderRepeatCollection>
</@studio.componentRootTag>
<!-- end flexslider -->