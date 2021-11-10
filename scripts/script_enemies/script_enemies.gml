// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy(
  _object_name,
  _max_hitpoints = 1,
  _score_multiplier = 50,
  _movement_speed = 0.5 + random(2),
  _mass = 100,
  _rotation_speed = random_range(-2, 2),
  _initial_direction = { base: 0, min: 0, max: 360, as_int: false },
  _hit_sound = snd_struck,
  _death_sound = snd_destroyed,
  _spawn_distance_minimum = 100,
  _spawn_distance_maximum = 5000
) constructor {
  // Identification
  name = _object_name;
  
  // Game Stats
  max_hitpoints = _max_hitpoints;
  score_multiplier = _score_multiplier;
  
  // Physics
  movement_speed = _movement_speed;
  mass = _mass;
  rotation_speed = _rotation_speed;
  initial_direction = _initial_direction;
  spawn_distance_maximum = _spawn_distance_maximum;
  spawn_distance_minimum = _spawn_distance_minimum;
  
  // Sound Effects
  hit_sound = _hit_sound;
  death_sound = _death_sound;
}

// Basic Asteroid
global.enemy_asteroid_basic = {
  object_name: obj_asteroid_basic,
  type: "asteroid",
  max_hitpoints: { base: 1, min: 3, max: 5, as_int: true },
  score_multiplier: 50,
  movement_speed: { base: 0.5, min: 0, max: 2, as_int: false },
  mass: 100,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_basic_h0,
    spr_asteroid_basic_h1,
    spr_asteroid_basic_h2,
    spr_asteroid_basic_h3
  ],
  drop_chance: 8,
};

// Tiny gravel Asteroid (One-shot)
global.enemy_asteroid_gravel = {
  object_name: obj_asteroid_gravel,
  type: "asteroid_mini",
  max_hitpoints: { base: 1, min: 0, max: 0, as_int: true },
  score_multiplier: 250,
  movement_speed: { base: 2, min: 0, max: 2, as_int: false },
  mass: 10,
  rotation_speed: { base: 0, min: -7, max: 7, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_gravel,
    spr_asteroid_gravel,
    spr_asteroid_gravel,
    spr_asteroid_gravel
  ],
  drop_chance: 64,
};

// Tiny gravel Asteroid (One-shot)
global.enemy_asteroid_gravel_large = {
  object_name: obj_asteroid_gravel_large,
  type: "asteroid_mini",
  max_hitpoints: { base: 1, min: 0, max: 0, as_int: true },
  score_multiplier: 50,
  movement_speed: { base: 2, min: 0, max: 2, as_int: false },
  mass: 20,
  rotation_speed: { base: 0, min: -5, max: 5, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_gravel_large,
    spr_asteroid_gravel_large,
    spr_asteroid_gravel_large,
    spr_asteroid_gravel_large
  ],
  drop_chance: 64,
};

// Medium Splitter-Asteroid
global.enemy_asteroid_splitter_medium = {
  object_name: obj_asteroid_splitter_medium,
  type: "asteroid",
  max_hitpoints: { base: 0, min: 2, max: 5, as_int: true },
  score_multiplier: 75,
  movement_speed: { base: 0.5, min: 0, max: 2, as_int: false },
  mass: 80,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_split,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_splitter_medium_h0,
    spr_asteroid_splitter_medium_h1,
    spr_asteroid_splitter_medium_h2,
    spr_asteroid_splitter_medium_h3,
  ],
  drop_chance: 16,
};

// Medium Splitter-Asteroid's Fragment
global.enemy_asteroid_splitter_medium_fragment = {
  object_name: obj_asteroid_splitter_medium_fragment,
  type: "asteroid_mini",
  max_hitpoints: { base: 0, min: 1, max: 3, as_int: true },
  score_multiplier: 150,
  movement_speed: { base: 1, min: 0, max: 2.5, as_int: false },
  mass: 30,
  rotation_speed: { base: 0, min: -6, max: 6, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 20,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_splitter_medium_fragment_h0,
    spr_asteroid_splitter_medium_fragment_h1,
    spr_asteroid_splitter_medium_fragment_h2,
    spr_asteroid_splitter_medium_fragment_h3
  ],
  drop_chance: 32,
};

// Armoured Asteroid
global.enemy_asteroid_armoured = {
  object_name: obj_asteroid_armoured,
  type: "droid_mini",
  max_hitpoints: { base: 20, min: 10, max: 20, as_int: true },
  score_multiplier: 100,
  movement_speed: { base: 0.5, min: 0, max: 0.5, as_int: false },
  mass: 400,
  rotation_speed: { base: 0, min: -1, max: 1, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_armoured_h0,
    spr_asteroid_armoured_h1,
    spr_asteroid_armoured_h2,
    spr_asteroid_armoured_h3
  ],
  drop_chance: -1,
};

// Asteroid Carrier
global.enemy_asteroid_carrier = {
  object_name: obj_asteroid_carrier,
  type: "droid",
  max_hitpoints: { base: 5, min: 0, max: 5, as_int: true },
  score_multiplier: 100,
  movement_speed: { base: 1, min: 0, max: 1, as_int: false },
  mass: 15,
  rotation_speed: { base: 0, min: -1, max: 1, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_split,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_carrier_h0,
    spr_asteroid_carrier_h1,
    spr_asteroid_carrier_h2,
    spr_asteroid_carrier_h3
  ],
  drop_chance: -1,
};

// Boss Asteroid: Cluster Crumbler
global.enemy_asteroid_cluster_mega = {
  object_name: obj_asteroid_cluster_mega,
  type: "asteroid",
  max_hitpoints: { base: 75, min: 0, max: 0, as_int: true },
  score_multiplier: 250,
  movement_speed: { base: 0, min: 0, max: 0, as_int: false },
  mass: 10000,
  rotation_speed: { base: 0, min: -0.5, max: 0.5, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_struck,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_asteroid_cluster_mega_h0,
    spr_asteroid_cluster_mega_h1,
    spr_asteroid_cluster_mega_h2,
    spr_asteroid_cluster_mega_h3
  ],
  drop_chance: -1,
};

// Droid Rammer (Medium)
global.enemy_droid_rammer_medium = {
  object_name: obj_droid_rammer_medium,
  type: "droid",
  max_hitpoints: { base: 30, min: 0, max: 0, as_int: true },
  score_multiplier: 500,
  movement_speed: { base: 2, min: 0, max: 0, as_int: false },
  mass: 250,
  rotation_speed: { base: 0, min: -1, max: 1, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_droid_rammer_medium_h0,
    spr_droid_rammer_medium_h1,
    spr_droid_rammer_medium_h2,
    spr_droid_rammer_medium_h3
  ],
  drop_chance: -1,
};

// Droid Rammer (Mini)
global.enemy_droid_rammer_mini = {
  object_name: obj_droid_rammer_mini,
  type: "droid",
  max_hitpoints: { base: 15, min: 0, max: 0, as_int: true },
  score_multiplier: 200,
  movement_speed: { base: 2, min: 1, max: 3, as_int: false },
  mass: 50,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_destroyed,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_droid_rammer_mini_h0,
    spr_droid_rammer_mini_h1,
    spr_droid_rammer_mini_h2,
    spr_droid_rammer_mini_h3
  ],
  drop_chance: 1,
};

global.enemy_powerup_capsule_weapon = {
  object_name: obj_powerup_capsule_weapon,
  type: "capsule",
  max_hitpoints: { base: 1, min: 0, max: 0, as_int: true },
  score_multiplier: 10,
  movement_speed: { base: 1, min: 0, max: 1, as_int: false },
  mass: 10,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_split,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_powerup_capsule_weapon,
    spr_powerup_capsule_weapon,
    spr_powerup_capsule_weapon,
    spr_powerup_capsule_weapon
  ],
  drop_chance: -1,
};

global.enemy_powerup_capsule_engine = {
  object_name: obj_powerup_capsule_engine,
  type: "capsule",
  max_hitpoints: { base: 1, min: 0, max: 0, as_int: true },
  score_multiplier: 10,
  movement_speed: { base: 1, min: 0, max: 1, as_int: false },
  mass: 10,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_split,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_powerup_capsule_engine,
    spr_powerup_capsule_engine,
    spr_powerup_capsule_engine,
    spr_powerup_capsule_engine
  ],
  drop_chance: -1,
};

global.enemy_powerup_capsule_shields = {
  object_name: obj_powerup_capsule_shields,
  type: "capsule",
  max_hitpoints: { base: 1, min: 0, max: 0, as_int: true },
  score_multiplier: 10,
  movement_speed: { base: 1, min: 0, max: 1, as_int: false },
  mass: 10,
  rotation_speed: { base: 0, min: -2, max: 2, as_int: false },
  initial_direction: { base: 0, min: 0, max: 360, as_int: false },
  hit_sound: snd_tink,
  death_sound: snd_split,
  spawn_distance_minimum: 100,
  spawn_distance_maximum: 5000,
  sprites: [
    spr_powerup_capsule_shields,
    spr_powerup_capsule_shields,
    spr_powerup_capsule_shields,
    spr_powerup_capsule_shields
  ],
  drop_chance: -1,
};