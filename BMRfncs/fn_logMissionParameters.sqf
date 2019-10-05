// Log mission parameters //
diag_log "**** TDM BMR Air Combat Mission Parameters:";
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	diag_log format
	[
		"%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};
diag_log format ["****Server File Patching Enabled = %1", isFilePatchingEnabled];