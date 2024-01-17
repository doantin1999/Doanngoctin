<?php
require_once ('../../db/dbhelper.php');

if (!empty($_POST)) {
    if (isset($_POST['action'])) {
        $action = $_POST['action'];

        switch ($action) {
            case 'delete':
                if (isset($_POST['id'])) {
                    $id = $_POST['id'];
                    $sql = 'insert into cancel SELECT id, name, email, phone, address, pmode, products, amount_paid, created_at from orders1 where id='.$id;
                    $sql1 = 'delete from orders1 where id = '.$id;
                    execute($sql);
                    execute($sql1);
                }
                case 'yes':
                if (isset($_POST['id'])) {
                    $id = $_POST['id'];
                    $sql = 'insert into orders1 SELECT id, name, email, phone, address, pmode, products, amount_paid, created_at from orders where id='.$id;
                    $sql1 = 'delete from orders where id = '.$id;
                    execute($sql);
                    execute($sql1);
                }
                break;
        }
    }
}