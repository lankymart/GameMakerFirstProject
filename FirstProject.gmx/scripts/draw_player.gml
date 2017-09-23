///draw_player(move)
var sprite;
var index;
var xscale;
switch (argument[0]) {
    case 0:
        if (key_down)
        {
            sprite = spr_mario_small_duck;
            index = image_index;
        }
        else
        {
            sprite = spr_mario_small_walk;
            index = 0
        }
        xscale = dir;
        break;
    case 1:
        sprite = spr_mario_small_walk;
        index = image_index;
        dir = move;
        xscale = move;
        break;
    case -1:
        sprite = spr_mario_small_walk;
        index = image_index;
        dir = move;
        xscale = move;
        break; 
}
if (jumping)
{
    sprite = spr_mario_small_jump;
    if (vsp >= terminal_velocity)
    {
        index = 1;
    }
    else
    {
        index = 0;
    }
}
draw_sprite_ext(sprite, index, round(x), y, xscale, 1, 0, c_white, 1);
