if (_this select 0 getVariable "binocsRange" > 1) then {
	_this select 0 setVariable ["binocsRange", (_this select 0 getVariable "binocsRange") - 1];
};