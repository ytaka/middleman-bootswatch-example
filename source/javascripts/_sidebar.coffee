isBreakpoint = (alias) ->
  $(".device-" + alias).is(":visible")

$ ->
  if isBreakpoint("md") || isBreakpoint("lg")
    sidebar = $("#sidebar")
    sidebar.attr {
      "data-spy": "affix",
      "data-offset-top": 100,
      "data-offset-bottom": 100
    }
    sidebar.affix({
      offset:
        top: 100,
        bottom: () ->
          (this.bottom = $("#footer").outerHeight(true))
    })
    # For affix of #sidebar
    sidebar.width(sidebar.parent().width())
