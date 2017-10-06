<?php
	use yii\helpers\Html;

?>"

<?php
    print ("
        <div class='post_grup'>
            <div class='ava'>
                
                <div class='top_logo'>
                    <img src=" .$model[$i]["photo_50"]." class='photo'>
                    <span class='text'>" . $model[$i]["name"] . "<span>
                    <img src='https://img3.goodfon.ru/wallpaper/middle/f/2c/vk-vkontakte-logo-vk.jpg' class='logo'>
                </div>
        
                <div class='phost_photo'>
                    <img src='".$model[$i]["photo_604"]. "'>
                </div>
                
                <p>". $model[$i]["text"] ."</p>
                
            </div>
        </div>
    ");
?>
