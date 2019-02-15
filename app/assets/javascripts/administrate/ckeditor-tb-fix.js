$(document).bind('page:before-unload', function() {
  var instance, name, results;
  if (typeof CKEDITOR !== "undefined") {
    results = [];
    for (name in CKEDITOR.instances) {
      if (name != null) {
        instance = CKEDITOR.instances[name];
        if (instance != null) {
          $('#' + name).addClass('ckeditor-reinit');
          results.push(instance.destroy());
        } else {
          results.push(void 0);
        }
      } else {
        results.push(void 0);
      }
    }
    return results;
  }
});

$(document).bind('page:update', function() {
  return $('.ckeditor-reinit').each(function() {
    $(this).removeClass('ckeditor-reinit');
    return CKEDITOR.replace($(this).attr('id'));
  });
});