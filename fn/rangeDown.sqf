if (_this select 0 getVariable "binocsFocus" > 1) then {
	_this select 0 setVariable ["binocsFocus", (_this select 0 getVariable "binocsFocus") - 1];
};