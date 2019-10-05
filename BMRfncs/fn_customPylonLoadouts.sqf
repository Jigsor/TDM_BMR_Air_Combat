params [["_veh",objNull],["_type",[""]]];

if (isNull _veh) exitWith {};

private "_pylons";
switch (_type) do {
	case "B_Plane_CAS_01_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_AAA_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_12Rnd_missiles","PylonRack_1Rnd_AAA_missiles","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_Missile_AA_04_F"]};
	case "B_Plane_Fighter_01_Stealth_F" : {_pylons=["","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","","","",""]};
	case "I_Plane_Fighter_03_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_04_F","PylonRack_1Rnd_AAA_missiles","PylonRack_7Rnd_Rocket_04_AP_F","PylonWeapon_300Rnd_20mm_shells","PylonRack_7Rnd_Rocket_04_AP_F","PylonRack_1Rnd_AAA_missiles","PylonRack_1Rnd_Missile_AA_04_F"]};
	case "I_Plane_Fighter_04_F" : {_pylons=["PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_BIM9X_x1","PylonRack_Missile_AMRAAM_C_x1","PylonRack_Missile_AMRAAM_C_x1"]};
	case "O_Plane_CAS_02_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_20Rnd_Rocket_03_HE_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_20Rnd_Rocket_03_AP_F","PylonRack_1Rnd_Missile_AGM_01_F","PylonRack_1Rnd_Missile_AA_03_F"]};
	case "O_T_VTOL_02_infantry_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_03_F"]};
	case "O_T_VTOL_02_vehicle_dynamicLoadout_F" : {_pylons=["PylonRack_1Rnd_Missile_AA_03_F","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_19Rnd_Rocket_Skyfire","PylonRack_1Rnd_Missile_AA_03_F"]};
	case "sab_pc7_b" : {_pylons=["","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon",""]};
	case "sab_pc7_o" : {_pylons=["","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon",""]};
	case "sab_pc7_i" : {_pylons=["","PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F",""]};
	case "pil_pc7_b" : {_pylons=["","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon",""]};
	case "pil_pc7_o" : {_pylons=["","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon",""]};
	case "pil_pc7_i" : {_pylons=["","PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F",""]};
	case "sab_alphajet_b" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	case "sab_alphajet_o" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	case "sab_alphajet_i" : {_pylons=["PylonRack_7Rnd_Rocket_04_HE_F","sab_pc7_mgx2pod_pylon","sab_pc7_mgx1pod_pylon","sab_pc7_mgx2pod_pylon","PylonRack_7Rnd_Rocket_04_HE_F"]};
	default {_pylons=[]};
};

if !(_pylons isEqualTo []) then {
	[_veh,_pylons] call BMR_AC_fnc_replacePylons;
};