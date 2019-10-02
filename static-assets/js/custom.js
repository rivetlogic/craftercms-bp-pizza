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
   

// preloader
$(window).ready(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
});

$(document).ready(function() {

	    // ------- WOW ANIMATED ------ //
    wow = new WOW(
        {
            mobile: false
        });
    wow.init();
    
     // ------- JQUERY PARALLAX ---- //
    function initParallax() {
        $('#home').parallax("100%", 0.1);
        $('#gallery').parallax("100%", 0.3);
        $('#menu').parallax("100%", 0.2);
        $('#team').parallax("100%", 0.3);
        $('#contact').parallax("100%", 0.1);
    }
    initParallax();
	
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

$(function(){
    var $gallery = $('.gallery a').simpleLightbox();

    // $gallery.on('show.simplelightbox', function(){
    //   console.log('Requested for showing');
    // })
    // .on('shown.simplelightbox', function(){
    //   console.log('Shown');
    // })
    // .on('close.simplelightbox', function(){
    //   console.log('Requested for closing');
    // })
    // .on('closed.simplelightbox', function(){
    //   console.log('Closed');
    // })
    // .on('change.simplelightbox', function(){
    //   console.log('Requested for change');
    // })
    // .on('next.simplelightbox', function(){
    //   console.log('Requested for next');
    // })
    // .on('prev.simplelightbox', function(){
    //   console.log('Requested for prev');
    // })
    // .on('nextImageLoaded.simplelightbox', function(){
    //   console.log('Next image loaded');
    // })
    // .on('prevImageLoaded.simplelightbox', function(){
    //   console.log('Prev image loaded');
    // })
    // .on('changed.simplelightbox', function(){
    //   console.log('Image changed');
    // })
    // .on('nextDone.simplelightbox', function(){
    //   console.log('Image changed to next');
    // })
    // .on('prevDone.simplelightbox', function(){
    //   console.log('Image changed to prev');
    // })
    // .on('error.simplelightbox', function(e){
    //   console.log('No image found, go to the next/prev');
    //   console.log(e);
    // });
  });