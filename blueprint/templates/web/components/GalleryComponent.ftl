<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- start gallery -->
	<section id="gallery" class="templatemo-section templatemo-light-gray-bg" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center text-uppercase">${contentModel.galleryTitle}</h2>
					<hr>
				</div>
			</div>
			<div class="row">
				<#list contentModel.gallery.item as img>
                	<div class="col-xs-12 col-sm-4">
						<div class="gallery-wrapper">
							<img src="${img.image}" class="img-responsive gallery-img" alt="Pizza 1">
                            <div class="gallery-des">
                                <h3>${img.imageTitle}</h3>
                                <h5>${img.imageDesc}</h5>
                            </div>
						</div>
					</div>
                </#list>
			</div>
		</div>
	</section>
<!-- end gallery -->

