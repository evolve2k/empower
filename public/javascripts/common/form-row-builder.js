(function(){
  // jQuery plugin to automatically provide extra rows in a form as needed.
  // This is handy when adding multiple child objects at the same time. Your
  // form should have an element with a class of 'template' - this will be
  // cloned to create each row.
  //   <form>
  //     <div class='child-name'><input /></div>
  //     <div class='template'><input placeholder='Leave blank if no more' /></div>
  //   </form>
  //   $('form').formRowBuilder('child-name')
  (function($) {
    return $.fn.extend({
      formRowBuilder: function formRowBuilder(klass) {
        var parent, template;
        parent = this;
        template = parent.find('.template');
        return parent.find("." + klass + " input").live('keyup', function() {
          var isEmpty, lastRow, secondLastRow;
          lastRow = parent.find("." + klass).last();
          isEmpty = function isEmpty(element) {
            return $(element).find('input').all(function() {
              return $(this).val().length === 0;
            });
          };
          if (!isEmpty(lastRow)) {
            return lastRow.after(template.clone().addClass(klass).removeClass('template'));
          } else {
            secondLastRow = lastRow.prevAll("." + klass).first();
            return secondLastRow.size() === 1 && isEmpty(secondLastRow) ? lastRow.remove() : null;
          }
        });
      }
    });
  })(jQuery);
})();
