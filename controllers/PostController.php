<?php
	/**
	 * Created by PhpStorm.
	 * User: Sten
	 * Date: 15.09.2017
	 * Time: 16:46
	 */
	
	namespace app\controllers;
	use app\models\Post;
	use yii\web\HttpException;
	use app\controllers\ApiController;
	
	class PostController extends AppController{
		
		public function actionIndex()
		{
			$posts = Post::find()->select('id, title, excerpt')->all();
			return $this->render('index', compact('posts'));
			/*$hello = 'hello';
			return $this->render('index',['hello' => $hello]);*/
		}
		
		public function actionView()
		{
			$id = \Yii::$app->request->get('id');
			$post = Post::findOne($id);
			if(empty($post)) throw new HttpException(404, 'Такой странице нету');
			return $this->render('view', compact('post'));
		}
		
		public function actionTest()
		{
			return $this->render('test');
		}
	}