(function(){
  $(document).ready(function() {
    var recalculateTotals;
    $('.tableForm').formRowBuilder('sale-input');
    recalculateTotals = function recalculateTotals() {
      var totalCash, totalSales;
      totalSales = $('.sale-amount').inject(0, function(acc) {
        return acc + $(this).val() * 1;
      });
      totalCash = totalSales - $('#float-amount').val() * 1;
      $('#total-sales').text("\$" + totalSales);
      return $('#total-cash').text("\$" + totalCash);
    };
    return $('.sale-amount').live('keyup', function() {
      return recalculateTotals();
    });
  });
})();
