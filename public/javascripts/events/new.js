(function(){
  $(document).ready(function() {
    return $('.who-input').live('keyup', function() {
      var lastInput, secondLast;
      lastInput = $(this).parent().find('input').last();
      if ((lastInput.val().length > 0)) {
        $(this).parent().append("<input class='who-input' />");
        return console.log("add new");
      } else {
        secondLast = lastInput.prev('input');
        return (secondLast.size() === 1 && secondLast.val().length === 0) ? lastInput.remove() : null;
      }
    });
  });
})();
