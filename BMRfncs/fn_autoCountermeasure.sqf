//fn_autoCountermeasure.sqf by Jigsor

if !(player isEqualTo driver objectParent player) exitWith {hint "Restricted to Pilot"};

if (vehicle player getVariable ["AC_autoFlare",true]) then {

	(vehicle player) addEventHandler ["IncomingMissile", {

		private _weps = (_this # 0) weaponsTurret [-1];
		if (_weps find "CMFlareLauncher" == -1) then {
			(_this # 0) addWeaponTurret ["CMFlareLauncher", [-1]];
		};
		(_this # 0) addMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1], 18];
		(_this # 0) spawn {
			for "_i" from 0 to 17 do {
				_this fireAtTarget [_this,"CMFlareLauncher"];
				uiSleep 0.1;
			};
			_this removeMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];
		};
	}];
	(vehicle player) setVariable ["AC_autoFlare",false];
	hintSilent localize "STR_BMR_ON";

}else{
	(vehicle player) removealleventhandlers "IncomingMissile";
	(vehicle player) setVariable ["AC_autoFlare",true];
	hintSilent localize "STR_BMR_OFF";
};