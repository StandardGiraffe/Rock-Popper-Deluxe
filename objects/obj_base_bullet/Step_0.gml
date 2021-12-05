// Prepare Bullet Movement:


// Update vectors
velocity.add(steering_force);
//velocity.limit_magnitude(base_speed);
position.add(velocity);

steering_force.set(0, 0);

// Update built-in variables
x = position.x;
y = position.y;

// Other Operations
lifespan --;
if lifespan <= 0 {
  fading = true;
}