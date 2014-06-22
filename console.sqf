while {true} do {
	hintSilent format ["Focus: %1x\nTarget Range: %2\nTarget Position: %3",
	_this getVariable "binocsRange",
	_this call compile preprocessFileLineNumbers "fn\getTargetRange.sqf",
	[_this] call compile preprocessFileLineNumbers "fn\getAimedPos.sqf"];
	sleep 0.1;
};