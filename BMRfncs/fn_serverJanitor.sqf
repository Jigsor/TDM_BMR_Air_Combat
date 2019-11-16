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
	//"GroundWeaponHolder_Scripted",//does not auto-delete when empty.
	//"WeaponHolderSimulated_Scripted",//does not auto-delete when empty.
	//"Weapon_Empty",//does not auto-delete when empty.
	"WeaponHolder",
	"GroundWeaponHolder", //"WeaponHolderSimulated","WeaponHolderSimulated_single",
	"CraterLong",
	"CraterLong_small"
];
private _rad = (worldSize max 20000);
private _taskPos = getPos task1;
private _centerPos = [_taskPos # 0, _taskPos # 1, getTerrainHeightASL _taskPos];
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
	"rhs_mi28_wing_right",
	"rhs_mi28_wing_left",
	"rhs_vs1_seat",
	"rhs_a10_acesII_seat",
	"rhs_k36d5_seat",
	"CUP_B_Ejection_Seat_A10_USA",
	"CUP_AV8B_EjectionSeat",
	"CUP_AirVehicles_EjectionSeat",
	"JS_JC_F18_Ejection_Seat",
	"JS_JC_SU35ejection_seat",
	"ffaa_av8b2_Canopy"
], [], true, false];
_trashObjs = _trashEntities inAreaArray [_centerPos, _rad, _rad];
{deleteVehicle _x} forEach _trashObjs;

missionNameSpace setVariable ["BMRcleanupInProgress", false];