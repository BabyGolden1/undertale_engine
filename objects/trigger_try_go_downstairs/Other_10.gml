event_inherited();

Dialog_Add("* I can't do it while He's&  awake...{pause}{clear}* Maybe I should just go to bed...");
Dialog_Start();

_ready=true;
char_player.moveable=false;

Player_SetPlot(PLOT.TRIED_GO_DOWNSTAIRS);