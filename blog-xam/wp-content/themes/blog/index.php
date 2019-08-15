<?php
get_header(); ?>

<section class="container-fluid blog-section-full">
	<div class="row">
        <div class="container blog-section">
			<?php if (have_posts()){
                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                $args = array( 'paged' => $paged, 'posts_per_page' => 19,'orderby' => 'DESC' );
                $loop = new WP_Query( $args );
                    while (have_posts()){
                        the_post();
                        get_template_part('partials/featured-news-wrapper');  
                    } ?>
                <div class="col-md-12 no-padding">
                    <div class="w_pagination">
                        <i class="fas fa-angle-left"></i> <?php pagination(); ?> <i class="fas fa-angle-right"></i>
                    </div>
                </div>
                <?php wp_reset_query(); ?>
            <?php } ?>
		</div>		
	</div>
</section>
	
<?php get_footer(); ?>