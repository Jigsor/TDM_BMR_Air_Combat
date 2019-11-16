if (hasInterface) then {
	showChat true;
	if (isServer) then {
		player sideChat "BMR Air Combat Warning!. This machine is missing mods and will not render models. Check mod installations.";
	}else{
		player sideChat "BMR Air Combat Warning! This machine is missing mods. You may not be able to see or Fly Aircraft. Check mod installations.";
		if (BMR_missingModAction isEqualTo 1) then {
			("BMR_Layer_end4" call BIS_fnc_rscLayer) cutText [ "This machine is missing required mod(s). Check mod installations and try again.", "BLACK OUT", 1, true ]; sleep 10; endMission "END4";
		};
	};
}else{
	diag_log "!!!BMR Air Combat warning!!! This machine is missing required mods and will not render some models";
};