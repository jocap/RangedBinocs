_unit = _this select 0;
_focus = _unit getVariable "binocsFocus";

// Loop through every 0.001 unit of the SafeZone.  Seems to be the smallest (ish) relevant unit for this.

// Spawn loops for each 0.001 of the width.

private "_visible_objects";
_visible_objects = [];

[] spawn {
	for "__x" from 0 to safezoneW step 0.001 do {
		[] spawn {
			for "__y" from 0 to safezoneH step 0.001 do {
				_objects = lineIntersectsWith [getPosASL _unit, screenToWorld [__x, __y], objNull, objNull, true];
				_object = _objects select (count _objects - 1); // closest object

				// Determine blur coefficient for each object.
				_distance = [getPosASL _unit, getPosASL _object] call compile preprocessFileLineNumbers "getDistance.sqf";

				_visible_objects = _visible_objects + [_object];
			};
		};
	};
};