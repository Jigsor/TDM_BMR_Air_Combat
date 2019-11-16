params ["_player", "_isJIP"];

if (!isServer && {isNil "BMR_poolTypes"}) then {call BMR_AC_fnc_missionParameters};//func runs preinit. Why do I need to call it again postinit on client? wtf?

waitUntil {!isNull player && {isPlayer player}};

#include "add_diary.sqf"

call BMR_AC_fnc_registerPlayerSide;

player setVariable ["BIS_noCoreConversations", true];
BMR_editor_Pgrp = groupId (group player);
player setSpeaker "NoVoice";
player addRating 100000;
setTerrainGrid 50;
{_x setMarkerAlphaLocal 0} forEach ["respawn_east","respawn_west"];
disableMapIndicators [false,true,true,false];
enableEnvironment [false, (environmentEnabled # 1)];
enableSentences false;
status_hud_on = false;
showhud true;

sleep 3;
waitUntil {!isNull (findDisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call Jig_fnc_keyHandler"];
(findDisplay 46) displayAddEventHandler ["KeyDown", {call BMR_AC_fnc_gpsIcons}];
(findDisplay 46) displayAddEventHandler ["KeyDown", {if ((_this # 1) in ((actionKeys 'User3') + [0x3d])) then {call BMR_AC_fnc_planeReverse}}];

("BMR_Layer" call BIS_fnc_rscLayer) cutRsc ["bmr_intro", "PLAIN"];

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

player addEventhandler ["killed", {call BMR_AC_fnc_playerKilled}];
player addEventhandler ["respawn", {call BMR_AC_fnc_playerRespawn}];

call BMR_AC_fnc_hoop3DIcon;
call BMR_AC_fnc_playerMarkers;

waitUntil {alive player};
player sideChat localize "STR_BMR_intro_tip1";
player sideChat localize "STR_BMR_intro_tip2";
if ((missionNameSpace getVariable ['BMR_ACE_present', false]) && {!('ACE_EarPlugs' in items player)}) then {
	if (player canAdd 'ACE_EarPlugs') then {
		player addItem 'ACE_EarPlugs';
	} else {
		hintSilent "Not enough space for Ear Plugs";
	};
};

private _savedVD = profileNamespace getVariable ["BMR_AC_viewDistance", 1600];
if !(_savedVD isEqualTo 1600) then {
	setViewDistance _savedVD;
	setObjectViewDistance [_savedVD, 100];
};

if (isNil {missionNameSpace getVariable "BMR_AircraftPool"}) then {//most likely not needed.
	[] remoteExec ['BMR_AC_fnc_vehiclePool', 2];
	sleep 3;
	if (alive player) then {player setdamage 1};
	waitUntil {alive player};
};

call BMR_AC_fnc_friendly3DIcon;
0 spawn BMR_AC_fnc_vehicleServiceNheal;