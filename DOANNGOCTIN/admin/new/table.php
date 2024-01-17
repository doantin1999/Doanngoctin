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
                case 'yes':
                if (isset($_POST['review_id'])) {
                    $id = $_POST['review_id'];
                    $sql = 'insert into review_table1 SELECT review_id, user_avatar, user_name, user_rating, user_review, image, email, datetime, email, datetime from review_table where review_id='.$id;
                    $sql1 = 'delete from review_table where review_id = '.$id;
                    execute($sql);
                    execute($sql1);
                }
                break;
        }
    }
}