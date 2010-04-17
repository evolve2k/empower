$(document).ready ->
  $('.who-input').live 'keyup', () ->
    lastInput: $(this).parent().find('input').last()

    if (lastInput.val().length > 0)
      $(this).parent().append("<br /><input type='text' class='who-input' placeholder='Leave blank if no more'/>");
    else
      secondLast: lastInput.prevAll('input').first()
      if (secondLast.size() == 1 && secondLast.val().length == 0)
        lastInput.prev('br').remove()
        lastInput.remove()
