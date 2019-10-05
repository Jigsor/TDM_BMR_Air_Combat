// by Jigsor

class Jig_H_Menu {
	idd = 29876;
	movingEnable = false;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable ['Jig_H_Menu', _this # 0];";
	onUnLoad = "call Jig_fnc_saveViewDistance;";

	class Controls {

		class Bg: Jig_RscPicture {
			idc = -1;
			text = "#(argb,8,8,3)color(0,0,0,0.7)";
			x = 0.421335 * safezoneW + safezoneX;
			y = 0.385174 * safezoneH + safezoneY;
			w = 0.158139 * safezoneW;
			h = 0.291188 * safezoneH;
		};
		class Toggle_Heading: Jig_RscButton {
			action = "closeDialog 0; 0 spawn Jig_fnc_DigiHeading";
			idc = -1;
			text = "$STR_BMR_UI_toggle_heading";
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.402819 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.045674 * safezoneH;
		};
		class Ice_Man_Hud: Jig_RscButton {
			action = "closeDialog 0; call Jig_fnc_stausHUDtoggle";
			idc = -1;
			text = "$STR_BMR_UI_status_hud";
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.449589 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.045674 * safezoneH;
		};
		class Ear_Plugs: Jig_RscButton {
			action = "closeDialog 0; call BMR_AC_fnc_earPlugs";
			idc = -1;
			text = "$STR_BMR_UI_earPlugs";
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.496359 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.045674 * safezoneH;
		};
		class Friendly_3D_Icons: Jig_RscButton {
			action = "closeDialog 0; call BMR_AC_fnc_friendly3DIcon;";
			idc = -1;
			text = "$STR_BMR_UI_Friendly_3D_Icons";
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.543129 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.045674 * safezoneH;
		};
		class View_Distance: Jig_RscText {
			idc = -1;
			text = "$STR_BMR_UI_view_settings";
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.589899 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.045674 * safezoneH;
		};
		class BMR_ViewDistanceCTRL: Jig_RscSlider {
			idc = 1900;
			x = 0.425056 * safezoneW + safezoneX;
			y = 0.63667 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "$STR_BMR_UI_view_settings";
			onSliderPosChanged = "[_this # 1] call Jig_fnc_viewDistance;";// hint format[""%1"",_this];
		};
		class Exit_Front {
			type = 0;
			idc = -1;
			style = 48;
			x = 0.565625 * safezoneW + safezoneX;
			y = 0.354368 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.0280062 * safezoneH;
			font = "PuristaMedium";
			sizeEx = 0.04;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			text = "images\exit.paa";
		};
		class Exit_Back: Jig_RscButton {
			action = "closeDialog 0;";
			idc = -1;
			text = "";
			x = 0.565625 * safezoneW + safezoneX;
			y = 0.354368 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.0280062 * safezoneH;
			tooltip = "$STR_BMR_UI_close_dialog";
		};
	};
};