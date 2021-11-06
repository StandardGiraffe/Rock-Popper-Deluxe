// Function Definitions
function next_wave() {
  audio_play_sound(snd_level_up, 10, 0);
  
  var _pause = global.waves[global.wave_true](self);
  global.wave_true += 1;
  
  if _pause { alarm_set(0, _pause * room_speed); }
}

function pause_spawning() {
  spawning = false;
}

function resume_spawning() {
  spawning = true;
}

// Initial conditions
pause_spawning();
global.wave = 0;
global.wave_true = 0;

execute after 3 seconds
  resume_spawning();
done