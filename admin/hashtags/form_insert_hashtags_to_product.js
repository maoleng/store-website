$(document).ready(function() {
	$("form").keypress(function(event) {
		if ( event.keyCode === 13 ) {
			event.preventDefault()
		}
	})
	var types = new Bloodhound({
		datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
		queryTokenizer: Bloodhound.tokenizers.whitespace,
		remote: {
			url: 'list_type.php?q=%QUERY',
			wildcard: '%QUERY'
		}
	})
	types.initialize();

	$('#type').tagsinput({
		typeaheadjs: {
			displayKey: 'name',
			valueKey: 'name',
			source: types.ttAdapter()
		}
	})

})