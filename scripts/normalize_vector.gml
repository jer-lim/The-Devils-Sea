///normalize_vector(x1,y1,x2,y2)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var xDiff = x2 - x1;
var yDiff = y2 - y1;
var vectorLength = sqrt(sqr(xDiff) + sqr(yDiff));
var xNormal = xDiff / vectorLength;
var yNormal = yDiff / vectorLength;

normalisedVector[0] = xNormal;
normalisedVector[1] = yNormal;

return normalisedVector;