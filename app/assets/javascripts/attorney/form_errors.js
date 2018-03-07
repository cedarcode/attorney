(function() {
  var FormErrors = function() {
    this.render = function() {
      form().find('.field_with_errors input').addClass('is-invalid');
    };

    var form = function() {
      return $("form[data-style-form-errors='true']");
    };
  };

  $(document).ready(function() { new FormErrors().render() });
})();
