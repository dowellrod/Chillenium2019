#region Movement
global.INPUT_UP    = keyboard_check(vk_up);
global.INPUT_DOWN  = keyboard_check(vk_down);
global.INPUT_RIGHT = keyboard_check(vk_right);
global.INPUT_LEFT  = keyboard_check(vk_left);
#endregion

#region Paths
global.CURRENT_DECOY = 0; // default is 0 - this is updated in Player_Move

// initialize list of obj_decoys
global.DECOY_LIST[0] = obj_decoy0;
global.DECOY_LIST[1] = obj_decoy1;
global.DECOY_LIST[2] = obj_decoy2;
global.DECOY_LIST[3] = obj_decoy3;

global.INPUT_PATH[0] = keyboard_check(ord("0"));
global.INPUT_PATH[1] = keyboard_check(ord("1"));
global.INPUT_PATH[2] = keyboard_check(ord("2"));
global.INPUT_PATH[3] = keyboard_check(ord("3"));

global.pathLength = 4;
#endregion

#region Tech

global.INPUT_ESCAPE = keyboard_check_released(vk_escape);

#endregion