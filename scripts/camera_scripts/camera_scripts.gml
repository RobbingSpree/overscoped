// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_setup(){
	application_surface_enable(false);
	// game_width, game_height are your base resolution (ideally constants)
	game_width = camera_get_view_width(view_camera[0]);
	game_height = camera_get_view_height(view_camera[0]);
	// in GMS1, set view_wview and view_hview instead
	camera_set_view_size(view_camera[0], game_width + 1, game_height + 1);
	display_set_gui_size(game_width, game_height);
	view_surf = -1;
}

function camera_cleanup() {
	if (surface_exists(view_surf)) {
	    surface_free(view_surf);
	    view_surf = -1;
	}
}

function camera_update() {
	// in GMS1, set view_xview and view_yview instead
	camera_set_view_pos(view_camera[0], floor(x), floor(y));
	if (!surface_exists(view_surf)) {
	    view_surf = surface_create(game_width + 1, game_height + 1);
	}
	view_surface_id[0] = view_surf;	
}