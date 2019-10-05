// If only a desired set of vehicles are wanted then add an array containing vehicle class names to the end of _pool array and add a lobby option and value in Hpp\Parameter.hpp class aircraftPoolType.
_dummy = [];

_pool = [
	// Random Helicopters Vanilla and Moded if any available. Do not edit element.
	_dummy,
	// Random Fixed Wings Vanilla and Moded if any available. Do not edit element.
	_dummy,
	// Vanilla AH-9 Pawnee
	["B_Heli_Light_01_armed_F"],
	// Vanilla WY-55 Hellcat
	["I_Heli_light_03_dynamicLoadout_F"],
	// Vanilla A-164 Wipeout
	["B_Plane_CAS_01_dynamicLoadout_F"],
	// Vanilla F/18 181 Black Wasp II (Stealth)
	["B_Plane_Fighter_01_Stealth_F"],
	// Vanill A 143 Buzzard
	["I_Plane_Fighter_03_dynamicLoadout_F"],
	// Vanilla 149 Gryphon
	["I_Plane_Fighter_04_F"],
	// Vanilla Neophron
	["O_Plane_CAS_02_dynamicLoadout_F"],
	// Vanilla To-201 Shikra (Stealth)
	["O_Plane_Fighter_02_Stealth_F"],
	// RHS F-22 Raptor
	["rhsusf_f22"],
	// RHS Little Bird (MELB_AH6M)
	["RHS_MELB_AH6M"],
	// Random @Sab Military Aviation
	["sab_fiat_b","sab_fiat_o","sab_fiat_i","sab_magister_b","sab_mystere_b","sab_mystere_i","sab_mystere_o","sab_panther_b","sab_panther_i","sab_panther_o","sab_yak23","sab_t28trojan_b"],
	// Sab PC-7
	["sab_pc7_b","sab_pc7_o","sab_pc7_i"],
	// Pilatus and Sab PC-7
	["sab_pc7_b","sab_pc7_o","sab_pc7_i","pil_pc7_b","pil_pc7_o","pil_pc7_i"],
	// Sab Random WWII @Secret Weapons
	["sab_la5_2","sab_ta152c","sab_texan","sab_tigercat","sab_tusb2","sab_zero","sab_a26","sab_a5m","sab_aichival","sab_avenger","sab_avia","sab_avia_2","sab_b17","sab_b24","sab_b25","sab_bf109","sab_bf110","sab_bf110_2","sab_bv141","sab_ca12bo","sab_corsair","sab_d510","sab_dauntless","sab_do335","sab_f6f","sab_fiatg55","sab_fw190","sab_fw190_2","sab_gladiator","sab_he111","sab_he162","sab_hix","sab_i16","sab_il2","sab_ju87","sab_ju88","sab_ju88_2","sab_ju388","sab_ki61","sab_la5","sab_m6a","sab_m6av2","sab_mb5","sab_me262","sab_me262_2","sab_meteor","sab_ms406","sab_mustang","sab_mustang_civ","sab_natter","sab_p26","sab_p38","sab_p39","sab_p51b","sab_p61","sab_s510","sab_ki100"]
] select aircraftPoolType;

missionNameSpace setVariable ["BMR_AircraftPool", _pool, true];