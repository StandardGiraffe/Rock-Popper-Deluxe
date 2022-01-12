if (activated) {
  var beam_angle = point_direction(shooter.x, shooter.y, target.x, target.y);
  var gun_x = lengthdir_x(shooter_body_radius, beam_angle);
  var gun_y = lengthdir_y(shooter_body_radius, beam_angle);
  var x1 = shooter.x + gun_x;
  var y1 = shooter.y + gun_y;
  var x2 = target.x;
  var y2 = target.y;

  if (draw_muzzle_and_impact) {
    part_particles_create(global.particles, shooter.x + gun_x, shooter.y + gun_y, muzzle_particle, 1);
    part_particles_create(global.particles, target.x, target.y, impact_particle, 1);
    draw_muzzle_and_impact = false;
  }

  draw_set_alpha(alpha * (lifespan / starting_lifespan));
  draw_line_width_color(x1, y1, x2, y2, w, color1, color2);
  lifespan --;

  if (lifespan <= 0) {
    instance_destroy();
  }
}
