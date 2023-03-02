// jQuery & Select2 enhnce appearance and functionality of the dropdowns

// code waits for loaded page and then initializes select2 plugin
$(document).ready(function() {
  $('.select2').select2({
    // bootsrap 4 is applied to the theme option of the dropdown
    theme: 'bootstrap4'
  });
});
