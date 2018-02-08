(function() {
  var RichEditor = function() {
    this.show = function() {
      renderEditors(findTextAreas());
    };

    var findTextAreas = function() {
      return document.querySelectorAll("textarea[data-rich-editor='true']");
    }

    var renderEditors = function(inputFields) {
      for (i = 0; i < inputFields.length; i++) {
        CKEDITOR.replace(inputFields[i].getAttribute("id"));
      }
    }
  };

  document.addEventListener("DOMContentLoaded", function() {
    new RichEditor().show()
  });
})();
