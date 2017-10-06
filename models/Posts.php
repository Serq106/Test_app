<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "posts".
 *
 * @property integer $id_posts
 * @property string $id_post
 * @property string $id_user
 * @property string $id_photo
 * @property string $texts
 * @property string $url_photo
 * @property string $name
 *
 * @property UserPost[] $userPosts
 */
class Posts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'posts';
    }

    /**
     * @inheritdoc
     */


    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_posts' => 'Id Posts',
            'id_post' => 'Id Post',
            'id_user' => 'Id User',
            'id_photo' => 'Id Photo',
            'texts' => 'Texts',
            'url_photo' => 'Url Photo',
            'name' => 'Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserPosts()
    {
        return $this->hasMany(UserPost::className(), ['id_post' => 'id_posts']);
    }
}
