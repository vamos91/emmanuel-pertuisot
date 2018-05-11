(function(){
    $(window).scroll(function() {

        if($(this).scrollTop() > 150) {
            $('.navbar').addClass('nav--sticky');
        } else {
            $('.navbar').removeClass('nav--sticky');
        }
    });
  })();
