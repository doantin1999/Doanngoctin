<?php
require_once ('../../db/dbhelper.php');

if (!empty($_POST)) {
    if (isset($_POST['action'])) {
        $action = $_POST['action'];

        switch ($action) {
            case 'delete':
                if (isset($_POST['id'])) {
                    $id = $_POST['id'];
                    $sql = 'insert into cancel SELECT * from loginstudent1 where id='.$id;
                    $sql1 = 'delete from loginstudent1 where id = '.$id;
                    execute($sql);
                    execute($sql1);
                }
                case 'yes':
                if (isset($_POST['id'])) {
                    $id = $_POST['id'];
                    $sql = 'insert into loginstudent1 SELECT * from loginstudent where id='.$id;
                    $sql1 = 'delete from loginstudent where id = '.$id;
                    execute($sql);
                    execute($sql1);
                }
                break;
        }
    }
}