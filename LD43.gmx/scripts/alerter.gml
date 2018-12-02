#define alerter
/// alerter!

#define alerter_init
/// alerter_init();
_my_alerter = instance_create(x, y, objAlerter);

// Set follower to the current object
_my_alerter._follower = id;

#define alerter_set_alert
/// alerter_set_alert(alert_type);

var type  = argument0;
_my_alerter._state = type;

#define alerter_destroy
/// alerter_destroy()
instance_destroy(_my_alerter);
