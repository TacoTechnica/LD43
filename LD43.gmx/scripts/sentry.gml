#define sentry
/// Sentry!


#define sentry_random_target_near_player
/// sentry_random_target_near_player();

// Sets a random target near the last player position

if !instance_exists(objPlayer) return 0;

// How far to deviate from move target pos
// In blocks (multiply by 16 later)
var minR = 5;// * 16;
var maxR = 10;// * 16;

var center_x = objPlayer.x;
var center_y = objPlayer.y;

var new_x = center_x;
var new_y = center_y;

do {
    var delta = maxR - minR;
    var plus = 2*random(delta) - delta;
    new_x = center_x + floor(sign(plus)*minR + plus)*16;
    var plus = 2*random(delta) - delta;
    new_y = center_y + floor(sign(plus)*minR + plus)*16;
} until (mp_grid_path(objGrid._grid, _path, x, y, new_x, new_y, true));

_move_target_x = new_x;
_move_target_y = new_y;
