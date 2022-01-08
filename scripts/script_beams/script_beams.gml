function shoot_grapple_beam(_shooter, _target) {
  draw_beam(
    _shooter, _target,
    1, c_white, c_silver,
    global.particle_beam_grapple_muzzle,
    global.particle_beam_grapple_impact,
    15
  );
  
  _target.grappled = 2;
}

function shoot_point_defence(_shooter, _target) {
  draw_beam(
    _shooter, _target,
    1, c_maroon, c_orange,
    global.particle_beam_point_defence_muzzle,
    global.particle_beam_point_defence_impact,
    15
  );
  
  _target.be_point_defended();
}

function draw_beam(_shooter, _target, _width = 1, _color1, _color2, _muzzle_particle, _impact_particle, _lifespan = 15) {
  var beam_angle = point_direction(_shooter.x, _shooter.y, _target.x, _target.y);
  var shooter_body_radius = _shooter.sprite_width / 2;
  var gun_x = lengthdir_x(shooter_body_radius, beam_angle);
  var gun_y = lengthdir_y(shooter_body_radius, beam_angle);

  var beamer = instance_create_layer(gun_x, gun_y, "Entities", obj_beam_drawer);
  with beamer {
    x1 = _shooter.x + gun_x;
    y1 = _shooter.y + gun_y;
    x2 = _target.x;
    y2 = _target.y;
    w = _width;
    color1 = _color1;
    color2 = _color2;
    starting_lifespan = _lifespan;
    current_lifespan = _lifespan;
  }

  part_particles_create(global.particles, _shooter.x + gun_x, _shooter.y + gun_y, _muzzle_particle, 1)
  part_particles_create(global.particles, _target.x, _target.y, _impact_particle, 1)
}