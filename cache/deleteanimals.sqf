//Delete unneeded animal by SLBk11 remade for wasteland by Isaac Harding
//You are open to use this but please let me know, TS: 142.4.215.124 :)
waitUntil {
	{
		if(agent _x isKindOf "Snake_random_F" || agent _x isKindOf "Rabbit_F" || agent _x isKindOf "Bird") then {deleteVehicle agent _x};
	} forEach agents;
	sleep 10;
	false;
};