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
    
    award_points(10000);
    instance_destroy(obj_player);
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

