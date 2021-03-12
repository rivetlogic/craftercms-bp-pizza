<#import "/templates/system/common/ice.ftl" as studio />
<!-- start contact -->
<@studio.componentRootTag $tag="section" id="contact" class="templatemo-section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <@studio.h2 $field="contactUsPlaceholder_t" class="text-uppercase text-center">
          ${contentModel.contactUsPlaceholder_t}
        </@studio.h2>
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
        <@studio.h3 $field="locationTitle_t" class="padding-bottom-10 text-uppercase">
          ${contentModel.locationTitle_t}
        </@studio.h3>
        <p>
          <i class="fa fa-map-marker contact-fa"></i>
          <@studio.span $field="addressInfo_t">
            ${contentModel.addressInfo_t}
          </@studio.span>
        </p>
        <p>
          <i class="fa fa-phone contact-fa"></i>
          <a href="tel:${contentModel.phoneOne_s}" class="contact-link">
            <@studio.span $field="phoneOne_s">
              ${contentModel.phoneOne_s}
            </@studio.span>
          </a>,
          <a href="tel:${contentModel.phoneTwo_s}" class="contact-link">
            <@studio.span $field="phoneTwo_s">
              ${contentModel.phoneTwo_s}
            </@studio.span>
          </a>
        </p>
        <p>
          <i class="fa fa-envelope-o contact-fa"></i>
          <a href="mailto:${contentModel.emailCompany_s}" class="contact-link">
            <@studio.span $field="emailCompany_s">
              ${contentModel.emailCompany_s}
            </@studio.span>
          </a>
        </p>
      </div>
      <div class="col-md-4 col-sm-4">
        <@studio.h3 $field="scheduleTitle_t" class="text-uppercase">
          ${contentModel.scheduleTitle_t}
        </@studio.h3>
        <p>
          <i class="fa fa-clock-o contact-fa"></i>
          <@studio.span $field="startHour_s">
            ${contentModel.startHour_s}
          </@studio.span>
          -
          <@studio.span $field="finishHour_s">
            ${contentModel.finishHour_s}
          </@studio.span>
        </p>
        <p>
          <i class="fa fa-bell-o contact-fa"></i>
          <@studio.span $field="workdays_t">
            ${contentModel.workdays_t}
          </@studio.span>
        </p>
        </div>
      <div class="col-md-4 col-sm-4">
        <div class="google_map">
          <div id="map-canvas" class="map"></div>
        </div>
      </div>
    </div>
  </div>
</@studio.componentRootTag>
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