<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "history".
 *
 * @property integer $id_history
 * @property string $text
 * @property string $type
 * @property integer $uid
 */
class History extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'history';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['uid'], 'integer'],
            [['text'], 'string', 'max' => 100],
            [['type'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_history' => 'Id History',
            'text' => 'Text',
            'type' => 'Type',
            'uid' => 'Uid',
        ];
    }
}
