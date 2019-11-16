_isWWII = false;
if (
	(isClass(configFile >> "cfgPatches" >> "WW2_Assets_c_Characters_Americans_c_US_Rangers")) ||
	(isClass(configFile >> "cfgPatches" >> "fow_characters_c")) ||
	(isClass(configFile >> "cfgPatches" >> "IFA3_SAB_Planes")) ||
	(isClass(configFile >> "cfgPatches" >> "sab_bf110"))
) then {
	_isWWII = true;
};
_isWWII