<#import "/templates/system/common/ice.ftl" as studio />
<!-- start about -->
	<@studio.componentRootTag $tag="section" id="about" class="templatemo-section templatemo-top-130">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<@studio.h1 $field="titleAbout_t" class="text-uppercase">
						${contentModel.titleAbout_t}
					</@studio.h1>
				</div>
				<div class="col-md-6 col-sm-6">
					<@studio.h3 $field="subtitle_t" class="text-uppercase padding-bottom-10">
						${contentModel.subtitle_t}
					</@studio.h3>
					<@studio.tag $field="description_html">
						${contentModel.description_html}
					</@studio.tag>
				</div>
				<div class="col-md-6 col-sm-6">
					<@studio.img
						$field="imageAbout_s"
						src=(contentModel.imageAbout_s)
						class="img-responsive img-bordered img-about"
						alt="about img"
					/>
				</div>
			</div>
		</div>
	</@studio.componentRootTag>
	<!-- end about -->