INPUT();
// Go to previous room
if (global.INPUT_SPACE || global.INPUT_ENTER) room = ds_stack_pop(global.roomStack);
