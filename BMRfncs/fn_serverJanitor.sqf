// 0 spawn BMR_AC_fnc_serverJanitor;

if (!isServer || (missionNameSpace getVariable ["BMRcleanupInProgress", false])) exitWith {};

missionNameSpace setVariable ["BMRcleanupInProgress", true];

// Delete dead units and vehicles
{
	{(vehicle _x) deleteVehicleCrew _x} foreach crew _x;
	deleteVehicle _x;
} forEach allDead;

// Delete empty groups
call BMR_AC_fnc_deleteEmptyGroups;

// Delete Weapons, WeaponHolders and Craters
private _trashTypes = [
	//"#soundonvehicle",
	"WeaponHolder",
	"GroundWeaponHolder", //"WeaponHolderSimulated","GroundWeaponHolder_Scripted","WeaponHolderSimulated_single","Weapon_Empty"
	"CraterLong",
	"CraterLong_small"
];
private _rad = worldSize;
private _centerPos = [getPos task1 # 0, getPos task1 # 1, getTerrainHeightASL (position task1)];
private _trashObjs = nearestObjects [_centerPos, _trashTypes, _rad];
{deleteVehicle _x} forEach _trashObjs;

// Delete Aircraft Canopys, Wings and Ejection Seats
private _trashEntities = entities [[
	"B_Ejection_Seat_Plane_Fighter_01_F",
	"B_Ejection_Seat_Plane_CAS_01_F",
	"O_Ejection_Seat_Plane_CAS_02_F",
	"O_Ejection_Seat_Plane_Fighter_02_F",
	"I_Ejection_Seat_Plane_Fighter_04_F",
	"I_Ejection_Seat_Plane_Fighter_03_F",
	"Plane_Fighter_01_Canopy_F",
	"Plane_CAS_01_Canopy_F",
	"ffaa_av8b2_Canopy",
	"rhs_mi28_wing_right",
	"rhs_mi28_wing_left",
	"rhs_vs1_seat",
	"rhs_a10_acesII_seat",
	"rhs_k36d5_seat",
	"CUP_B_Ejection_Seat_A10_USA",
	"CUP_AV8B_EjectionSeat",
	"CUP_AirVehicles_EjectionSeat"
], [], true, false];
_trashObjs = _trashEntities inAreaArray [_centerPos, _rad, _rad];
{deleteVehicle _x} forEach _trashObjs;

missionNameSpace setVariable ["BMRcleanupInProgress", false];