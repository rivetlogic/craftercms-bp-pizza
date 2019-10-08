<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- start flexslider -->
	<div class="flexslider">
		<ul class="slides">
        	<#list contentModel.carouselImages_o.item as slider>
            	<li <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
                 	 <img src="${slider.sliderImage}" alt="image" class="img-carousel">
                  <div class="flex-caption">
                      <h2 class="slider-title">${slider.sliderTitle_t}</h2>
                      <h3 class="slider-subtitle">${slider.sliderSubtitle_t}</h3>
                      <p class="slider-description">${slider.sliderDescription_t}</p>
                  </div>
				</li>
            </#list>
		</ul>
	</div>
	<!-- end flexslider -->