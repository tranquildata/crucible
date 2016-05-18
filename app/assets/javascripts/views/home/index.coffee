$(window).on('load', ->
  new Crucible.Home()
)

class Crucible.Home

  constructor: ->
    @element = $('#new-server-form')
    return unless @element.length
    jQuery.validator.addMethod("standardPort", (value, element) -> 
      url = $('<a/>').get(0)
      url.href = element.value
      port = port = url.port || (if url.protocol == 'https:' then '443' else '80');
      ["8080", "80", "443"].indexOf(port) > 0
    , "Crucible can only test servers on standard ports (80, 8080, 443)");
    @registerHandlers()


  registerHandlers: =>
    @element.validate(
      rules: 
        "server[url]": 
          required: true
          url: true
          standardPort: true
    )

