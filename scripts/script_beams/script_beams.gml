function shoot_grapple_beam(_shooter, _target, _max_range) {
  draw_beam(
    _shooter, _target, _max_range,
    1, c_dkgray, c_white,
    global.particle_beam_grapple_muzzle,
    global.particle_beam_grapple_impact,
    15, 0.25
  );
  
  _target.grappled = 2;
}

function shoot_point_defence(_shooter, _range, _max_range) {
  with obj_base_bullet {
    if (faction == _shooter.faction) { return; }
    
    if (distance_to_object(_shooter) <= _range) {
        
      draw_beam(
        _shooter, self, _max_range,
        1, c_maroon, c_orange,
        global.particle_beam_point_defence_muzzle,
        global.particle_beam_point_defence_impact,
        15
      );
  
      be_point_defended();
    }
  }
}

function shoot_drain_shields(_shooter, _target, _max_range) {
  if (!_target.shielded) { return; }
  
  var drain_blob = instance_create_layer(_target.x, _target.y, "Entities", obj_beam_shield_drain);
  
  drain_blob.set_shield_drainer(
    _target, _shooter, _max_range, 0.1
  );
}

function draw_beam(_shooter, _target, _max_range, _width = 1, _color1, _color2, _muzzle_particle, _impact_particle, _lifespan = 15, _alpha = 1) {
  var beamer = instance_create_layer(0, 0, "Invisibles", obj_beam_drawer);
  
  with beamer {
    shooter = _shooter;
    shooter_body_radius = _shooter.sprite_width / 2;
    target = _target;
    max_range = _max_range;
    muzzle_particle = _muzzle_particle;
    impact_particle = _impact_particle;

    w = _width;
    color1 = _color1;
    color2 = _color2;
    starting_lifespan = _lifespan;
    current_lifespan = _lifespan;
    alpha = _alpha;
    draw_muzzle_and_impact = true;
    activated = true;
  }
}