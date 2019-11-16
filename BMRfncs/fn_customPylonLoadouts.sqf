//Place aircraft in editor, configure pylon loadouts as desired, get in vehicle and debug console-watch getPylonMagazines (vehicle player) to return all pylons
params [["_veh",objNull],["_type",[""]]];

if (isNull _veh) exitWith {};

private "_pylons";
switch (_type) do {
//Vanilla
	case "B_Plane_CAS_01_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_AAA_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_1Rnd_AAA_missiles","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_Missile_AA_04_F"]};
	case "B_Plane_Fighter_01_Stealth_F" : {_pylons=["","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","","","",""]};
	case "I_Plane_Fighter_03_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_AAA_missiles","PylonRack_7Rnd_Rocket_04_AP_F","PylonWeapon_300Rnd_20mm_shells","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_AAA_missiles","PylonRack_1Rnd_Missile_AA_04_F"]};
	case "I_Plane_Fighter_04_F" : {_pylons=["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1"]};
	case "O_Plane_CAS_02_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_1Rnd_Missile_AA_03_F"]};
	case "O_T_VTOL_02_infantry_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_03_F"]};
	case "O_T_VTOL_02_vehicle_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_03_F"]};
//Sab Military Aviation
	case "sab_pc21_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_pc21_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_pc21_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_pc7_b" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};//unmodified 10/25/2019
	case "sab_pc7_o" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};//unmodified 10/25/2019
	case "sab_pc7_1" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};//unmodified 10/25/2019
	case "sab_pc9_b" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};
	case "sab_pc9_o" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};
	case "sab_pc9_i" : {_pylons=["","sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag",""]};
	case "sab_t28trojan_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_t28trojan_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_t28trojan_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_pod_lmgx2_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_t45goshawk_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_m2000_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_m2000_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_m2000_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_1rnd_droptank_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mystere_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mystere_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mystere_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mb339_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mb339_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_mb339_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_cannon_mag","sab_milavi_pod_cannon_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_panther_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_panther_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_panther_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_magister_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_magister_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_magister_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_baehawk_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_baehawk_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_baehawk_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_baehawk_b_2" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","",""]};
	case "sab_baehawk_o_2" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","",""]};
	case "sab_baehawk_i_2" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_pod_30mm_ap_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag","",""]};
	case "sab_etendard_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_etendard_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_etendard_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_fiat_b" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_fiat_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_fiat_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_4rnd_zuni_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_alphajet_b" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	case "sab_alphajet_o" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	case "sab_alphajet_i" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	case "sab_yak23_i" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "sab_yak23_o" : {_pylons=["sab_milavi_7rnd_hydra_mag","sab_milavi_7rnd_hydra_mag"]};
	case "JS_JC_FA18E" : {_pylons=["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonMissile_1Rnd_GAA_missiles","PylonMissile_1Rnd_GAA_missiles","js_m_fa18_wing_tank_x1","js_jc_120Rnd_CMChaff_Magazine","js_jc_120Rnd_CMFlare_Magazine"]};
	case "JS_JC_FA18F" : {_pylons=["PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_Missile_AMRAAM_D_x1","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonMissile_1Rnd_GAA_missiles","PylonMissile_1Rnd_GAA_missiles","js_m_fa18_wing_tank_x1"]};
	case "JS_JC_SU35" : {_pylons=["PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R73_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonMissile_Missile_AA_R77_x1","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_Rocket_S8_JS_SU35_x20","PylonRack_Rocket_S8_JS_SU35_x20","PylonRack_Buddy_Pod_JS_SU35_x1","PylonRack_Wing_Tank_JS_SU35_x1"]};
	default {_pylons=[]};
};

if !(_pylons isEqualTo []) then {
	[_veh,_pylons] call BMR_AC_fnc_replacePylons;
};