<?php get_header(); 
	$rr=get_the_category( $id )[0]->name;
?>
<div class="container-fluid blog_single_page">
	<div class="row">	 			
	    <div class="container <?php if($rr=='Candy factory News'){ echo "top-story";}?>">
	    	<div class="col-md-12 no-padding top">
	    		<div class="btn_bg">
					<?php echo '<p> #'. get_the_category( $id )[0]->name .'</p>';?>
				</div>
				<div class="title"><?php the_title();?></div>
	    	</div>
	    	<div class="col-md-12 no-padding date">	
				<i class="far fa-clock"></i> <?php echo get_the_date("Y-m-d"); ?> in <a href="<?php echo site_url(); ?>" class="single-blog">BLOG</a>
			</div>
			<hr>
			<div class="col-sm-12 no-padding featured-image">
				<?php the_post_thumbnail(); ?>	
			</div>
			<div class="col-sm-12 no-padding single-title">
				<div class="title"><?php the_title();?></div><hr>
			</div>
			<?php if ( have_posts() ) : while ( have_posts() ) : the_post();
				the_content();
				endwhile; else: ?>
				<p>Sorry, no posts matched your criteria.</p>
			<?php endif; ?>	
			<div class="col-md-12 no-padding share">	
				<h3>SHARE THIS POST</h3>
				<a href=""><i class="fab fa-facebook-f"></i></a>
				<a href=""><i class="fab fa-twitter"></i></i></a>
			</div>
		<div class="back-page">Back to the <a href="<?php echo site_url(); ?>" class="single-blog">BLOG</a></div>
		</div>			    
	</div>
</div>

   
<?php get_footer(); ?>