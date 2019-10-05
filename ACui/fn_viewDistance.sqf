// fn_viewDistance.sqf

private _sliderValue = _this param [0,-1,[0]];
private _vd = round(_sliderValue);

setViewDistance _vd;
setObjectViewDistance [_vd, 100];

findDisplay 29876 displayCtrl 1900 ctrlSetTooltip format["%1", _vd];