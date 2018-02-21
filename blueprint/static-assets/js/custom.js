function sendEmail(){
	var thisButton = $('#form-submit');
    alertify.set('notifier','position', 'top-right');

   if(!thisButton.hasClass("loading") && !thisButton.hasClass("done")){
      var frm = $("#contact-form");
      if (!frm[0].checkValidity()) {
      	alertify.error('Please fill all fields required or check the email format.');
        frm.find('input[type=submit]').click()
      } else {
          var data = frm.serializeArray();
          data = data.reduce(function (m, e) { m[e.name] = e.value; return m; }, {});
          $.ajax({
            type: "POST",
            "url": "/api/1/services/mail.json",
            "data": data,
          }).done(function () {
              $('#contact-form')[0].reset();
              alertify.success('Your message was sent');
          }).fail(function (error) {
              alertify.error('There was an error during the action');
          }).always(function(){
              setTimeout(function(){
                thisButton.removeClass('done error');
              }, 2000);
          });
      }
    }
}


// Hide mobile menu after clicking on a link
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });
   

$(document).ready(function() {
	$('.flexslider').flexslider({
    	controlNav : false,
    	nextText : '',
    	prevText : '',
    }); 
	//--------- Page Contact: Active the Alertify  -------
        
    $("#contact-form").submit(function(e){
      e.preventDefault();
      sendEmail();
    });   
    
	loadGoogleMap();  

});