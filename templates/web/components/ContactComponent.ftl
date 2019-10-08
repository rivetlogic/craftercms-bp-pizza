<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- start contact -->
	<section id="contact" class="templatemo-section" <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-uppercase text-center">${contentModel.contactUsPlaceholder_t}</h2>
					<hr>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<form id="contact-form" action="/doContact" method="post" role="form">
						<div class="col-md-6 col-sm-6">
							<input name="name" type="text" class="form-control" id="name" maxlength="60" placeholder="${contentModel.namePlaceholder_t}" required>
					    	<input name="email" type="email" class="form-control" id="email" placeholder="${contentModel.emailPlaceholder_t}" required>
							<input name="subject" type="text" class="form-control" id="subject" placeholder="${contentModel.subjectPlaceholder_t}" required>
						</div>
						<div class="col-md-6 col-sm-6">
							<textarea id="message" name="message" class="form-control" rows="5" placeholder="${contentModel.messagePlaceholder_t}" required></textarea>
						</div>
						<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
							<input id="form-submit" name="submit" type="submit" class="form-control" value="${contentModel.sendButton_t}">
						</div>
					</form>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-4 col-sm-4">
					<h3 class="padding-bottom-10 text-uppercase">${contentModel.locationTitle_t}</h3>
					<p><i class="fa fa-map-marker contact-fa"></i> ${contentModel.addressInfo_t}</p>
					<p>
						<i class="fa fa-phone contact-fa"></i>
						<a href="tel:${contentModel.phoneOne_s}" class="contact-link">${contentModel.phoneOne_s}</a>, 
						<a href="tel:${contentModel.phoneTwo_s}" class="contact-link">${contentModel.phoneTwo_s}</a>
					</p>			
					<p><i class="fa fa-envelope-o contact-fa"></i> 
                    	<a href="mailto:${contentModel.emailCompany_s}" class="contact-link">${contentModel.emailCompany_s}</a></p>
				</div>
				<div class="col-md-4 col-sm-4">
					<h3 class="text-uppercase">${contentModel.scheduleTitle}</h3>
					<p><i class="fa fa-clock-o contact-fa"></i>${contentModel.startHour} - ${contentModel.finishHour}</p>
					<p><i class="fa fa-bell-o contact-fa"></i>${contentModel.workdays}</p>
			  	</div>
				<div class="col-md-4 col-sm-4">
					<div class="google_map">
						<div id="map-canvas" class="map"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- end contact -->

<script>
	// google map
var map = '';
var center;

function initialize() {
    var mapOptions = {
      zoom: 16,
      center: new google.maps.LatLng(${contentModel.latitude_s}, ${contentModel.longitude_s}),
      scrollwheel: false
    };
  
    map = new google.maps.Map(document.getElementById('map-canvas'),  mapOptions);

    google.maps.event.addDomListener(map, 'idle', function() {
        calculateCenter();
    });
  
    google.maps.event.addDomListener(window, 'resize', function() {
        map.setCenter(center);
    });
}

function calculateCenter() {
  center = map.getCenter();
}

function loadGoogleMap(){
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
    document.body.appendChild(script);
}

</script>