// Runs the provided function on each element of the provided array.
function array_foreach(_array, _function) {
  for (var i = 0; i < array_length(_array); i++) {
    _function(_array[i]);
  }
}

// Returns an array of the the provided function's returns on the provided array
function array_map(_array, _function) {
  for (var i = 0; i < array_length(_array); i++) {
    _array[i] = _function(_array[i]);
  }
  
  return _array;
}

// Replaces each element of the provided array with the return of the provided function
function array_map_mutate(_array, _function) {
  for (var i = 0; i < array_length(_array); i++) {
    _array[@ i] = _function(_array[i]);
  }
  
  return _array;
}

// Returns a random element from the provided array
function array_sample(_array) {
  var selection = irandom(array_length(_array) - 1);
  return _array[@ selection];
}

// Applies the provided function(key, value) to each property of the struct.
function struct_foreach(_struct, _function) {
  var keys = variable_struct_get_names(_struct);
  
  for (var i = 0; i < array_length(keys); i++) {
     _function(keys[i], _struct[$ keys[i]]);
  }
}

// Returns an array of the values in the provided struct.
function struct_get_values(_struct) {
  var keys = variable_struct_get_names(_struct);
  var values = [ ];
  
  for (var i = 0; i < array_length(keys); i++) {
    array_push(values, _struct[$ keys[i]]);
  }
  
  return values;
}

// Returns true if the provided array includes the provided element.
function array_includes(_array, _element) {
  for (var i = 0; i < array_length(_array); i++) {
    if (_array[i] == _element) {
      return true;
    }
  }
  
  return false;
}

function times_do(_number_of_times, _function) {
  for (var i = 0; i < _number_of_times; i++) {
    _function();
  }
}

function maybe_do(_percentage_chance, _function) {
  if (irandom(100) <= _percentage_chance) {
    return _function();
  }
}
