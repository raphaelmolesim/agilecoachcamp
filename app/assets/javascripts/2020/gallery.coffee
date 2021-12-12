$ ->

  $("#conteudo_gerado #image-dots").on 'click', "a.change-image",() ->
    console.log("foi!!")
    $current = $("img.active")
    $current.removeClass("active")
    $current.addClass("hidden")
    $el = $(this)
    target = $el.data("target")
    $target = $("##{target}")
    $target.removeClass("hidden")
    $target.addClass("active")

    $a_current = $("a.active")
    $a_current.removeClass("active")

    $a_current.addClass("hidden")
    $a_change = $a_current.parent("li").find("a.change-image")
    $a_change.removeClass("hidden")

    $el.addClass("hidden")
    $a_target = $el.parent("li").find("a.show-image")
    $a_target.addClass("active")
    $a_target.removeClass("hidden")
