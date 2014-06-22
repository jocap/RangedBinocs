_unit = _this select 0;
_binocs_range = _unit getVariable "binocsRange";
_target = screenToWorld [0.5, 0.5];
_target_range = _unit call compile preprocessFileLineNumbers "fn\getTargetRange.sqf";
_k = _binocs_range/_target_range;

titleText [format ["%1"]];