$(document).on "change", ".duns-btn", (e) ->
  el = $(this)
  button = el.find("button")
  e.preventDefault()
  $(".duns-paths").addClass("hide")
  $("." + el.val()).removeClass("hide")

$(document).on "mouseenter", ".helper-tooltip", (e) ->
  $(this).tooltip()
  $(this).tooltip('show')

$(document).on "mouseleave", ".helper-tooltip", (e) ->
  $(this).tooltip('hide')

$(document).on "mouseenter", ".helper-popover", (e) ->
  $(this).popover()
  $(this).popover('show')

$(document).on "mouseleave", ".helper-popover", (e) ->
  $(this).popover('hide')

$(document).on "ready", ->

  $("#contact-form").validate_sam
    rules:
      "fname":
        required: true
      "lname":
        required: true
      "phone":
        required: true
      "email":
        required: true
        email: true
      "confirmemail":
        required: true
        equalTo: "#email"
    messages:
      "confirmemail":
        equalTo:"This must be the same as the previous email"
