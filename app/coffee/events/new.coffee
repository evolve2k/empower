$(document).ready ->
  $('.who-input').live 'keyup', () ->
    lastInput: $(this).parent().find('input').last()

    if (lastInput.val().length > 0)
      $(this).parent().append("<input class='who-input' />");
      console.log("add new")
    else
      secondLast: lastInput.prev('input')
      if (secondLast.size() == 1 && secondLast.val().length == 0)
        lastInput.remove()
