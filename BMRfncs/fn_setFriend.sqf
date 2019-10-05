if (isServer) then {
	EAST setFriend [WEST, 0];
	EAST setFriend [RESISTANCE, 0];
	WEST setFriend [EAST, 0];
	WEST setFriend [RESISTANCE, 0];
	RESISTANCE setFriend [EAST, 0];
	RESISTANCE setFriend [WEST, 0];
};