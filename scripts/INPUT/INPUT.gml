#region Movement
global.INPUT_UP    = keyboard_check(vk_up);
global.INPUT_DOWN  = keyboard_check(vk_down);
global.INPUT_RIGHT = keyboard_check(vk_right);
global.INPUT_LEFT  = keyboard_check(vk_left);
#endregion

#region Paths
global.INPUT_PATH[0] = keyboard_check(ord("0"));
global.INPUT_PATH[1] = keyboard_check(ord("1"));
global.INPUT_PATH[2] = keyboard_check(ord("2"));
global.INPUT_PATH[3] = keyboard_check(ord("3"));
global.INPUT_PATH[4] = keyboard_check(ord("4"));
global.INPUT_PATH[5] = keyboard_check(ord("5"));
global.INPUT_PATH[6] = keyboard_check(ord("6"));
global.INPUT_PATH[7] = keyboard_check(ord("7"));
global.INPUT_PATH[8] = keyboard_check(ord("8"));
global.INPUT_PATH[9] = keyboard_check(ord("9"));
// Change this if we change the path length (Very Important!)
global.pathLength = 10;
#endregion

#region Tech
global.INPUT_ESCAPE = keyboard_check_released(vk_escape);


#endregion