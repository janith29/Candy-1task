<div class="container-fluid footer-top">
	<?php get_template_part( 'partials/footer', 'widgets' ); ?>
</div>


<div class="container-fluid footer-bottom">
	<div class="row">
		<div class="container">	
			<div class="col-md-12">
				<p><?php echo date("Y"); ?> <a class="site-name" href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>	
			</div>				
		</div>
	</div>
</div>


<?php wp_footer(); ?>
    </body>
</html>