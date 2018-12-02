#define player
/// Player!

#define player_get_item
/// player_get_item()
return objPlayer._item_pickup;

#define player_get_item_index
/// player_get_item_index();
var item = player_get_item();
if (item != noone)
    return item.object_index;

return noone;
