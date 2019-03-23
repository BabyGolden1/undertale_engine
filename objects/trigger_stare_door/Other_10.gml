event_inherited();

Dialog_Add("* You stare at your doorframe...{pause}{clear}* It's pulled off its hinges..");
Dialog_Start();

Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PLOT,PLOT.DOOR_STARED);