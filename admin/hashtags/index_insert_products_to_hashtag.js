$(document).ready(function() {
	$("#form-search").submit(function(event) {
		event.preventDefault()
		var content_search = $("#input-search").val()
		var header = "index_insert_products_to_hashtag.php?type_id=<?php echo $type_id ?>&search=" + content_search
		window.location = header
	})
})