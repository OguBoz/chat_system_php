<?php
    session_start();
    $_SESSION["username"] = "Oguz Bozkurt";
    require 'config.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Application</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="wrapper">
        <div class="chat-wrapper">
            <div id="chat">
            </div>
            <form method="post">
                    <textarea name="message" cols="30" rows="10" class="textarea"></textarea>
                </form>
        </div>
    </div>

    <script
        src="https://code.jquery.com/jquery-3.5.0.js"
        integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc="
        crossorigin="anonymous">
    </script>
    <script>
        $(document).ready(function() {
            $(".textarea").keyup(function(e) {
                if(e.which == 13) {
                    $('form').submit();
                }  
            });


             

            setInterval(getMessages, 1000);

            function getMessages() {
                $.post("handlers/messages.php?action=getMessages", function(response){
                    // This below is the message of the other person in case I do it later
                    // <div class="single-message-right"><strong>oguz: &nbsp;</strong>hello there<span class="date">05-234-242</span></div>
                    var scrollpos = $("#chat").scrollTop();
                    var scrollpos = parseInt(scrollpos) + 520;
                    var scrollHeight = $("#chat").prop("scrollHeight");
                    $("#chat").html(response);

                    if(scrollpos < scrollHeight) {

                    } else {
                        $("#chat").scrollTop($("#chat").prop("scrollHeight"));
                    }

                });
            }

            $("form").submit(function(e) {
                e.preventDefault();
                message = $(".textarea").val();

                $.post("handlers/messages.php?action=sendMessage&message=" + message, function(response){
                    getMessages();
                });
            });

            
        });

    </script>
</body>
</html>