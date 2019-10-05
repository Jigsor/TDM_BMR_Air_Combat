params ["_winnerSide"];
private  "_side";
if (!isDedicated) then {
	_side = missionNameSpace getVariable ["BMR_registeredSide", side player];
};
if (!isServer) then {
	waitUntil {alive player};
	if (_winnerSide isEqualTo Civilian) then {endMission "END3"};
	if (_winnerSide isEqualTo _side) then {endMission "END1"};
	if !(_winnerSide isEqualTo _side) then {endMission "END2"};
} else {
	if (!isDedicated) then {
		if (_winnerSide isEqualTo Civilian) then {
			("BMR_Layer" call BIS_fnc_rscLayer) cutRsc ["bmr_intro", "PLAIN"]; uiSleep 3;
			["END3", _side isEqualTo _winnerSide, 1] spawn BIS_fnc_endMission;
		} else {
			("BMR_Layer" call BIS_fnc_rscLayer) cutRsc ["bmr_intro", "PLAIN"]; uiSleep 3;
			[if (_winnerSide isEqualTo _side) then {"END1"} else {"END2"}, _side isEqualTo _winnerSide, 1] spawn BIS_fnc_endMission;
		};
	} else {
		sleep 3;
		endMission "END1";
	};
};