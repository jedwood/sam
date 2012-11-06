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
