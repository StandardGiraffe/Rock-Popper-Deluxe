/// @description Instantiate particles

global.particles = part_system_create_layer("Entities", false);
global.particles_debris = part_system_create_layer("Player", false);


// Player Shot Particles
{
  // Shot trail for a small bullet
  global.particle_bullet_trail_small = part_type_create();
  var p = global.particle_bullet_trail_small;
  part_type_shape(p, pt_shape_sphere);
  part_type_size(p, 0.01, 0.05, 0, 0.02);
  part_type_color3(p, c_white, c_teal, c_grey);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0.3, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.25, room_speed * 0.5);
  
  // Impact effect for a small bullet
  global.particle_impact_flare_small = part_type_create();
  var p = global.particle_impact_flare_small;
  part_type_shape(p, pt_shape_flare);
  part_type_size(p, 1, 1, -0.05, false);
  part_type_color3(p, c_white, c_orange, c_maroon);
  part_type_alpha2(p, 0.75, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 360, 4, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.25, room_speed * 0.75);

  global.particle_impact_spark_small = part_type_create();
  var p = global.particle_impact_spark_small;
  part_type_shape(p, pt_shape_spark);
  part_type_size(p, 1, 1, 0.05, false);
  part_type_color2(p, c_white, c_yellow);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 360, 2, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.05, room_speed * 0.1);

  // Additional effect for power-shots
  global.particle_impact_power_shot_ring = part_type_create();
  var p = global.particle_impact_power_shot_ring;
  part_type_shape(p, pt_shape_ring);
  part_type_size(p, 1, 1.5, 0.1, false);
  part_type_color2(p, c_white, c_teal);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.1, room_speed * 0.15);
}

// Shield Particle Effects
{
  global.particle_impact_shield_circle = part_type_create();
  var p = global.particle_impact_shield_circle;
  part_type_shape(p, pt_shape_circle);
  part_type_size(p, 0.5, 1, -0.05, false);
  part_type_color2(p, c_teal, c_blue);
  part_type_alpha2(p, 0.8, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.2, room_speed * 0.3);

  global.particle_impact_shield_sphere = part_type_create();
  var p = global.particle_impact_shield_sphere;
  part_type_shape(p, pt_shape_sphere);
  part_type_size(p, 0.01, 0.05, 0, 0.02);
  part_type_color3(p, c_teal, c_blue, c_aqua);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1, room_speed * 1.5);
}
  
// Debris Particles
{
  // Tiny hot debris
  global.particle_debris_tiny_hot = part_type_create();
  var p = global.particle_debris_tiny_hot;
  part_type_shape(p, pt_shape_sphere);
  part_type_size(p, 0.01, 0.05, 0, 0.02);
  part_type_color3(p, c_yellow, c_orange, c_maroon);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 1, 0, 0.1);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.5, room_speed * 2.5);
  
  // Slower-fading glow
  global.particle_debris_small_hot = part_type_create();
  var p = global.particle_debris_small_hot;
  part_type_shape(p, pt_shape_sphere);
  part_type_size(p, 0.05, 0.2, 0, 0.05);
  part_type_color3(p, c_orange, c_red, c_maroon);
  part_type_alpha2(p, 0.75, 0);
  part_type_speed(p, 0, 0.1, 0, 0.1);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1.5, room_speed * 3.5);
  
  // Asteroid debris
  global.particle_debris_asteroid = part_type_create();
  var p = global.particle_debris_asteroid;
  part_type_sprite(p, spr_debris_asteroid, false, false, true);
  part_type_size(p, 0.5, 2.5, 0, false);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 1, 0, 0);
  part_type_direction(p, 0, 360, 0, 0);
  part_type_orientation(p, 0, 360, 0, 0, false);
  part_type_blend(p, false);
  part_type_life(p, room_speed * 0.5, room_speed * 2);
  
  // Droid debris
  global.particle_debris_droid = part_type_create();
  var p = global.particle_debris_droid;
  part_type_sprite(p, spr_debris_droid, false, false, true);
  part_type_size(p, 0.5, 2.5, 0, false);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 1, 0, 0);
  part_type_direction(p, 0, 360, 0, 0);
  part_type_orientation(p, 0, 360, 0, 5, false);
  part_type_blend(p, false);
  part_type_life(p, room_speed * 1, room_speed * 3.5)  ;
}