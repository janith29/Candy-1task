<?php

	if (have_rows('layout_options'))
	{
		while (have_rows('layout_options'))
		{
			the_row();

			switch (get_row_layout())
			{
				case 'two_column_layout':
					get_template_part('partials/two_column_layout');
					break;
				case 'services':
					get_template_part('partials/services');
					break;
				case 'background_image_with_half_text_layout':
					get_template_part('partials/background_image_with_half_text_layout');
					break;
				case 'our_rooms':
					get_template_part('partials/our_rooms');
					break;
				case 'testimonials':
					get_template_part('partials/testimonials');
					break;	
				case 'our_rooms_on_page':
					get_template_part('partials/our_rooms_on_page');
					break;
				case 'facilities_list':
					get_template_part('partials/facilities_list');
					break;
				case 'services_list':
					get_template_part('partials/services_list');
					break;
				case 'three_column_text_layout':
					get_template_part('partials/three_column_text_layout');
					break;
				case 'four_column_layout':
					get_template_part('partials/four_column_layout');
					break;
				case 'menus':
					get_template_part('partials/menus');
					break;							
				default:
					echo "Unknown Layout";
					break;
			}
		}
	}

?>
