<?php
require_once ('../../db/dbhelper.php');

if (!empty($_POST)) {
	if (isset($_POST['action'])) {
		$action = $_POST['action'];

		switch ($action) {
			case 'delete':
				if (isset($_POST['review_id'])) {
					$id = $_POST['review_id'];

					$sql = 'delete from review_table1 where review_id = '.$id;
					execute($sql);
				}
				break;
		}
	}
}