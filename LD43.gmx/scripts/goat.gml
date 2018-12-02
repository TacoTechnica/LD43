#define goat
/// goat!

#define goat_choose_random_move_dir
/// goat_choose_random_move_dir()

// Called within goat
// Chooses a random direction to move in, making sure we don't move into any walls.

var counter = 0;
do {
    _move_dir = random(360);
    counter++;
} until 
    !collision_line(x, y, x + lengthdir_x(10, _move_dir), y + lengthdir_y(10, _move_dir), objCollision, false, true)
    || counter >= 20;


#define goat_set_alert
/// goat_set_alert()
_state = GOAT_STATE.FLEEING;

if !instance_exists(objPlayer) return 0;

// Flee from player
var player_dir = point_direction(objPlayer.x, objPlayer.y, x, y);
_move_dir = player_dir;

// In case if player dir doesn't work:
/*
var counter = 0;
do {
    _move_dir = player_dir + random(180) - 90;
    counter++;
} until 
    !collision_line(x, y, x + lengthdir_x(10, _move_dir), y + lengthdir_y(10, _move_dir), objCollision, false, true)
    || counter >= 20;
*/

// Alerter
alerter_set_alert(ALERT_STATE.ALERT);
// Sound
if _alarm_sound == -1
    _alarm_sound = audio_play_sound(sound_goat_alert, 2, true);

#define goat_follow_player
/// goat_follow_player();

if !instance_exists(objPlayer) return 0;

var player_dir = point_direction(x, y, objPlayer.x, objPlayer.y);
_move_dir = player_dir;

#define goat_silence
/// goat_silence();

if _alarm_sound != -1
    audio_stop_sound(_alarm_sound);