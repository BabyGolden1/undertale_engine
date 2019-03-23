event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PLOT)==PLOT.TRIED_GO_DOWNSTAIRS){
	Dialog_Add("* Go to sleep?&        {choice 0}Yes        {choice 1}No{choice}");
	_ready=true;
}else{
	Dialog_Add("* My bed...");
}
Dialog_Start();