// If only a desired set of vehicles are wanted then add an array containing vehicle class names to the end of _pool array and add a lobby option and value in Hpp\Parameter.hpp class BMR_poolTypes.
// white listing has precedence over black listing / black listing not used.
// Note : if mod makers change or depricates class name(s) then correspondings list will need update.

_dummy = [];

_pool = [
 // Random Helicopters Vanilla and Moded if any available. Do not edit dummy element.
	_dummy,
 // Random Fixed Wings Vanilla and Moded if any available. Do not edit dummy element.
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
 // Vanilla F/A-181 Black Wasp II (Stealth) vs. Vanilla To-201 Shikra (Stealth)
	["B_Plane_Fighter_01_Stealth_F","O_Plane_Fighter_02_Stealth_F"],
 // RHS F-22 Raptor
	["rhsusf_f22"],
 // RHS Little Bird (MELB_AH6M)
	["RHS_MELB_AH6M"],
 // CUP AW159 Wildcat
	["CUP_B_AW159_RN_Blackcat"],
 // Random Sab @Military Aviation
	["sab_mystere_b","sab_mystere_o","sab_mystere_i","sab_panther_b","sab_panther_o","sab_panther_i","sab_pc21_b","sab_pc21_o","sab_pc21_i","sab_pc7_b","sab_pc7_o","sab_pc7_i","sab_pc9_b","sab_pc9_o","sab_pc9_i","sab_yak23_o","sab_alphajet_b","sab_alphajet_i","sab_alphajet_o","sab_an22_c","sab_baehawk_b","sab_baehawk_o","sab_baehawk_i","sab_baehawk_b_2","sab_baehawk_o_2","sab_baehawk_i_2","sab_fiat_b","sab_fiat_o","sab_fiat_i","sab_magister_b","sab_magister_o","sab_magister_i","sab_mb339_b","sab_mb339_o","sab_mb339_i","sab_t28trojan_b","sab_t28trojan_o","sab_t28trojan_i","sab_m2000_b","sab_m2000_o","sab_m2000_i","sab_t45goshawk_b"],
 // Sab Turbo Props
	["sab_pc7_b","sab_pc9_b","sab_pc21_b"],
 // Sab T-28 Trojan
	["sab_t28trojan_i","sab_t28trojan_o","sab_t28trojan_b"],
 // Sab Random WWII @Secret Weapons
	["sab_la5_2","sab_ta152c","sab_texan","sab_tigercat","sab_tusb2","sab_zero","sab_a26","sab_a5m","sab_aichival","sab_avenger","sab_avia","sab_avia_2","sab_b17","sab_b24","sab_b25","sab_bf109","sab_bf110","sab_bf110_2","sab_bv141","sab_ca12bo","sab_corsair","sab_d510","sab_dauntless","sab_do335","sab_f6f","sab_fiatg55","sab_fw190","sab_fw190_2","sab_gladiator","sab_he111","sab_he162","sab_hix","sab_i16","sab_il2","sab_ju87","sab_ju88","sab_ju88_2","sab_ju388","sab_ki61","sab_la5","sab_m6a","sab_m6av2","sab_mb5","sab_me262","sab_me262_2","sab_meteor","sab_ms406","sab_mustang","sab_mustang_civ","sab_natter","sab_p26","sab_p38","sab_p39","sab_p51b","sab_p61","sab_s510","sab_ki100"],
 // F/A-18E vs. Su-35 @SU-35 Flanker E; @FA-18 Super Hornet
	["JS_JC_FA18E","JS_JC_SU35"]
] select BMR_poolTypes;

//Todo: build function to varify classes and clean list if needed. call here.

if (BMR_useVehSide isEqualTo 1 && {count _pool > 1}) then {
	_pool = [_pool] call BMR_AC_fnc_sortVicsBySide;
};

missionNameSpace setVariable ["BMR_AircraftPool", _pool, true];