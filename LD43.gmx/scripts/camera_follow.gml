#define camera_follow
/// camera_follow(x, y);

var target_x = argument0 - view_wview/2;
var target_y = argument1 - view_hview/2;

// Shake
target_x += (random(1) - 0.5) * Gamestate._camera_shake;
target_y += (random(1) - 0.5) * Gamestate._camera_shake;
//view_angle = (random(1) - 0.5) * 0.3 * Gamestate._camera_shake;
Gamestate._camera_shake *= 0.8;

// Actually do the asymptotic smoothing
var scale = 0.2;
view_xview += (target_x - view_xview) * scale;
view_yview += (target_y - view_yview) * scale;

// Clamp
if (room_width > view_wview) {
    view_xview = clamp(view_xview, 0, room_width - view_wview);
} else {
    view_xview = room_width/2 - view_wview/2;
}
if (room_height > view_hview) {
    view_yview = clamp(view_yview, 0, room_height - view_hview);
} else {
    view_yview = room_height/2 - view_hview/2;
}

#define camera_shake_set_impulse
/// camera_shake_set_impulse(impulse);

Gamestate._camera_shake = argument0;
