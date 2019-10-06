#region Animation
spr_dir = point_direction(xprevious,yprevious,x,y)
// 0
if ((spr_dir > 337.5 && spr_dir < 360) || (spr_dir > 0 && spr_dir < 22.5))  sprite_index = global.decoySprite_0;
// 45
if (spr_dir > 22.5  && spr_dir < 67.5)  sprite_index = global.decoySprite_45;
// 90
if (spr_dir > 67.5  && spr_dir < 112.5) sprite_index = global.decoySprite_90;
// 135
if (spr_dir > 112.5 && spr_dir < 157.5) sprite_index = global.decoySprite_135;
// 180
if (spr_dir > 157.5 && spr_dir < 202.5) sprite_index = global.decoySprite_180;
// 225
if (spr_dir > 202.5 && spr_dir < 247.5) sprite_index = global.decoySprite_225;
// 270
if (spr_dir > 247.5 && spr_dir < 292.5) sprite_index = global.decoySprite_270;
// 315
if (spr_dir > 292.5 && spr_dir < 337.5) sprite_index = global.decoySprite_315;
#endregion