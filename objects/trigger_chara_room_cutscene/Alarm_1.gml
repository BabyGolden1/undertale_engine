fader.color=c_white;
Dialog_Add("* No...&{sleep 30}* N-{sleep 20}no...{pause}{clear}* S-{sleep 20}stop...&{sleep 30}* {speed 8}STOP IT!{speed 2}{pause}{clear}* Let go of me...&{sleep 30}* I said, {sleep 20}let {sleep 20}GO!{pause}{clear}{effect 0}{script `Fader_Fade` 1 0 4 0}* AH!{pause}{clear}* M- {sleep 30}my...&{sleep 30}* My back...{pause}{clear}{effect -1}{voice -1}{speed 4}* (Weak sobs...)");
Dialog_Start();

_ready=true;