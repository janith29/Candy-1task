<?php 
	$rr=get_the_category( $id )[0]->name;
	$r=get_the_category( $id )[1]->name;
?>
<div class="col-sm-6 col-md-4 post-section <?=$r;?>">
	<div class="col-md-12 no-padding">
		<div class="top <?php if($rr=='Candy factory News'){ echo "color";}?>">
			<div class="btn_bg">
				<?php echo '<p> #'. get_the_category( $id )[0]->name .'</p>';?>
			</div>
			<div class="tag">	
				<?php the_tags('');?>
			</div>
		</div>
	</div>
	<div class="featured-news-wrapper <?php echo $rr;?>">
		<div class="col-sm-12 no-padding featured-image">
			<?php the_post_thumbnail(); ?>	
		</div>
		<div class="col-sm-12 no-padding">
			<div class="featured-content">
				<div class="featured-date">	
					<i class="far fa-clock"></i> <?php echo get_the_date("Y-m-d"); ?>
				</div>
				<div class="title"><?php the_title();?></div><hr>
				<?php the_content('<span class="more-button">READ MORE</span>'); ?>
			</div>
		</div>
	</div>
</div>

