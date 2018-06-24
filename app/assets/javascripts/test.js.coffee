$ ->
  $(document).on 'change', '#types_select', (evt) ->
    $.ajax 'update_smalltypes',
      type: 'GET'
      dataType: 'script'
      data: {
        type_id: $("#types_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic type select OK!")
