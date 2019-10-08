<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- start gallery -->
	<section id="gallery" class="templatemo-section templatemo-light-gray-bg" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center text-uppercase">${contentModel.galleryTitle_t}</h2>
					<hr>
				</div>
			</div>
		</div>
    <div class="container">
      <div class="gallery">
       <#list contentModel.gallery_o.item as img>
          <div class="gallery-wrapper">
            <a href="${img.image}" class="big"><img src="${img.image}" class="gallery img" alt="Pizza 1"></a>
              <div class="gallery-des">
                  <h3>${img.imageTitle}</h3>
                  <h5>${img.imageDesc}</h5>
              </div>
          </div>
      </#list>
      </div>
    </div>
	</section>
<!-- end gallery_o -->