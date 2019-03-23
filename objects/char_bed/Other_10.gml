event_inherited();

if(Player_GetPlot()==PLOT.TRIED_GO_DOWNSTAIRS){
	Dialog_Add("* Go to sleep?&&        {choice 0}Yes        {choice 1}No{choice `TEMP`}");
	_ready=true;
	char_player.moveable=false;
}else{
	Dialog_Add("* My bed...");
}
Dialog_Start();