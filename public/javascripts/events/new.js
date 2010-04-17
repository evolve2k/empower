(function(){
  $(document).ready(function() {
    return $('.who-input').live('keyup', function() {
      var lastInput, secondLast;
      lastInput = $(this).parent().find('input').last();
      if ((lastInput.val().length > 0)) {
        return $(this).parent().append("<br /><input type='text' class='who-input' placeholder='Leave blank if no more'/>");
      } else {
        secondLast = lastInput.prevAll('input').first();
        if ((secondLast.size() === 1 && secondLast.val().length === 0)) {
          lastInput.prev('br').remove();
          return lastInput.remove();
        }
      }
    });
  });
})();
