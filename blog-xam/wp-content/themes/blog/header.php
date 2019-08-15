<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en">
  <head>
   <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <!--<meta name="format-detection" content="telephone=no">-->
    <title><?php is_front_page() ? bloginfo('description') : wp_title(''); ?> | <?php bloginfo('name'); ?></title>
    <link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/public/images/favicon.png" />
    <?php wp_head(); ?>
	
  </head>
 <body <?php body_class(); ?>>

<div class="container-fluid header">
	<div class="row">
		<div class="container">
			<div class="col-sm-12 no-padding menu_slip_bottom">
				<div class="search-custom">
					<i class="fas fa-home"></i><?php get_search_form(); ?>
				</div>
				<div class="blog"><a href="<?php echo site_url(); ?>">BLOG</a></div>
			</div>
		</div>
	</div>
</div>
<?php if (!is_singular('post')) {
  get_template_part('partials/hero-banner'); ?>


<div class="container-fluid catogory-section">
	<div class="row">
		<div class="container">
			 <div class="col-md-12">
			 	Filter :
			 	<select name="event-dropdown" onchange='document.location.href=this.options[this.selectedIndex].value;'> 
				    <?php 
				        $option = '<option value="' . get_option('home') . '/category/">All Categories</option>'; // change category to your custom page slug
				        $categories = get_categories(); 
				        foreach ($categories as $category) {
				            $option .= '<option value="'.get_option('home').'/category/'.$category->slug.'">';
				            $option .= $category->cat_name;
				            $option .= ' ('.$category->category_count.')';
				            $option .= '</option>';
				        }
				        echo $option;
				    ?>
				</select>
				<a href="/category/candy-factory-news/">Candy Factory News</a>
			</div> 

		</div>
	</div>
</div>

<?php }?>


 
  








