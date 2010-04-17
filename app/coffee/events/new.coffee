$(document).ready ->
  $('.who-input').live 'keyup', () ->
    lastInput: $('.who-input').last()

    if (lastInput.val().length > 0)
      lastInput.parent().after("<li><input type='text' class='no-label who-input' placeholder='Leave blank if no more'/></li>");
    else
      secondLast: lastInput.parent('li').prevAll('li').first().find('.who-input')
      if (secondLast.size() == 1 && secondLast.val().length == 0)
        lastInput.parent('li').remove()
