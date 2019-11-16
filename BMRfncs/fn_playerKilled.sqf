("ICE_Layer" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
status_hud_on = false;

private _formerCrewGrp = (missionNameSpace getVariable ["BMR_crewGrp", grpNull]);
if (!(_formerCrewGrp isEqualTo grpNull) && {!((count units _formerCrewGrp) isEqualTo 0)}) then {
	private _grpUnits = units _formerCrewGrp;
	private _index = _grpUnits findIf {!(isNull objectParent _x)};
	if (_index != -1) then {
		private _veh = objectParent (_grpUnits select _index);
		{_veh deleteVehicleCrew _x} forEach crew _veh;
	};
	{deleteVehicle _x} forEach _grpUnits;
	deleteGroup _formerCrewGrp;
};