//= require application
$(document).ready(function(){
  $('.scrollspy').scrollSpy({
    scrollOffset: 64,
  });
  $('.tooltipped').tooltip({delay: 50});
  $(".button-collapse").sideNav();
  // $('.modal2').modal();
  $('.projects-carousel').slick({
    dots:true,
    prevArrow:'<i class="fa fa-2x fa-arrow-left"></i>',
    nextArrow:'<i class="fa fa-2x fa-arrow-right"></i>'

  });
});


$(".button-collapse").sideNav( {
  menuWidth: 200,
  closeOnClick: true,
});
