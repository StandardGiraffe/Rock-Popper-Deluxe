/// collision_normal(x1,y1,obj [,rad [,res]])
//
//  Returns a 2D "surface normal" (in degrees) at a given point 
//  on or near an instance detected within a circular test area.
//  Makes approximately pi*(rad*rad)/(res*res) collision calls.
//  If no collision is found, (-1) is returned.
//
//      xx,yy       point on the surface, real
//      obj         object or instance (or all), real
//      rad         radius of test area (default 4), real
//      res         resolution of test (default 1), real
//
/// GMLscripts.com/license
function collision_normal(xx, yy, obj, rad = 4, res = 1) {
    //var xx  = argument[0];
    //var yy  = argument[1];
    //var obj = argument[2];
    //var rad = 4;
    //var res = 1;
    //if (argument_count > 3) rad = argument[3];
    //if (argument_count > 4) res = argument[4];
    //if (rad <= 0) rad = 4;
    //if (res <= 0) res = 1;
    var nx = 0;
    var ny = 0;
    if (collision_circle(xx, yy, rad, obj, false, false)) {
        for (var j=res; j<=rad; j+=res) {
            for (var i=0; i<rad; i+=res) {
                if (point_distance(0, 0, i, j) <= rad) {
                    if (!collision_point(xx+i, yy+j, obj, false, false)) { nx += i; ny += j; }
                    if (!collision_point(xx+j, yy-i, obj, false, false)) { nx += j; ny -= i; }
                    if (!collision_point(xx-i, yy-j, obj, false, false)) { nx -= i; ny -= j; }
                    if (!collision_point(xx-j, yy+i, obj, false, false)) { nx -= j; ny += i; }
                }
            }
        }
        if (nx == 0 && ny == 0) return (-1);
        return point_direction(0, 0, nx, ny);
    }else{
        return (-1);
    }
}

function angle_of_deflection(_x, _y, _reflecting_surface_object, _deflecting_object_direction) {
  var normal = collision_normal(_x, _y, _reflecting_surface_object, 16, 4);
  return (normal - (_deflecting_object_direction - (normal + 180)));
  //if _object_to_deflect.direction
}