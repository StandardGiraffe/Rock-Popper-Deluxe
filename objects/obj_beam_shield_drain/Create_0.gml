source = noone;
recipient = noone;
lifespan = 15;
magnitude = 0.1;
enabled = false;
particle = undefined;

function set_shield_drainer(_source, _recipient, _magnitude = 0.1, _lifespan = 15) {
  source = _source
  recipient = _recipient
  magnitude = _magnitude;
  lifespan = _lifespan
  
  particle_direction = point_direction(source.x, source.y, recipient.x, recipient.y);
  particle_speed = (distance_to_object(recipient) / lifespan);
  
  particle = part_type_create();
  part_type_shape(particle, pt_shape_pixel);
  part_type_size(particle, 0.5, 1, 0, false);
  part_type_color3(particle, c_aqua, c_aqua, c_blue);
  part_type_alpha3(particle, 1, 0.75, 0.5);
  part_type_speed(particle, particle_speed * 0.9, particle_speed, 0, 0);
  part_type_direction(particle, particle_direction - 15, particle_direction + 15, 0.1, true);
  part_type_orientation(particle, 0, 0, 0, false, false);
  part_type_blend(particle, true);
  part_type_life(particle, lifespan * 0.75, lifespan * 1.25);
  
  particle2 = part_type_create();
  part_type_shape(particle2, pt_shape_sphere);
  part_type_size(particle2, 0.05, 0.15, 0, false);
  part_type_color2(particle2, c_navy, c_teal);
  part_type_alpha2(particle2, 1, 0.5);
  part_type_speed(particle2, particle_speed * 0.5, particle_speed, 0, 0);
  part_type_direction(particle2, particle_direction - 3, particle_direction + 3, 0.1, true);
  part_type_orientation(particle2, 0, 0, 0, false, false);
  part_type_blend(particle2, true);
  part_type_life(particle2, lifespan * 0.75, lifespan * 1.25);
  
  source.damage_shields(magnitude, recipient);
  if (recipient.shielded) {
    recipient.current_shields = min(recipient.current_shields + magnitude, recipient.max_shields);
  }
  enabled = true;
}