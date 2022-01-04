function draw_afterimage(_ghosting_object, _x, _y, _lifespan_in_seconds) {
  var afterimage = instance_create_layer(_x, _y, "Afterimages", obj_afterimage);
  afterimage.starting_lifespan = room_speed * _lifespan_in_seconds;
  afterimage.current_lifespan = room_speed * _lifespan_in_seconds;

  afterimage.sprite_index = _ghosting_object.sprite_index;
  afterimage.image_angle = _ghosting_object.image_angle;
  
  return afterimage;
}