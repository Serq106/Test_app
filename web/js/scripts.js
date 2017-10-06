function AjaxFormRequest(url_video, uid, type) {
    jQuery.ajax({
        url: "bd.php",
        type: "POST",
        data: {urls: url_video, id: uid, types: type},
        success: function (response) {
            alert(type);
        }
    });
}

function AjaxFormSignUp(email, ligin, password, copu_password) {
    jQuery.ajax({
        url: "/controller/SignUpController.php",
        type: "POST",
        data: {email: email, ligin: ligin, password: password, copu_password: copu_password},
        success: function (response) {
            alert(email);
        }
    });
}

function AjaxFormPost($id_user, $url_photo, $name, $id_post, $id_photo, $text, types, uid) {
    jQuery.ajax({
        url: "bd.php",
        type: "POST",
        data: {
            id_user: $id_user,
            url_photo: $url_photo,
            name: $name,
            id_post: $id_post,
            id_photo: $id_photo,
            texts: $text,
            types: types,
            uid: uid
        },
        success: function (response) {
            alert(types);
        }
    });
}

$(document).ready(function () {

    var inProgress = false;
    var startFrom = 10;

    $(window).scroll(function () {
        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 300 && !inProgress) {

            $.ajax({
                url: 'obrabotchik.php',
                method: 'POST',
                data: {"startFrom": startFrom},
                beforeSend: function () {
                    inProgress = true;
                }
                /* что нужно сделать по факту выполнения запроса */
            }).done(function (data) {

                data = jQuery.parseJSON(data);

                if (data.length > 0) {
                    $.each(data, function (index, data) {

                        /* Отбираем по идентификатору блок со статьями и дозаполняем его новыми данными */
                        if (data[0, 0] == "video")
                            $("#content").append("<div class='video'><div id='video12'><iframe src='" + data[1] + "' allowfullscreen='' frameborder='0'></iframe></div><input type='button' value='Добавить!' onclick=\"AjaxFormRequest('" + data[1] + "', '" + data[2] + "', '" + data[0] + "');\" ></div>");
                        else if (data[0, 0] == "post") {
                            $("#content").append("<a href='#openModal" + data[6] + "'><div class='post_grup'><div class='ava'><div class='top_logo'><img src='" + data[1] + "' class='photo'><span class='text'>" + data[2] + " <span><img src='https://img3.goodfon.ru/wallpaper/middle/f/2c/vk-vkontakte-logo-vk.jpg' class='logo'></div><div class='phost_photo'><img src='" + data[3] + "'></div><p>" + data[4] + "</p></div></div></a><div id='openModal" + data[6] + "' class='modalDialog'><div id='modalWindow' style='min-width: 300px;'>\t<a href='#' title='Закрыть' class='close'>X</a><div id='header_post'><img id='icon_group' src='" + data[1] + "' class='round'><div id='name_post'><a href='' id='people'>" + data[2] + "</a><br><a href='' id='date'>10.02.2017</a></div><button id='SubscribeBtn'>Subscribe</button></div><div id='content_text'><span class='orbit-caption' id='akin1'>" + data[4] + "</span></div>"+ data[7] +"<div id='connect_str'><a href='#' style='float: left;'><div><img id='like' src='img/like.png'> <span> Нравится  34</span></div></a><a href='#' style='margin-left: 20px; float: left;'><img id='repost' src='img/repost.png'> <span> Поделиться 4</span></a><a href='#' style='margin-left: 20px;'><span> Еще </span></a></div></div></div>");
                        } else if (data[0, 0] == "human") {
                            $("#content").append("<div class='user'><a href='https://vk.com/id" + data[1] + "'><div class='user_photo' ><img src='" + data[2] + "' style='display: inline-block;'><span class='unfo_user' style='position: absolute;'>" + data[3] + " " + data[4] + "<span></div></a></div>");
                        }
                        else if (data[0, 0] == "videoY") {
                            $("#content").append("<div class='video'><div id='video12'><iframe src='" + data[1] + "' allowfullscreen frameborder='0'></iframe></div><input type='button' value='Добавить!' onclick=\"AjaxFormRequest('" + data[1] + "', '" + data[2] + "', '" + data[0] + "');\" ></div>");
                        }

                    });

                    inProgress = false;
                    startFrom += 10

                }
            });
        }
    });
});
