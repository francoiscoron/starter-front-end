(function($){
    $(':input').focus(function(){

      $(this).css('background-color','#00f');

    });

    $(':input').blur(function(){

      $(this).css('background-color','#f00');

    });
})(jQuery);