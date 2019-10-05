enableSaving [false, false];

_ACE_Core = if (isClass(configFile >> "CfgMods" >> "cba") && {isClass(configFile >> "CfgMods" >> "ace")}) then {TRUE}else{FALSE};
missionNameSpace setVariable ["BMR_ACE_present", _ACE_Core];

// All vanilla not included in black lists.
BMR_vanillaAirCraft = ["B_Heli_Light_01_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","B_Heli_Attack_01_dynamicLoadout_F","O_Heli_Attack_02_dynamicLoadout_F","B_Heli_Transport_01_F","I_Plane_Fighter_03_dynamicLoadout_F","I_Heli_light_03_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F","B_Heli_Transport_03_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","O_T_VTOL_02_infantry_dynamicLoadout_F","O_T_VTOL_02_vehicle_dynamicLoadout_F","B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","O_Plane_Fighter_02_F","O_Plane_Fighter_02_Stealth_F","I_Plane_Fighter_04_F","I_E_Heli_light_03_dynamicLoadout_F"];

// Aircraft lacking chaff
BMR_add_Chaff = ["B_Heli_Light_01_F","B_Heli_Light_01_armed_F","B_Heli_Light_01_stripped_F","B_Heli_Light_01_dynamicLoadout_F","CUP_B_AH6M_USA","CUP_B_MH6M_USA"];

BMR_Op4_side = EAST;
BMR_Blu4_side = WEST;