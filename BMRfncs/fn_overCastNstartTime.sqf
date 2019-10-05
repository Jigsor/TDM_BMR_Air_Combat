if (isServer) then {
	skipTime (((BMR_startTime - (daytime) +24) % 24) -24);
	if (BMR_overcast isEqualTo 101) exitWith {};
	private _v = BMR_overcast * 0.01;
	0 setOvercast _v;
	0 setfog 0;
	forceWeatherChange;
	if (BMR_overcast > 69) then {
		0 setLightnings 1.1;
	} else {
		0 setLightnings _v;
	};
};