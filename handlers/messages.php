<?php
    session_start();
    require '../config.php';

    switch($_REQUEST["action"]) {
        case "sendMessage":
            $query = $db->prepare("INSERT INTO message(user, text) VALUES(?,?)");
            $query->execute([$_SESSION['username'], $_REQUEST["message"]]);
        break;

        case "getMessages":
            $query = $db->prepare("SELECT * FROM message");
            $run = $query->execute();
            $res = $query->fetchAll(PDO::FETCH_OBJ);

            $chat = '';
            foreach($res as $msg) {
                $chat .= '<div class="single-message">
                            <strong>'.$msg->user.': &nbsp;</strong>'.$msg->text.'<span class="date">'
                            .date('m-d-Y h:i a', strtotime($msg->date)).'</span></div>'; 
            }

            echo $chat;

            

        break;
    }

?>