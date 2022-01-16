event_inherited();

#region Proximity Beams
  var me = self;

  // Grapple close-by players
  if (grapple_beam_range > 0) {
    with obj_base_player {
      if (distance_to_object(me) <= me.grapple_beam_range) {
        shoot_grapple_beam(me, self, me.grapple_beam_range);
      }
    }
  }

  // Shield-Drain close-by players
  if ((shield_drain_range > 0) and (shielded)) {
    with obj_base_player {
      if ((distance_to_object(me) <= me.shield_drain_range) and shielded) {
        shoot_drain_shields(me, self, me.shield_drain_range);
      }
    }
  }

  // PDC close-by player-shots
  if ((point_defence_range > 0) and (point_defence_cooldown <= 0)) {
    with obj_base_bullet {
      if ((faction != me.faction) and (distance_to_object(me) <= me.point_defence_range)) {
        shoot_point_defence(me, me.point_defence_range, me.point_defence_range);
        me.point_defence_cooldown = me.starting_point_defence_cooldown;
      }
    }
  }
#endregion Proximity Beams

#region Cooldowns
if (point_defence_range > 0) {
  point_defence_cooldown = max((point_defence_cooldown - 1), 0);
}
#endregion