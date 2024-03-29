// Setup Movement:
faction = factions.neutrals;
shooter = noone;
target = noone;
permanent_target = noone;

position = new vector(x, y);
steering_force = new vector_zero();
base_speed = projectile.base_speed;
max_force = 0.1;

velocity = new vector_zero();

// Setup Stats:
base_power = projectile.base_power;
base_shield_damage_multiplier = projectile.shield_damage_multiplier;
lifespan = room_speed * 3;
fading = false;

// Setup Special Properties
void_persistent = false;
power_shot = false;
seeking_shot = false;

//// Setup Particle Effects

// Functions:
set_direction = function(_dir, others_velocity = new vector_zero()) {
  base_velocity = new vector_lengthdir(base_speed, _dir);
  velocity = vector_add(base_velocity, others_velocity)
}

get_direction = function() {
  return velocity.get_direction();
}

get_current_speed = function() {
  return velocity.get_magnitude();
}

shot_power = function(others_velocity = new vector_zero()) {
  //var impact_magnitude = vector_subtract(velocity, others_velocity).get_magnitude();  // map this between 0.5 and 1.5
  var impact_damage = (
    base_power * clamp(
      (get_current_speed() / base_speed), 0.5, 1.5
    ) * max(image_alpha, 0.5)
  );
  
  return impact_damage;
}

shot_power_vs_shields = function(others_velocity = new vector_zero()) {
  return (shot_power(others_velocity) * base_shield_damage_multiplier);
}

function be_point_defended() {
  instance_destroy();
}

draw_impact_particles = function() {
  // Override with bespoke impact arrangement
}