# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('#new_flag').validate
		rules: {
			'flag[title]': "required"
			'flag[email]': 'required'
			'message[subject]': 'required'
			'message[body]': 'required'
		} 
		submitHandler: (form) ->
			$.post(
				$(form).attr('action')
				$(form).serialize()
				(data, textStatus, jqXHR) ->
					if textStatus is 'success'
						alert 'enviado com sucesso'
					else
						alert 'tente novamente mais tarde'
				)

	$.validator.messages.required = "Campo obrigatório";