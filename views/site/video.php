<?php
	use yii\helpers\Html;

?>"

<div id="res">
	<div id="content">
		<?php
			for ($i = 0; $i < 10; $i++){
				print ("
					<div >
	                    <div class='video' >
	                        <div id='video12'>
	                            <iframe src=" .$model[$i]["url_video"].  " frameborder='0' allowfullscreen></iframe>
	                        </div>
	                    </div>
	                </div>
				");
			}
		?>
		
	</div>
</div>