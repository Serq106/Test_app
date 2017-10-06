<?php
	use yii\helpers\Html;

?>"

<div id="res">
    <div id="content">

        <?php for ($i = 0; $i < 10; $i++) {
            print("
                <a href='#openModal$i'>
                    <div class='post_grup'>
                        ".$this->render('_window_post', [
                            'model' => $model,
                            'i' => $i,
                        ])."
                    </div>
                </a>
                <div id='openModal$i' class='modalDialog'>
                    <div id='modalWindow' style='min-width: 300px;'>
                        <a href='#' title='Закрыть' class='close'>X</a>
                           <div id='header_post'>
                                        <img id='icon_group' src=" .$model[$i]["photo_50"].  " class='round'>
                                            <div id='name_post'>
                                                <a href='#' id='people'>" . $model[$i]["name"] . "</a><br>
                                                <a href='#' id='date'>10.02.2017</a>
                                            </div>
                                         <p>" . $model[$i]["owner_id"] . "</p>
                                        <input type='button' value='Добавить!' onclick=\"AjaxFormPost('$model[$i][\"owner_id\"]', '$model[$i][\"photo_50\"]', '$model[$i][\"name\"]', '$model[$i][\"id\"]', '$model[$i][\"owner_id\"]', '$model[$i][\"text\"]', 'posts', '107940536');\" >
                                        <button id='SubscribeBtn'>Subscribe</button>
                                    </div>
                                    <div id='content_text'>
                                        <span class='orbit-caption' id='akin1'>" . $model[$i]["text"] . "</span>
                                    </div>
                                   
                                    <div id='connect_str'>
                                        <a href='#' style='float: left;'>
                                            <div>
                                                <img id='like' src='img/like.png'> <span> Нравится  34</span>
                                            </div>
                                        </a>
                                        <a href='#' style='margin-left: 20px; float: left;'>
                                            <img id='repost' src='img/repost.png'> <span> Поделиться 4</span>
                                        </a>
                                        <a href='#' style='margin-left: 20px;'>
                                            <span> Еще </span>
                                        </a>
                                    </div>
                    </div>
                </div>
             ");
        } ?>
        
    </div >
</div>

