if (status_hud_on) exitWith {
	("ICE_Layer" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
	status_hud_on = false;
	player setVariable ["stathud_resp", false];
};

_SHhandle = [] spawn Jig_fnc_ICE_HUD;
status_hud_on = true;
player setVariable ["stathud_resp", true];