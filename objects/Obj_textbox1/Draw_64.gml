_x1 = display_get_gui_width()/2;
_y1 = display_get_gui_height()/2;

if(global.book == true){
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x - 6, y - 5,global.text1);
}else{

}