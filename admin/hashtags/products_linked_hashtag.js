$(document).ready(function() {
	$("#form-search").submit(function(event) {
		event.preventDefault()
		var content_search = $("#input-search").val()
		var header = "products_linked_hashtag.php?id=<?php echo $id ?>&search=" + content_search
		window.location = header
	})
})