
draw_text(x+100,80,x);
draw_text(x+100,100,view_get_xport(0));

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);


layer_background_blend(back_id, merge_color(m_col[last_menu], m_col[menu_destination], abs(screen-menu_destination)));

