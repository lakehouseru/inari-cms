$(document).bind 'page:before-unload', ->
  if typeof(CKEDITOR) != "undefined"
    for name of CKEDITOR.instances
      if name?
        instance = CKEDITOR.instances[name]
        if instance? 
          $('#' + name).addClass('ckeditor-reinit')
          instance.destroy()

$(document).bind 'page:update', ->
  $('.ckeditor-reinit').each ->
    $(this).removeClass('ckeditor-reinit')
    CKEDITOR.replace($(this).attr('id'))