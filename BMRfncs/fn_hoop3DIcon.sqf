private _hoopIcon = addMissionEventHandler ["Draw3D", {
	drawIcon3D["\a3\data_f_heli\logos\arma3_heli_icon_ca.paa",
	[1,0,0,1],
	serviceHoop,
	0.8,
	0.8,
	0,
	"", //"Service Point",
	0,
	0.03,
	"RobotoCondensed",
	"right",
	false //(optional) - Draw arrows at edge of screen when icon moves off screen.
	];
}];