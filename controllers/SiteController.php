<?php

namespace app\controllers;

use app\models\History;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\controllers\ApiController;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
	    $access_token = 'efc73f65255e2b4d695f33b3684c1449aed343f60b8a42d29aff9f69259458598d9f4903ec36469f8b942';
	    $access_token_youtube = 'AIzaSyDq9g7EfYCwjLXo6Z0Dfrzs5LMXb_ZVaFY';
	    $model = new History();
	    $Api = new  ApiController;
	    if ($model->load(Yii::$app->request->post()) && $model->validate()) {
		    // данные в $model удачно проверены
		    $model->save();
		    if($model->type == "posts"){
			    $u_info = $Api->newsfeed_search($model->text, 10, 0, 5.12, $access_token);
			    for ($i = 0; $i < 10; $i++) {
				    $post_unfo[ $i ]["photo_604"] = $u_info->response->items[ $i ]->attachments[0]->photo->photo_604; //ссылка на картинку в посте
				    $post_unfo[ $i ]["text"] = $u_info->response->items[ $i ]->text; //текст записи
				    $post_unfo[ $i ]["id"] = $u_info->response->items[ $i ]->id; // Id поста
				    $post_unfo[ $i ]["owner_id"] = $u_info->response->items[ $i ]->owner_id; //Id группы или пользователя
				    $E = '_';
				
				    if ($post_unfo[ $i ]["owner_id"] > 0) {
					    $result = $Api->users_get($post_unfo[ $i ]["owner_id"], "photo_50", 5.52, $access_token);
					    $post_unfo[ $i ]["photo_50"] = $result->response[0]->photo_50;//фото пользователя
					    $post_unfo[ $i ]["name"] = $result->response[0]->first_name . " " . $result->response[0]->last_name;//ФИО
					    $post_unfo[ $i ]["owner_id"] = "id" . $u_info->response->items[ $i ]->owner_id;//Id группы или пользователя
				    } else {
					    $result = $Api->groups_getById($post_unfo[ $i ]["owner_id"], 5.63, $access_token);
					    $post_unfo[ $i ]["owner_id"] = "public" . abs($post_unfo[ $i ]["owner_id"]);//Id группы или пользователя
					    $post_unfo[ $i ]["photo_50"] = $result->response[0]->photo_50;//фото пользователя
					    $post_unfo[ $i ]["name"] = $result->response[0]->name;//ФИО
				    }
			    }
			    return $this->render('post', ['model' => $post_unfo]);
			
		    } else if($model->type == "video"){
			    $resultYoutube = $Api->video_search_youtube("snippet", 5, $model->text, "", $access_token_youtube);;
			    $resultVK =  $Api->video_search($model->text, 5, 0, $access_token);;
			
			    for ($i = 0; $i < 5; $i++) {
				    $url_video = $resultYoutube->items[$i]->id->videoId;
				    $post_unfo[ $i ]["url_video"] = 'https://www.youtube.com/embed/' . $url_video;
				
			    }
			    for ($i = 5; $i < 10; $i++) {
				    $post_unfo[ $i ]["url_video"] = $resultVK->response->items[$i-5]->player;
			    }
			
			    return $this->render('video', ['model' => $post_unfo]);
		    }
		    
		    
	    } else {
		    // либо страница отображается первый раз, либо есть ошибка в данных
		    return $this->render('index', ['model' => $model]);
	    }
    }
	
	
	public function actionCreate()
	{
		$model = new Post();
		
		if ($model->load(Yii::$app->request->post()) && $model->save()) {
			return $this->redirect(['view', 'id' => $model->id]);
			//return $this->redirect(['index']);
		} else {
			return $this->render('create', [
				'model' => $model,
			]);
		}
	}
 
}
