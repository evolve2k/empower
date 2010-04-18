# jQuery plugin to automatically provide extra rows in a form as needed.
# This is handy when adding multiple child objects at the same time. Your
# form should have an element with a class of 'template' - this will be
# cloned to create each row.
#
#   <form>
#     <div class='child-name'><input /></div>
#     <div class='template'><input placeholder='Leave blank if no more' /></div>
#   </form>
#
#   $('form').formRowBuilder('child-name')

(($) ->
  $.fn.extend({
    formRowBuilder: (klass) ->
      console.log("HEY $klass")
      parent: this
      template: parent.find('.template')
      parent.find(".$klass input").live 'keyup', () ->
        lastRow: parent.find(".$klass").last()

        isEmpty: (element) ->
          $(element).find('input').all ->
            $(this).val().length == 0

        if !isEmpty(lastRow)
          lastRow.after(template.clone().addClass(klass).removeClass('template'))
        else
          secondLastRow: lastRow.prevAll(".$klass").first()
          if isEmpty(secondLastRow)
            lastRow.remove()
  })
)(jQuery)
