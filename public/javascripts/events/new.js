(function(){
  $(document).ready(function() {
    return $('.who-input').live('keyup', function() {
      var lastInput, secondLast;
      lastInput = $('.who-input').last();
      if ((lastInput.val().length > 0)) {
        return lastInput.parent().after("<li><input type='text' class='no-label who-input' placeholder='Leave blank if no more'/></li>");
      } else {
        secondLast = lastInput.parent('li').prevAll('li').first().find('.who-input');
        return (secondLast.size() === 1 && secondLast.val().length === 0) ? lastInput.parent('li').remove() : null;
      }
    });
  });
})();
