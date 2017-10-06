<?php
	use yii\helpers\Html;
	use yii\widgets\ActiveForm;
?>

<?php
	
	/* @var $this yii\web\View */
	
	$this->title = 'My Yii Application';
?>
<div class="select">

    <div class="jumbotron ">
        <div class="row">
            <p>Поисковик</p>
            <?php $form = ActiveForm::begin(); ?>
            <div class="col-lg-2">
                <?=$form->field( $model, 'type' )->radioList(['video' => 'видео', 'posts' => 'пост'], [
                    'id' => 'blog_type',
                    'class' => 'btn-group',
                    'data-toggle' => 'buttons',
                    'label' => '',
                    'unselect' => null,
                    'item' => function ($index, $label, $name, $checked, $value) {
                        return '<label class="btn btn-primary' . ($checked ? ' active' : '') . '">' .
                            Html::radio($name, $checked, ['value' => $value, 'class' => 'project-status-btn']) . $label . '</label>';
                    },
                ])->label(false);
                ?>
            </div>

            <div class="col-lg-6">
		        <?= $form->field($model, 'text')->textInput(['maxlength' => true, 'placeholder'=>'введите # или слово'])->label(false) ?>
            </div>
            <div class="col-lg-4">
		        <?= Html::submitButton('Отправить', ['class' => 'btn btn-lg btn-success']) ?>
            </div>
	
	
	        <?php ActiveForm::end(); ?>
        </div>

    </div>
</div>