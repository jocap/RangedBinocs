_fnc_relativePos = {
	_v = _this select 0;
	_d_3D = _this select 1; // max range

	__x_f = _v select 0;
	__z_f = _v select 1;
	__y_f = _v select 2;

	_a = __y_f atan2 __x_f;
	_d_2Df = sqrt (__x_f^2 + __y_f^2);
	_b = __z_f atan2 _d_2Df;
	_d_2D = _d_3D * cos _b;

	__x = _d_2D * cos _a;
	__y = _d_2D * sin _a;
	__z = _d_3D * sin _b;
	[__x, __y, __z]
};

_unit = _this select 0;
_maxRange = if (isNil {_this select 1}) then { 2000 } else { _this select 1 }; // hypotenuse
_v = _unit weaponDirection currentWeapon _unit;
_pos = [0,0,0];

_t = time;
_loop = true;
while { _loop } do {
	if (time - _t > 3) then { _loop = false; };
	
	_pos_f = [_v, _maxRange] call _fnc_relativePos;
	if (lineIntersects [getPos _unit, _pos_f]) then {
		_maxRange = _maxRange - 1;
	} else {
		_loop = false;
		_pos = [_v, _maxRange + 1] call _fnc_relativePos;
	};
};

_pos

// Wrong approach.  Determine the range of all objects on screen and blur them accordingly.