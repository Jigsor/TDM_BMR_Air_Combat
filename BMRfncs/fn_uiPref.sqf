// Restore status hud and digital heading on respawn if they were activated before death
_dhFlag = false;
if (!isNull (uiNamespace getVariable ["jig_headingDisplay", displayNull])) then {
	"jig_headingDisplay" cutText ["", "PLAIN"];
	_dhFlag = true;
};
waitUntil {sleep 2; alive player};
if (_dhFlag) then {0 spawn Jig_fnc_DigiHeading};
if (player getVariable "stathud_resp") then {call Jig_fnc_stausHUDtoggle};