<?php 
require '../connect_database.php';
$sql_select_last_id_activity = "
	SELECT id from activities 
	ORDER BY id DESC
	LIMIT 1
";
$last_activity_id = mysqli_fetch_array(mysqli_query($connect_database, $sql_select_last_id_activity))['id'];
$activity_id = $last_activity_id + 1;
$sql_insert_activities = "
	INSERT INTO activities(id,admin_id, activity, object, object_name)
	VALUES('$activity_id', '$admin_id', '$activity', '$object', '$object_name')
";

mysqli_query($connect_database, $sql_insert_activities);