

function hideWhenClicked(e) {
  $(e.target).hide();
}

$('#hide_this').on('click',hideWhenClicked);