class Params
{
	class aircraftPoolType//1
	{
	title = "		Aircraft Pool Type";
	values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
	texts[]=
	{
		"Random Helicopters",
		"Random Fixed Wings",
		"Vanilla AH-9 Pawnee",
		"Vanilla WY-55 Hellcat",
		"Vanilla A-164 Wipeout",
		"Vanilla F/18 181 Black Wasp II (Stealth)",
		"Vanill A 143 Buzzard",
		"Vanilla 149 Gryphon",
		"Vanilla To-199 Neophron",
		"Vanilla To-201 Shikra (Stealth)",
		"RHS F-22 Raptor. Mod Requirements: @RHSUSAF",
		"RHS Little Bird (MELB_AH6M). Mod Requirements: @RHSUSAF",
		"Random Sab's Modern Light Fixed Wing Fighters. Mod Requirements: @Sab Military Aviation",
		"Sab's PC-7. Mod Requirements: @Sab Military Aviation",
		"Pilatus and Sab's PC-7. Mod Requirements: @FIR AWS(AirWeaponSystem); @Sab Military Aviation; @Pilatus PC-7",
		"Random Sab's WWII Fixed Wing Fighters. Mod Requirements: @Secret Weapons"		
	};
	default = 3;
	};
	class missionDuration//2
	{
	title = "		Mission Duration";
	values[]={5,10,15,20,25,30,35,40,45,50,55,60};
	texts[]={"5 minutes","10 minutes","15 minutes","20 minutes","25 minutes","30 minutes","35 minutes","40 minutes","45 minutes","50 minutes","55 minutes","60 minutes"};
	default = 30;
	};
	class BMR_startTime//1
    {
	title = "		Set the start time:";
	values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
	texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
	default = 5;
	};
	class BMR_overcast//3
	{
	title = "		Overcast Sky";
	values[]={0,10,20,30,40,50,60,70,80,90,100,101};
	texts[]={
	"0% Overcast",
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
	class missingModAction//4
	{
	title = "		Action to take if players are missing mods installed on server which determines Aircraft Pool";
	values[]={0,1};
	texts[]={"Give Warning Notice","Give Warning and End Mission for Player"};
	default = 1;
	};
	class BMR_AIenabled//5
	{
	title = "		Enable AI Aircraft";
	values[]={0,1,3,5,7,9,13,17,21};
	texts[]={"Disabled","Enabled when less than 2 players present","Enabled when less than 4 players present","Enabled when less than 6 players present","Enabled when less than 8 players present","Enabled when less than 10 players present","Enabled when less than 14 players present","Enabled when less than 18 players present","Enabled when less than 22 players present"};
	default = 9;
	};
	class BMR_AImultiplier//6
	{
	title = "		Player Aircraft to AI Aircraft Ratio. (Effective if AI Aircraft Enabled)";
	values[]={2,3,4,5,6,7,8};
	texts[]={"1 Player Aircraft to 2 AI Aircraft","1 Player Aircraft to 3 AI Aircraft","1 Player Aircraft to 4 AI Aircraft","1 Player Aircraft to 5 AI Aircraft","1 Player Aircraft to 6 AI Aircraft","1 Player Aircraft to 7 AI Aircraft, Hello?","1 Player Aircraft to 8 AI Aircraft, Hello McFly!"};
	default = 6;
	};
	class BMR_AirCraftLimiter//7
	{
	title = "		Limit of Total Aircraft (AI + Players). No more AI will spawn when this number is reached. Players can still join";
	values[]={5,9,11,13,15,17,21,23,25,27,29,31,33,35,37,39,41,43,45};
	texts[]={"5","9","11","13","15","17","19","21","23","25","27","29","31","33","35","37","39","41","43","45"};
	default = 23;
	};
	class BMR_autoFlare//8
	{
	title = "		Add Auto Flare Counter Measure Action to Player Aircraft";
	values[]={0,1};
	texts[]={"Disabled","Enabled"};
	default = 1;
	};
};