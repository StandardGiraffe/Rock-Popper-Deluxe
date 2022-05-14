/// Script Functions
// (Thanks, https://github.com/samspadegamedev/YouTube-Vectors-and-Steering-Behaviors/)

function seek_force(_x, _y) {	
	var _vec = new vector(_x, _y);
	_vec.subtract(position);
	_vec.set_magnitude(max_speed);
	_vec.subtract(velocity);
	_vec.limit_magnitude(max_force);
	return _vec;
}

function seek_force_for_non_steering(_x, _y, _max_speed, _max_force) {
  var _vec = new vector(_x, _y);
	_vec.subtract(new vector(self.x, self.y));
	_vec.set_magnitude(_max_speed);
	_vec.subtract(new vector_lengthdir(self.speed, self.direction));
	_vec.limit_magnitude(_max_force);
	return _vec;
}

function flee_force(_x, _y) {	
	var _vec = new vector(_x, _y);
	_vec.subtract(position);
	_vec.set_magnitude(max_speed);
	_vec.negate();
	_vec.subtract(velocity);
	_vec.limit_magnitude(max_force);
	return _vec;
}

function pursue_force(_inst) {
	var _vec = vector_copy(_inst.velocity);
	_vec.multiply(30);
	_vec.add(_inst.position);
	return seek_force(_vec.x, _vec.y);
}

function pursue_force_for_non_steering(_inst, _look_ahead = 30, _max_speed, _max_force) {
  var _vec = new vector_lengthdir(_inst.speed, _inst.direction);
  _vec.multiply(_look_ahead);
	_vec.add(new vector(_inst.x, _inst.y));
	return seek_force_for_non_steering(_vec.x, _vec.y, _max_speed, _max_force);
}

function evade_force(_inst) {
	var _vec = vector_copy(_inst.velocity);
	_vec.multiply(30);
	_vec.add(_inst.position);
	return flee_force(_vec.x, _vec.y);
}

function arrive_force(_x, _y, _slowing_radius) {	
	var _vec = new vector(_x, _y);
	_vec.subtract(position);
	
	var _dist = _vec.get_magnitude();
	if (_dist > _slowing_radius) {
		_vec.set_magnitude(max_speed);	
	} else {
		_vec.set_magnitude(max_speed * (_dist/_slowing_radius));
	}

	_vec.subtract(velocity);
	_vec.limit_magnitude(max_force);
	return _vec;
}
