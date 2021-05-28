<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- start about -->
	<section id="about" class="templatemo-section templatemo-top-130">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<@crafter.h1 $field="titleAbout_t" class="text-uppercase">
						${contentModel.titleAbout_t}
					</@crafter.h1>
				</div>
				<div class="col-md-6 col-sm-6">
					<@crafter.h3 $field="subtitle_t" class="text-uppercase padding-bottom-10">
						${contentModel.subtitle_t}
					</@crafter.h3>
					<@crafter.tag $field="description_html">
						${contentModel.description_html}
					</@crafter.tag>
				</div>
				<div class="col-md-6 col-sm-6">
					<@crafter.img
						$field="imageAbout_s"
						src=(contentModel.imageAbout_s)
						class="img-responsive img-bordered img-about"
						alt="about img"
					/>
				</div>
			</div>
		</div>
	</section>
	<!-- end about -->