global.waves = [
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_basic);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_powerup_capsule_shields);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_asteroid_basic);
    spawn_entity_randomly(obj_asteroid_armoured);
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_powerup_capsule_weapon);
    spawn_entity_randomly(obj_powerup_capsule_engine);
    spawn_entity_randomly(obj_powerup_capsule_shields);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_splitter_medium);
    spawn_entity_randomly(obj_asteroid_splitter_medium);
    spawn_entity_randomly(obj_asteroid_splitter_medium);
  },
  
    function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    
    return 2;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    
    return 2;
  },
    
  function(spawner) {
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    
    return 2;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    spawner.resume_spawning();
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_powerup_capsule_engine);
    spawn_entity_randomly(obj_powerup_capsule_weapon);
    spawn_entity_randomly(obj_powerup_capsule_shields);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asterdroid_shooter_small);
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 3;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 3;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawner.resume_spawning();
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asterdroid_shielded);
    spawn_entity_randomly(obj_asterdroid_shielded);
    spawn_entity_randomly(obj_powerup_capsule_weapon);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_straight_shoot);
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    return 5;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
    spawn_formation_starburst(
      obj_droid_straight_shoot, locus.x, locus.y, random_range(1, 2), 3
    )
    
    return 1;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
    spawn_formation_starburst(
      obj_droid_straight_shoot, locus.x, locus.y, random_range(1, 2), 3
    )
    
    return 1;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
    spawn_formation_starburst(
      obj_droid_straight_shoot, locus.x, locus.y, random_range(1, 2), 5
    )
    
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    spawner.resume_spawning();
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_straight_shoot_spread);
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asterdroid_shielded);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_carrier);
    spawn_entity_randomly(obj_asteroid_carrier);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_rammer_mini);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_droid_rammer_mini);
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_rammer_medium);
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_asteroid_armoured);
  },
  
  function(spawner) {
    background_sprite_set();
    spawn_entity_randomly(obj_powerup_capsule_engine);
    spawn_entity_randomly(obj_powerup_capsule_weapon);
    spawn_entity_randomly(obj_powerup_capsule_shields);
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    
    var locus = new central_spawn_region();
      
    spawn_formation_v(
      obj_droid_straight_shoot, locus.x, locus.y, locus.angle,
      random_range(1, 2), 2
    )
    
    return 0.75;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
      
    spawn_formation_v(
      obj_droid_straight_shoot, locus.x, locus.y, locus.angle,
      random_range(1, 2), 2
    )
    
    return 0.75;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
      
    spawn_formation_v(
      obj_droid_straight_shoot, locus.x, locus.y, locus.angle,
      random_range(1, 2), 3
    )
    
    spawn_entity_randomly(obj_asterdroid_shielded);

    spawner.resume_spawning();
  },
  
  function(spawner) {
    global.wave ++;

    var locus = new central_spawn_region();
    spawn_formation_starburst(
      obj_droid_straight_shoot_spread, locus.x, locus.y, random_range(1, 2), 3
    )
  },
  
  function(spawner) {
    global.wave ++;

    background_sprite_set(spr_background_boss_1);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 5
  },
  
  function(spawner) {
    background_sprite_set(spr_background_boss_2);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 5
  },
  
  function(spawner) {
    background_sprite_set(spr_background_boss_3);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 5
  },
  
  function(spawner) {
    background_sprite_set(spr_background_boss_4);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    return 5
  },
    
  function(spawner) {
    background_sprite_set(spr_background_boss_5);
    spawn_entity(
      room_width * 0.33, room_height * 0.5,
      obj_asteroid_cluster_mega
    );
  },
  
  function(spawner) {
    global.wave ++;
    
    background_sprite_set();
    spawner.pause_spawning();
    
    with obj_base_player {
      award_points(10000, self);
      instance_deactivate_object(self);
    }

    var game_over = instance_create_layer(0, 0, "Invisibles", obj_game_over);
    game_over.hero_text = "You Win (For Now...?)";
  },
  
  function(spawner) {
    
  },
  function(spawner) {
    
  },
  function(spawner) {
    
  },
  function(spawner) {
    
  },
  function(spawner) {
    
  }
  
]

