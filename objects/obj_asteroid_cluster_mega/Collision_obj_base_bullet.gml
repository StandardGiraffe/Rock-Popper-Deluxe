if (is_currently_vulnerable() && other.faction != faction) {
  be_shot(other);
  eject_random_fragment(other);
}