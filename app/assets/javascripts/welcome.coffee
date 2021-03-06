$ ->  

  $("#options input[type=radio]").on 'click', () ->
    $("#payment-methods").removeClass("hide")
  
  $("ul.payment-methods a").on 'click', () ->
    
    name = $('#survey_name', 'form').val()
    email = $('#survey_email', 'form').val()
    subscription = $('input[name=optionsRadios]:checked', 'form').val()
    payment_method = $(this).data("payment-method")

    if name == ""
      $('#survey_name', 'form').addClass("is-invalid") 
    else
      $('#survey_name', 'form').removeClass("is-invalid") 
    if email == ""
      $('#survey_email', 'form').addClass("is-invalid") 
    else
      $('#survey_email', 'form').removeClass("is-invalid")
    
    if $(".is-invalid")[0] == undefined
      $("#survey_subscription").val(subscription)
      $("#survey_payment").val(payment_method)
      $("form").submit()
    
    return false
    
  $(".raffled").on 'click', "a", () ->
    $el = $(this).parent("form")
    $.ajax({
        url: '/2019/sorteio',
        type: 'DELETE',
        data: {
          id: $("input[name=id]", $el).val()
          authenticity_token: $("input[name=authenticity_token]", $el).val()
        },
        success: (result) -> 
          location.reload(true)
    });
    
  $(".available").on 'click', "a", () ->
    $(this).parent("form").submit()
