if global.book = true and string_length(global.text1)<=4{
	global.text1 += string_digits(keyboard_string);
	keyboard_string="";
}
if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and deleter_time = 2 and global.book){
		global.text1 = string_delete(global.text1,string_length(global.text1),1);
		deleter_time = 0;
		keyboard_string = "";
}if (keyboard_check_pressed(vk_backspace)and global.book){
		global.text1 = string_delete(global.text1,string_length(global.text1),1);
		deleter_time = -4;
		keyboard_string = "";
}if deleter_time != 2{
		deleter_time++;
	}
else{
	keyboard_string="";
}

