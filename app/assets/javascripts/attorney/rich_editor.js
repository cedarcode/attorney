(function() {
  var RichEditor = function() {
    this.show = function() {
      renderEditors(findTextAreas());
    };

    var findTextAreas = function() {
      return $("textarea[data-rich-editor='true']")
    };

    var renderEditors = function($inputFields) {
      $inputFields.each(function(index, inputField) {
        CKEDITOR.replace(inputField.getAttribute("id"));
      });
    };
  };

  $(document).ready(function() { new RichEditor().show() });
})();
