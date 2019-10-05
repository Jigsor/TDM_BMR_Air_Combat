private ["_veh","_vel","_dir"];
_veh = vehicle player;
if (_veh isKindOf "Plane") then {
	if (driver _veh isEqualTo player && vectorMagnitudeSqr velocity _veh <= 0.5) then {
		_vel = velocity _veh;
		_dir = direction _veh;
		_veh setVelocity [(_vel select 0) + (sin _dir * -6), (_vel select 1) + (cos _dir * -6), (_vel select 2)];
	};
};