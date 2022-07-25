global.waves = [
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_basic);
    
    #region Background Effects
      global.background_manager.change_feature_set(
        5,
        [
          global.background_features.gravel,
          global.background_features.gravel_large
        ], ,
        "near"
      );
    
      global.background_manager.change_feature_set(
        3,
        [
          global.background_features.gravel,
          global.background_features.basic
        ], ,
        "mid"
      );
    
      global.background_manager.change_feature_set(
        4,
        [
          global.background_features.gravel,
          global.background_features.basic,
          global.background_features.basic_large
        ], ,
        "far"
      );
    #endregion
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
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_gravel_large);
    spawn_entity_randomly(obj_asteroid_armoured);
  },
  
  function(spawner) {
    var random_capsule = choose(
      obj_powerup_capsule_engine,
      obj_powerup_capsule_weapon,
      obj_powerup_capsule_shields
    );
    
    spawn_entity_randomly(random_capsule);
    
    #region Background Features
      background_hyperspace_effect();
      global.background_manager.change_colour(#262029, room_speed * 10);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asteroid_splitter_medium);
    spawn_entity_randomly(obj_asteroid_splitter_medium);
    spawn_entity_randomly(obj_asteroid_splitter_medium);
    
    #region Background Features
      global.background_manager.decay_features();
      global.background_manager.change_spawning_mode("normal")
      
      global.background_manager.change_feature_set(
        5,
        [
          global.background_features.splitter_fragment_small,
          global.background_features.splitter_fragment_small,
          global.background_features.splitter_fragment
        ], ,
        "near"
      );
      
      global.background_manager.change_feature_set(
        3,
        [
          global.background_features.splitter,
          global.background_features.splitter_fragment
        ], ,
        "mid"
      );
      
      global.background_manager.change_feature_set(
        3,
        [
          global.background_features.splitter_fragment,
          global.background_features.splitter_large
        ], ,
        "far"
      );
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    spawn_entity_randomly(obj_asteroid_splitter_medium_fragment);
    
    #region Background Features
      global.background_manager.change_feature_set(
        5,
        [ global.background_features.splitter_fragment_small ],
        true,
        "near"
      );
      
      global.background_manager.change_feature_set(
        5,
        [ global.background_features.splitter_fragment, global.background_features.splitter_fragment_small ],
        true,
        "mid"
      );
      
      global.background_manager.change_feature_set(
        6,
        [ global.background_features.splitter_fragment ],
        true,
        "far"
      );
      
      global.background_manager.change_spawning_mode("chaos");
    #endregion
    
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
    var random_capsule = choose(
      obj_powerup_capsule_engine,
      obj_powerup_capsule_weapon,
      obj_powerup_capsule_shields
    );
    
    spawn_entity_randomly(random_capsule);
    
    #region Background Features
      background_hyperspace_effect(15);
      global.background_manager.change_colour(#002000, room_speed * 10);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    spawn_entity_randomly(obj_asterdroid_shooter_small);
    
    #region Background Features
      global.background_manager.decay_features();
    
      global.background_manager.change_feature_set(
        5,
        [
          global.background_features.gravel,
          global.background_features.gravel_large
        ], ,
        "near"
      );
    
      global.background_manager.change_feature_set(
        3,
        [
          global.background_features.gravel
        ], ,
        "mid"
      );
    
      global.background_manager.change_feature_set(
        1,
        [
          global.background_features.basic_large
        ], ,
        "far"
      );
      
      global.background_manager.change_spawning_mode("normal");
    #endregion
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
    
    #region Background Features
      background_crystal_sparkle_effect();
    
      global.background_manager.change_colour(#100000, room_speed * 5);
    #endregion
    
    spawn_entity_randomly(obj_platform_core_mini_red);
  },
  
  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_asterdroid_shielded);
    spawn_entity_randomly(obj_asterdroid_shielded);
    spawn_entity_randomly(obj_powerup_capsule_weapon);
    
    #region Background Features
      global.background_manager.change_colour(#000020, room_speed * 5);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_droid_straight_shoot);
    
    #region Background Features
      global.background_manager.decay_features();
      
      global.background_manager.change_colour(#002000, room_speed * 10);
      
      global.background_manager.change_feature_set(
        5, [ global.background_features.straight_shooter ], , "far"
      );
      
      global.background_manager.change_spawning_mode("normal");
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    #region Background Features
      global.background_manager.decay_features();
      
      global.background_manager.change_feature_set(
        10, [ global.background_features.straight_shooter ], , "near"
      );
      
      global.background_manager.change_feature_set(
        10, [ global.background_features.straight_shooter ], , "mid"
      );
      
      global.background_manager.change_feature_set(
        10, [ global.background_features.straight_shooter ], , "far"
      );
    #endregion
    
    return 5;
  },
  
  function(spawner) {
    var locus = new central_spawn_region();
    spawn_formation_starburst(
      obj_droid_straight_shoot, locus.x, locus.y, random_range(1, 2), 3
    )
    
    #region Background Features
      global.background_manager.change_colour(#003000, room_speed * 10);
    #endregion
    
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
    
    #region Background Features
      global.background_manager.decay_features_timer(10 * room_speed, 30 * room_speed);
    #endregion
    
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
    
    spawn_entity_randomly(obj_platform_core_mini_red);
    spawn_entity_randomly(obj_platform_core_mini_blue);
    
    #region Background Features
      background_crystal_sparkle_effect(20);
      global.background_manager.change_colour(#100010, room_speed * 5);
    #endregion
  },
  
  function(spawner) {
    var random_capsule = choose(
      obj_powerup_capsule_engine,
      obj_powerup_capsule_weapon,
      obj_powerup_capsule_shields
    );
    
    spawn_entity_randomly(random_capsule);
    
    #region Background Features
      background_hyperspace_effect(20);
      global.background_manager.change_colour(#111111, room_speed * 10);
    #endregion
  },

  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_asteroid_carrier);
    spawn_entity_randomly(obj_asteroid_carrier);
    
    #region Background Features
      global.background_manager.decay_features();
    
      global.background_manager.change_feature_set(
        1, [ global.background_features.rammer_mini ], , "near"
      );
      
      global.background_manager.change_feature_set(
        5, [ global.background_features.armoured_box, global.background_features.armoured_box_large ], , "mid"
      );
      
      global.background_manager.change_feature_set(
        3, [ global.background_features.armoured_box, global.background_features.armoured_box_large ], , "far"
      );
      
      global.background_manager.change_spawning_mode("normal");
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawn_entity_randomly(obj_droid_rammer_mini);
    
    #region Background Features
      global.background_manager.change_feature_set(
        3, [ global.background_features.rammer_mini ], true, "near"
      );
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_droid_rammer_mini);
    
    #region Background Features
      global.background_manager.change_feature_set(
        2, [ global.background_features.rammer_medium ], true, "near"
      );
      
      global.background_manager.change_colour(#222222, room_speed * 10);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_droid_rammer_medium);
    spawn_entity_randomly(obj_droid_rammer_mini);
    spawn_entity_randomly(obj_asteroid_armoured);
    
    #region Background Features
      global.background_manager.change_feature_set(
        3, [ global.background_features.armoured_box, global.background_features.armoured_box_large ], true, "near"
      );
      
      global.background_manager.change_colour(#332222, room_speed * 5);
    #endregion
  },

  function(spawner) {
    global.wave ++;
    
    spawn_entity_randomly(obj_platform_core_mini_grey);
    spawn_entity_randomly(obj_platform_core_mini_grey);
    spawn_entity_randomly(obj_platform_core_mini_blue);
    
    #region Background Features
      background_crystal_sparkle_effect(25);
      global.background_manager.change_colour(#383b5a, room_speed * 10);
    #endregion
  },

  function(spawner) {
    var random_capsule = choose(
      obj_powerup_capsule_engine,
      obj_powerup_capsule_weapon,
      obj_powerup_capsule_shields
    );
    
    spawn_entity_randomly(random_capsule);
    
    #region Background Features
      background_hyperspace_effect(25);
      global.background_manager.change_colour(#006000, room_speed * 10);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    
    var locus = new central_spawn_region();
      
    spawn_formation_v(
      obj_droid_straight_shoot, locus.x, locus.y, locus.angle,
      random_range(1, 2), 2
    )
    
    #region Background Features
      global.background_manager.decay_features_timer();
      
      global.background_manager.change_feature_set(
        15, [ global.background_features.straight_shooter ], , "near"
      );
      
      global.background_manager.change_feature_set(
        15, [ global.background_features.straight_shooter, global.background_features.spread_shooter ], , "mid"
      );
      
      global.background_manager.change_feature_set(
        15, [ global.background_features.straight_shooter, global.background_features.spread_shooter ], , "far"
      );
      
      global.background_manager.change_spawning_mode("chaos");
    #endregion
    
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
    );
    
    #region Background Features
      background_crystal_sparkle_effect(5);
    #endregion
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    #region Background Features
      background_crystal_sparkle_effect(10);
      global.background_manager.change_colour(#100010, room_speed * 10);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    spawner.pause_spawning();
    
    spawn_entity_randomly(obj_platform_core_mini_blue);
    
    #region Background Features
      background_crystal_sparkle_effect(15);
      global.background_manager.change_colour(#000020, room_speed * 2.5);
    #endregion
    
    return 2.5;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_platform_core_mini_red);
    
    #region Background Features
      background_crystal_sparkle_effect(20);
      global.background_manager.change_colour(#200020, room_speed * 2.5);
    #endregion
    
    return 2.5;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_platform_core_mini_grey);
    
    #region Background Features
      background_crystal_sparkle_effect(20);
      global.background_manager.change_colour(#302030, room_speed * 2.5);
    #endregion
    
    return 2.5;
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_platform_core);
    
    #region Background Features
      background_crystal_sparkle_effect(30);
      global.background_manager.change_colour(#602060, room_speed * 2.5);
    #endregion
    
    spawner.resume_spawning();
  },
  
    function(spawner) {
    spawn_entity_randomly(obj_powerup_capsule_shields);
    
    #region Background Features
      background_hyperspace_effect(10);
      global.background_manager.change_colour(#140019, room_speed * 5);
    #endregion
  },
  
  function(spawner) {
    global.wave ++;
    
    var locus = new central_spawn_region();
    
    spawn_formation_starburst(
      obj_asteroid_gravel, locus.x, locus.y, random_range(2, 4), 5
    )
    
    #region Background Features
      global.background_manager.change_feature_set(
        3, [ global.background_features.gravel ], , "near"
      );
      global.background_manager.change_colour(#140019, room_speed * 5);
    #endregion
    
    return 5
  },
  
  function(spawner) {
    var locus = new central_spawn_region();

    spawn_formation_starburst(
      obj_asteroid_gravel, locus.x, locus.y, random_range(1, 3), 5
    );
    
    #region Background Features
      global.background_manager.change_feature_set(
        4, [ global.background_features.gravel ], , "near"
      );
      
      global.background_manager.change_feature_set(
        3, [ global.background_features.gravel ], , "mid"
      );
      global.background_manager.change_colour(#190015, room_speed * 5);
    #endregion
    
    return 5
  },
  
  function(spawner) {
    var locus = new central_spawn_region();

    spawn_formation_starburst(
      obj_asteroid_gravel, locus.x, locus.y, random_range(1, 2), 7
    )

    #region Background Features
      global.background_manager.change_feature_set(
        4, [ global.background_features.gravel, global.background_features.gravel_large ], , "near"
      );
      
      global.background_manager.change_feature_set(
        3, [ global.background_features.gravel, global.background_features.gravel_large ], , "mid"
      );
      global.background_manager.change_colour(#230015, room_speed * 5);
    #endregion

    return 5
  },
  
  function(spawner) {
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    spawn_entity_randomly(obj_asteroid_gravel);
    
    #region Background Features
      global.background_manager.decay_features();
      global.background_manager.change_feature_set(
        12, [ global.background_features.basic_large_throbbing, global.background_features.splitter_large_throbbing ], true, "far"
      );

      global.background_manager.change_colour(#330001, room_speed * 5);
      
      global.background_manager.change_spawning_mode("chaos");
    #endregion
    
    return 5
  },
    
  function(spawner) {
    var locus = new central_spawn_region();
    
    spawn_entity(
      locus.x, locus.y,
      obj_asteroid_cluster_mega
    );
    
    #region Background Features
      global.background_manager.change_feature_set(0, [ ], true, "near");
      global.background_manager.change_feature_set(0, [ ], true, "mid");

      global.background_manager.change_colour(#4C2000, room_speed * 5);
    #endregion
    
    spawner.resume_spawning();
  },
  
  // You Win!
  function(spawner) {
    global.wave ++;

    #region Background Features
      global.background_manager.change_colour(#3771c7, 10 * room_speed);
      global.background_manager.expire_features();
      global.background_manager.decay_features();
    #endregion
    
    spawner.pause_spawning();
    
    with obj_base_player {
      award_points(10000, self);
      
      if (stats.lives > 0) {
        stats.points += (stats.lives * 10000); 
      }
      
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
    
  }
  
]

