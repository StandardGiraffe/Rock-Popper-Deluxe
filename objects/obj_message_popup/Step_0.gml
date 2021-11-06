/// @description Fade the message
if fading {
  alpha -= fade_rate;

  if alpha < 0.01 {
    instance_destroy()  
  }
}