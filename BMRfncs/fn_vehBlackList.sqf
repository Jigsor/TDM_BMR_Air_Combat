//Edit these 2 lists below to not allow certain air vehicles. Typically these do not have any weapons or appropriate weapons.
//Some weaponless vehicles are allready fitered out by config check in fn_vehiclePool.sqf so no need to add weaponless vehicles to black lists, but some vehicles may only have guns on one side/tail like spooky variants for ex. So you may want to add them to blacklists manually.

_heli_BlackList = [
//Vanilla
	"B_Heli_Light_01_F",
	"B_Heli_Transport_03_unarmed_F",
	"B_Heli_Transport_03_unarmed_green_F",
	"B_Heli_Light_01_stripped_F",
	"O_Heli_Transport_04_F",
	"O_Heli_Light_02_unarmed_F",
	"O_Heli_Transport_04_box_F",
	"O_Heli_Transport_04_covered_F",
	"O_Heli_Transport_04_ammo_F",
	"O_Heli_Transport_04_repair_F",
	"O_Heli_Transport_04_medevac_F",
	"O_Heli_Transport_04_bench_F",
	"O_Heli_Transport_04_fuel_F",
	"I_Heli_light_03_unarmed_F",
	"I_Heli_Transport_02_F",
	"I_E_Heli_light_03_unarmed_F",
	"I_C_Heli_Light_01_civil_F",
	"C_Heli_Light_01_civil_F",
	"C_IDAP_Heli_Transport_02_F",
//CUP
	"CUP_Merlin_HC3",
	"CUP_B_Mi17_CDF",
	"CUP_B_UH1D_slick_GER_KSK_Des",
	"CUP_B_CH53E_USMC",
	"CUP_B_CH53E_VIV_USMC",
	"CUP_B_CH53E_GER",
	"CUP_B_CH53E_VIV_GER",
	"CUP_B_MH47E_USA",
	"CUP_B_CH47F_USA",
	"CUP_B_CH47F_VIV_USA",
	"CUP_B_MH47E_GB",
	"CUP_B_CH47F_GB",
	"CUP_B_CH47F_VIV_GB",
	"CUP_I_CH47F_RACS",
	"CUP_I_CH47F_VIV_RACS",
//RHS
	"RHS_MELB_MH6M",
	"RHS_UH1Y_UNARMED",
	"RHS_UH1Y_UNARMED_d",
	"rhs_uh1h_hidf_unarmed",
	"rhsusf_CH53E_USMC",
	"rhsusf_CH53E_USMC_D",
	"rhsusf_CH53E_USMC_GAU21",
	"rhsusf_CH53E_USMC_GAU21_D",
	"RHS_UH60M2",
	"RHS_UH60M2_d",
	//"RHS_UH60M_d",
	"RHS_UH60M_MEV",
	"RHS_UH60M_MEV2",
	"RHS_UH60M_MEV2_d",
	"RHS_UH60M_MEV_d",
	"RHS_UH60M_ESSS2",
	"RHS_UH60M_ESSS_d",
	"RHS_UH60M_ESSS2_d",
	"RHS_CH_47F_10",
	"RHS_Mi8t_vv",
	"RHS_Mi8T_vvs",
	"RHS_Mi8T_vdv",
	"RHS_Mi8mt_vv",
	"RHS_Mi8mt_vvsc",
	"RHS_Mi8AMT_vvs",
	"RHS_Mi8AMT_vdv",
	"RHS_Mi8AMT_vvsc",
	"RHS_Mi8mt_Cargo_vv",
	"RHS_Mi8mt_Cargo_vdv",
	"RHS_Mi8mt_Cargo_vvs",
	"RHS_Mi8mt_Cargo_vvsc",
	"rhsgref_ins_Mi8amt",
	"rhsgref_ins_g_Mi8amt",
	"rhsgref_cdf_reg_Mi8amt",
	"rhsgref_cdf_b_reg_Mi8amt",
	"RHS_Mi8t_civilian",
	"RHS_Mi8amt_civilian",
	"rhs_uh1h_idap",
	"rhssaf_airforce_ht40",
	"rhssaf_airforce_ht48",
	"rhssaf_airforce_o_ht48",
	"rhs_ka60_c",
//FFAA
	"ffaa_nh90_tth_cargo",
	"ffaa_nh90_nfh_transport"
];

_plane_BlackList = [
//Vanilla
	"B_T_VTOL_01_infantry_F",
	"B_T_VTOL_01_vehicle_F",
	"B_T_VTOL_01_armed_F",
//CUP
	"CUP_B_MV22_USMC",
	"CUP_B_MV22_VIV_USMC",
	"CUP_B_MV22_USMC_RAMPGUN",
	"CUP_B_AC47_Spooky_USA",
	"CUP_B_UH1Y_MEV_USMC",
	"CUP_B_C130J_Cargo_GB",
	"CUP_O_C47_SLA",
	"CUP_I_C130J_AAF",
	"CUP_C_DC3_CIV",
	"CUP_C_C47_CIV",
	"CUP_C_DC3_CIV",
	"CUP_C_B737_CIV",
	"CUP_C_Cessna_172_CIV_GREEN",
	"CUP_C_Cessna_172_CIV",
	"CUP_C_Cessna_172_CIV_BLUE",
	"CUP_C_A300_CIV",
	"CUP_B_P8Poseidon_USN",
	"CUP_B_P8Poseidon_RAAF",
//RHS
	"RHS_TU95MS_vvs_old",
	"RHS_TU95MS_vvs_dubna",
	"RHS_TU95MS_vvs_tambov",
	"RHS_TU95MS_vvs_irkutsk",
	"RHS_TU95MS_vvs_chelyabinsk",
	"RHS_C130J",
//WWII - IFA3, FAW, SabersSectretWeapons
	"LIB_Li2",
	"LIB_C47_RAF",
	"LIB_C47_RAF_snafu",
	"LIB_C47_RAF_bob",
	"LIB_C47_Skytrain",
	"LIB_HORSA_RAF",
	"LIB_HORSA",
	"lib_bv141_brown",
	//"lib_bv141_green", //does not pull up

	//to many HE-111
	"lib_he111_grey",
	"lib_he111_winter",
	"lib_he111_geist_camo_a1ab",
	"lib_he111_geist_camo_a1ah",
	"lib_he111_geist_camo_a1bt",
	"lib_he111_geist_camo_a1ch",
	"lib_he111_geist_camo_a1hl",
	"lib_he111_geist_camo_a1ht",
	"lib_he111_geist_camo_a1ih",
	"lib_he111_geist_camo_a1kt",
	"lib_he111_geist_camo_a1ll",
	"lib_he111_geist_camo_a1nl",
	"lib_he111_geist_winter_a1ab",
	"lib_he111_geist_winter_a1ah",
	"lib_he111_geist_winter_a1ch",
	"lib_he111_geist_winter_a1fp",
	"lib_he111_geist_winter_a1gp",
	"lib_he111_geist_winter_a1hl",
	"lib_he111_geist_winter_a1ih",
	"lib_he111_geist_winter_a1ll",
	"lib_he111_geist_winter_a1nl",
//SabersSectretWeapons
	//"sab_natter",
	"sab_w34",
	"sab_w34f",
	"sab_dc3",
	"sab_dc3_c47",
	"sab_kate",
//Sab Military Aviation
	//"Sab_an22_2","Sab_an22_3","sab_c160_b","sab_c2a_1","sab_c2a_1_1","sab_c2a_1_2","sab_pc7_c","sab_pc9_b","sab_an22_i","sab_an22_o" <-- these get filtered automatically by fn_leathalWeapons.sqf
	"sab_an22_c",
	"sab_an12_o",
	"sab_an12_i",
	"sab_an12_c",
	"sab_yak23_i",
	"sab_yak23_o"
];

_allBanned = [];
_allBanned append _heli_BlackList;
_allBanned append _plane_BlackList;

if ((BMR_poolTypes isEqualTo 1) && {call BMR_AC_fnc_isWWII}) then {
	_allBanned append BMR_vanillaAirCraft;
};

_allBanned