#define mover
/// mover!
/**

    A mover is a bouncy thing that also moves.

*/

#define mover_set_bounce_scale
/// mover_set_bounce_scale(scale);
// Set scale. Applies to self.

if (_bounce_scale == 0) {
    // Assert bounce scale exists
}

_bounce_scale = argument0;

#define mover_set_bounce_speed
/// mover_set_bounce_speed(speed);
// Set speed. Applies to self.

if (_bounce_speed == 0) {
    // Assert bounce speed exists
}

_bounce_speed = argument0;

#define mover_get_bounce_scale
/// mover_get_bounce_scale()
return _bounce_scale;

#define mover_get_bounce_speed
/// mover_get_bounce_speed()
return _bounce_speed;

#define mover_reset_bounce
/// mover_reset_bounce();
// Starts the bounce from zero

_bounce_index = 0;

#define mover_get_bounce_progress
/// mover_get_bounce_progress();
return _bounce_index / _bounce_period;
