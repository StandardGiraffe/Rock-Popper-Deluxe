event_inherited();

var me = self;

with obj_platform_core_micro {
  if (spawning) { continue; }
  
  if ((distance_to_object(me) <= 100) && (me.bouncing_cooldown <= 0)) {
      
    motion_add(
      point_direction(x, y, me.x, me.y),
      map_to_range(distance_to_object(me), 0, 100, 1.5, 0.1)
    );
  }
}

bouncing_cooldown = max(0, bouncing_cooldown - 1);