player createDiaryRecord ["Diary", ["Credits","
	<br/>Mission Author - Jigsor =BMR=	<br/>
	<br/>If you feel graciously appreciative to the mission author you may consider clicking here to copy link to clipboard: <execute expression=""copyToClipboard 'https://www.paypal.me/MissionDev';"">https://www.paypal.me/MissionDev</execute> and donating.
	<br/>
	<br/>--------------------------- Scripts -----------------------------
	<br/>ICE_HUD by Iceman77
	<br/>All others by Jigsor =BMR=
	<br/>
	<br/>-------------------------- Functions ----------------------------
	<br/>x_reload by Xeno
	<br/>All others by Jigsor =BMR=
"]];

private _serverName = format ["%1", serverName];
private _briefingName = format ["%1", briefingName];
private _worldName = format [".%1", worldName];
private _missionName = _briefingName + _worldName;
private _info ="<br/><font size='20'>SERVER INFO</font><br/><br/>Server Name: ";
_info = _info + _serverName;
_info = _info + "<br/><br/>Mission Name: ";
_info = _info + _missionName;

_info = _info +"
	<br/>
	<br/><font size='20'>SETTINGS</font>
	<br/>
	<br/>Press H key for View Distance, Digital Heading, Status Hud, Ear Plugs and Friendly 3D Icon toggles.
	<br/>
	<br/>Status Hud Icon Legend:
	<br/><br/><img image='\A3\Weapons_F\Data\UI\gear_item_compass_ca.paa' widwidth='32' height='32'/>--  Local Player/Vehicle General Compass Heading
	<br/><br/>  <img image='images\fps.paa' widwidth='16' height='16'/>   --  Frames per Second
	<br/><br/>  <img image='images\health.paa' widwidth='16' height='16'/>   --  Health
	<br/>
	<br/>Join, Create, or Leave Squads/Groups with U key menu.
	<br/>
	<br/>Auto Flare Countermeasure action maybe available depending on mission parameters. Flares are not depleted from aircraft's loadout. It generates its own unlimited supply.
	<br/>
	<br/>Friendly 2D players icons and names are visible on the map and GPS (right Ctrl + m).
	<br/>
	<br/>Press F3 or Assigned User Action 3 to reverse planes when stoped.
	<br/>
	<br/><font size='20'>Aircraft Service  </font><img image='\A3\EditorPreviews_F\Data\CfgVehicles\Sign_Circle_F.jpg' widwidth='32' height='32'/>
	<br/>
	<br/>Fly into the hoop before it moves to new random location near objective icon to repair, refuel, rearm you aircraft and heal all crew.
	<br/>The service hoop is randomly repositioned approximately every minute.
	<br/>
	<br/>All the action is near the objective icon.
	<br/>
	<br/><font size='20'>Win - Loose  </font><img image='\A3\EditorPreviews_F\Data\CfgVehicles\Land_Trophy_01_gold_F.jpg' widwidth='32' height='32'/><font size='32'> / </font><img image='\A3\EditorPreviews_F\Data\CfgVehicles\Land_ToiletBox_F.jpg' widwidth='32' height='32'/>
	<br/>
	<br/>The side with the most points after the time limit wins.
	<br/>
	<br/><font size='20'>Server Host  </font><img image='\A3\EditorPreviews_F\Data\CfgVehicles\Land_PCSet_01_case_F.jpg' widwidth='32' height='32'/>
	<br/>
	<br/>This is not a single player mission. Mission must be hosted as multiplayer host or dedicated server to ensure compatibility even if playing solo.
	<br/>
	<br/>Increase the chance of random lightning by setting lobby option (Overcast Sky) to (80% Overcast) or higher.
	<br/>
	<br/>This mission was designed to automatically add modded Aircraft to Vehicle Pool which is created by server. So to work correctly, mods which contain the aircraft and units belonging to the aircraft should be installed on server and client.
	<br/>
	<br/>If any of the following 3 WWII mods are detected then sever will filter all vanilla aircraft from vehicle pool - Iron Front, Faces of War, Sabers Secret Weapons.
	<br/>
	<br/>Add helicopter and planes class names in fn_vehBlackList.sqf to black list useless aircraft in this case typically lacking weapons.
	<br/>The mission will automatically try to remove weaponless types but in some cases they are not removed for reasons.
	<br/>
	<br/>Warning! Zeusing in any NPCs will break the AI regulation system if AI Aircraft is enabled in parameters.
";
player createDiaryRecord ["Diary", ["INFO", _info]];