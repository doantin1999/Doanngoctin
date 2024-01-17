<?php
require_once ('../db/dbhelper.php');
$id ='';
if (isset($_GET['id'])) {
    $id      = $_GET['id'];
    $sql     = 'select * from product where id = '.$id;
    $product = executeSingleResult($sql);
}
if (!empty($_POST)) {
    if (isset($_POST['action'])) {
        $action = $_POST['action'];

        switch ($action) {
                case 'yes':
                if (isset($_POST['id'])) {
                    $id = $_POST['id'];
                   $sql = "INSERT INTO like1 (ok) SELECT code
FROM product";
                    execute($sql);

                }
                break;
        }
    }
}