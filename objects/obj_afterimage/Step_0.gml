current_lifespan --;

if (current_lifespan <= 0) {
  instance_destroy();
}