

$(function() {
  $('#about').click(function() {
        $('html,body').animate({
          scrollTop: $('#about-me').offset().top
        }, 1000);
        return false;
  });
});