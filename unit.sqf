_unit = _this select 0;

_unit addWeapon "Binocular";
_unit setVariable ["binocsFocus", 5]; // 1x => 50 m, 20x => 1000 m
_unit addAction ["+100", "fn\rangeUp.sqf", [], 0, false, false, "ZoomIn", "_target == _this and currentWeapon _this == 'Binocular'"];
_unit addAction ["-100", "fn\rangeDown.sqf", [], 0, false, false, "ZoomOut", "_target == _this and currentWeapon _this == 'Binocular'"];
_unit addAction ["Show Absolute Zone", "fn\showAbsolute.sqf", [], 0, false, false, "", "_target == _this"];

_unit spawn compile preprocessFileLineNumbers "console.sqf";