<?php 
	$rr=get_the_category( $id )[1]->name;
?>
<div class="container-fluid banner <?php echo $rr;?>">
	<div class="row">
		<div class="container">
			<div class="col-md-12">
				<?php $the_query = new WP_Query( array(
			      'posts_per_page' => 1,
			      'order' => 'DESC',
			   )); 
			?>
			<?php if ( $the_query->have_posts() ) : ?>
			  <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
			  	<div class="col-md-12 no-padding">
			  		<div class="top">
						<div class="btn_bg">
							<?php echo '<p> #'. get_the_category( $id )[0]->name .'</p>';?>
						</div>
						<div class="tag">	
							<?php the_tags('');?>
						</div>
					</div>
				</div>
				<div class="col-sm-12 no-padding bottom">
				  	<div class="col-sm-7 no-padding featured-image">
						<?php the_post_thumbnail(); ?>	
					</div>
					<div class="col-sm-5 no-padding">
						<div class="featured-content">
							<div class="featured-date">	
								<i class="far fa-clock"></i> <?php echo get_the_date("Y-m-d"); ?>
							</div>
							<div class="title"><?php the_title();?></div><hr>
							<?php the_content('<span class="more-button">READ MORE</span>'); ?>
						</div>
					</div>
				</div>
			  <?php endwhile; ?>
			  <?php wp_reset_postdata(); ?>
			<?php endif; ?>
			</div>
		</div>
	</div>
</div>