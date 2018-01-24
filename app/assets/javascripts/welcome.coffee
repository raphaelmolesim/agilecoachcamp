$ ->  

  $("#options input[type=radio]").on 'click', () ->
    $("#payment-methods").removeClass("hide")
  
  $("ul.payment-methods a").on 'click', () ->
    subscription = $('input[name=optionsRadios]:checked', 'form').val()
    payment_method = $(this).data("payment-method")
    console.log("--> #{subscription} / #{payment_method}")
    $("#survey_subscription").val(subscription)
    $("#survey_payment").val(payment_method)
    $("form").submit()
    return false
