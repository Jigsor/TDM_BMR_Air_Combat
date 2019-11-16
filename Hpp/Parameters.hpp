class Params
{
	class BMR_Dum_Param1//0
	{
	title = ":: Aircraft Pool ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class BMR_poolTypes//1
	{
	title = "		Aircraft Pool Types";
	values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18};
	texts[]=
	{
		"Random Helicopters",
		"Random Fixed Wings",
		"Vanilla AH-9 Pawnee",
		"Vanilla WY-55 Hellcat",
		"Vanilla A-164 Wipeout",
		"Vanilla F/A-181 Black Wasp II (Stealth)",
		"Vanill A 143 Buzzard",
		"Vanilla 149 Gryphon",
		"Vanilla To-199 Neophron",
		"Vanilla To-201 Shikra (Stealth)",
		"Vanilla F/A-181 Black Wasp II (Stealth) and Vanilla To-201 Shikra (Stealth)",
		"RHS F-22 Raptor. Mod Requirements: @RHSUSAF",
		"RHS Little Bird (MELB_AH6M). Mod Requirements: @RHSUSAF",
		"CUP AW159 Wildcat. Mod Requirements: @CBA_A3;@cup_units;@cup_weapons;@cup_vehicles",
		"Random Sab's Modern Light Fixed Wing Fighters. Mod Requirements: @Military Aviation",
		"Sab's Turbo Props. Mod Requirements: @Military Aviation",
		"Sab's T-28 Trojan Prop Plane. Mod Requirements: @Secret Weapons",
		"Random Sab's WWII Fixed Wing Fighters. Mod Requirements: @Secret Weapons",
		"F/A-18E and Sukhoi Su-35. Mod Requirements: @SU-35 Flanker E;@FA-18 Super Hornet"
	};
	default = 3;
	};
	class BMR_useVehSide//2
	{
	title = "		Sides limited to respective side vehicles";
	values[]={0,1};
	texts[]={"Unrestricted, all sides share same vehicle pool.","Restricted by side"};
	default = 0;
	};
	class BMR_Dum_Param2//3
	{
	title = ":: Environment ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class BMR_missionLength//4
	{
	title = "		Mission Duration";
	values[]={5,10,15,20,25,30,35,40,45,50,55,60};
	texts[]={"5 minutes","10 minutes","15 minutes","20 minutes","25 minutes","30 minutes","35 minutes","40 minutes","45 minutes","50 minutes","55 minutes","60 minutes"};
	default = 30;
	};
	class BMR_startTime//5
    {
	title = "		Set the start time:";
	values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
	texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
	default = 5;
	};
	class BMR_overcast//6
	{
	title = "		Overcast Sky";
	values[]={0,10,20,30,40,50,60,70,80,90,100,101};
	texts[]={
	"0% Overcast, Better FPS",
	"10% Overcast",
	"20% Overcast",
	"30% Overcast",
	"40% Overcast",
	"50% Overcast",
	"60% Overcast",
	"70% Overcast",
	"80% Overcast, Low lightning chance",
	"90% Overcast, Medium lightning chance",
	"100% Overcast, High lightning chance",
	"Default Editor Set Weather"};
	default = 70;
	};
	class BMR_Dum_Param3//7
	{
	title = ":: A.I. Scaling ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class BMR_AIenabled//8
	{
	title = "		Enable AI Aircraft";
	values[]={0,1,3,5,7,9,13,17,21};
	texts[]={"Disabled","Enabled when less than 2 players present","Enabled when less than 4 players present","Enabled when less than 6 players present","Enabled when less than 8 players present","Enabled when less than 10 players present","Enabled when less than 14 players present","Enabled when less than 18 players present","Enabled when less than 22 players present"};
	default = 9;
	};
	class BMR_AImultiplier//9
	{
	title = "		Player Aircraft to AI Aircraft Ratio. (Effective if AI Aircraft Enabled)";
	values[]={2,3,4,5,6,7,8};
	texts[]={"1 Player Aircraft to 2 AI Aircraft","1 Player Aircraft to 3 AI Aircraft","1 Player Aircraft to 4 AI Aircraft","1 Player Aircraft to 5 AI Aircraft","1 Player Aircraft to 6 AI Aircraft","1 Player Aircraft to 7 AI Aircraft, Hello?","1 Player Aircraft to 8 AI Aircraft, Hello McFly!"};
	default = 8;
	};
	class BMR_AirCraftLimiter//10
	{
	title = "		Limit of Total Aircraft (AI + Players). AI controled aircraft will not spawn when this number is reached. Players can still join";
	values[]={5,9,11,13,15,17,21,23,25,27,29,31,33,35,37,39,41,43,45};
	texts[]={"5","9","11","13","15","17","19","21","23","25","27","29","31","33","35","37","39","41","43","45"};
	default = 23;
	};
	class BMR_Dum_Param4//11
	{
	title = ":: Mission Settings ::";
	values[]={0};
	texts[]={ ""};
	default = 0;
	};
	class BMR_battleAtSea//12
	{
	title = "		Battle at Sea";
	values[]={0,1};
	texts[]={"No, use default inland battle position. (More interesting and less visibility)","Yes, try to find random battle position at sea for FPS sake."};
	default = 0;
	};
	class BMR_autoFlare//13
	{
	title = "		Add Auto Flare Counter Measure Action to Player Aircraft";
	values[]={0,1};
	texts[]={"Disabled","Enabled"};
	default = 1;
	};
	class BMR_flack//14
	{
	title = "		Enable Flak (mostly ambient)";
	values[]={0,1};
	texts[]={"Disabled","Enabled"};
	default = 1;
	};
	class BMR_missingModAction//15
	{
	title = "		Action to take if players are missing mods installed on server which determines Aircraft Pool";
	values[]={0,1};
	texts[]={"Give Warning Notice","Give Warning Notice and End Mission for this player"};
	default = 1;
	};
};