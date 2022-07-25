// Update Room Population Knowledge
update_room_population();

if (population < max_population) && (array_length(entity_pool) > 0) {
  populate_background();
}

if (spawning_mode == "hyperspace") {
  hyperspace_velocity = max(hyperspace_velocity + 0.001, 0.1);
  
  with obj_background_feature {
    if (self.background_layer != other.target_layer) { continue; }
    
    motion_add(
      point_direction(
        room_width / 2, room_height / 2,
        self.x, self.y
      ),
      other.hyperspace_velocity
    );
  }
}