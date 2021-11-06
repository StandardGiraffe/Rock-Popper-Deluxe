/// Travel roughly through the centre of the screen to ensure a reasonable opportunity for collection
function powerup_initial_direction(){
  return point_direction(
    x, y,
    (room_width / 2) + random_range(-100, 100),
    (room_height / 2) + random_range(-100, 100),
  )
}
