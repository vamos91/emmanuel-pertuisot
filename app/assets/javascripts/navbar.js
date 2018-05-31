(function(){
    $(window).scroll(function() {

        if($(this).scrollTop() > 150) {
            $('.navbar').addClass('nav--sticky');
        } else {
            $('.navbar').removeClass('nav--sticky');
        }
    });
  })();



// $(function() {
//     var selectedClass = "";
//     $(".fil-cat").click(function(){
//     selectedClass = $(this).attr("data-rel");
//      $("#portfolio").fadeTo(100, 0.1);
//     $("#portfolio div").not("."+selectedClass).fadeOut().removeClass('scale-anm');
//     setTimeout(function() {
//       $("."+selectedClass).fadeIn().addClass('scale-anm');
//       $("#portfolio").fadeTo(300, 1);
//     }, 300);

//   });
// });
