$(document).ready ->
  $('.tableForm').formRowBuilder('sale-input')

  recalculateTotals: () ->
    totalSales: $('.sale-amount').inject(0, (acc) -> acc + $(this).val() * 1)
    totalCash: totalSales - $('#float-amount').val() * 1

    $('#total-sales').text("\$$totalSales")
    $('#total-cash').text("\$$totalCash")
  $('.sale-amount').live 'keyup', () ->
    recalculateTotals()
