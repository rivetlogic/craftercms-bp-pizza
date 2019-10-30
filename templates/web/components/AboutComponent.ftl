<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- start about -->
	<section id="about" class="templatemo-section templatemo-top-130" <@studio.iceAttr iceGroup="visible" component=contentModel />>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 class="text-uppercase">${contentModel.titleAbout_t}</h1>
				</div>
				<div class="col-md-6 col-sm-6">					
					<h3 class="text-uppercase padding-bottom-10">${contentModel.subtitle_t}</h3>
					<p>${contentModel.description_html}</p>
				</div>
				<div class="col-md-6 col-sm-6">
					<img src="${contentModel.imageAbout_s}" class="img-responsive img-bordered img-about" alt="about img">
				</div>
			</div>
		</div>
	</section>
	<!-- end about -->