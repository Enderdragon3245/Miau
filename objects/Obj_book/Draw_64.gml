_x1 = display_get_gui_width()/2;
_y1 = display_get_gui_height()/2;


if keyboard_check_pressed(ord("E")){
	global.book = !global.book;
}
if(global.book){
	draw_sprite(Spr_book2,0,5,5);
	draw_sprite_ext(Spr_Inv_book,1,_x1,_y1,3,3,0,c_white,1);
	draw_sprite_ext(Spr_textbox,0, Obj_textbox1.x - 5, Obj_textbox1.y - 5, 0.5, 0.8, 0,c_white, 1);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	
	Obj_textbox1.x = _x1 - 40;
	Obj_textbox1.y = _y1 - 130;
	
	/*var _sprw = sprite_get_width(Spr_botao)/2;
	var _sprh = sprite_get_height(Spr_botao)/2;
	var x1 = (_x1 - 180) + _sprw;
	var y1 = (_y1 - 119) + _sprh;
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);

	if point_in_rectangle(_mx, _my, x1 - (_sprw+28), y1 - (_sprh+8), x1 + (_sprw+28), y1 + (_sprh+8)){
		balpha = 1;
		bscale = lerp(bscale, 2.2, 0.1);
	
		if mouse_check_button_pressed(mb_left){
			global.i = 1;
		}
	}else{
		bscale = lerp(bscale, 2, 0.08);
		balpha = .6;
	}
	draw_sprite_ext(Spr_botao, 0, x1, y1, bscale, bscale, 0, c_white, balpha);*/
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	var _sprw = sprite_get_width(Spr_botao)/2;
	var _sprh = sprite_get_height(Spr_botao)/2;
	var xbox = Obj_textbox1.x
	var ybox = Obj_textbox1.y
	
	if point_in_rectangle(_mx,_my,(xbox-170)-_sprw,(ybox-5)-_sprh*bscale,(xbox-110)+_sprw,(ybox-5)+_sprh*bscale){
		balpha = 1;
		bscale = lerp(bscale, 2.2, 0.1);
	
		if mouse_check_button_pressed(mb_left){
			bscale = lerp(bscale, 1, 0.1);
			global.i = 1;
		}
	}else{
		bscale = lerp(bscale, 2, 0.08);
		balpha = .6;
	}
	draw_sprite_ext(Spr_botao, 0, xbox - 140, ybox - 5, bscale, bscale, 0, c_white, balpha);
	draw_set_font(Font_Botao);
	draw_text(xbox - 140, ybox - 5, "Altura do Pulo");
	


}else{
	draw_sprite(Spr_book1,0,5,5);
	Obj_textbox1.x = _x1 - 1000;
	Obj_textbox1.y = _y1 - 1000;
}

