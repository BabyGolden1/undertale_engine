///@arg lang_id/name
var LANG=argument[0];

if(!Lang_IsExists(LANG)){
	return false;
}

if(is_real(LANG)){
	LANG=Lang_GetName(LANG);
}

if(!file_exists(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_STRING)){
	return false;
}

var STR=Lang_LoadFileToString(GMU_LANG_PATH_BASE+LANG+"/"+GMU_LANG_PATH_STRING);
var proc=0;
var str_mode=false;
var str_input_name=true;
var str_name="";
var str_text="";
var MAP=global._gmu_lang_string;
while(string_length(STR)>proc){
	proc+=1;
	var CHAR=string_char_at(STR,proc);
	if(CHAR="\""){
		str_mode=!str_mode;
		
		if(!str_mode){
			str_input_name=!str_input_name;
			
			if(str_input_name){
				ds_map_replace(MAP,str_name,str_text);
				str_name="";
				str_text="";
			}
		}
	}else if(str_mode){
		if(CHAR!="\t" && CHAR!="\n" && CHAR!="\r"){
			if(CHAR=="\\"){
				proc+=1;
				CHAR=string_char_at(STR,proc);
				
				if(CHAR=="n"){
					CHAR="\n";
				}
				if(CHAR=="\\"){
					CHAR="\\"
				}
			}
			if(str_input_name){
				str_name+=CHAR;
			}else{
				str_text+=CHAR;
			}
		}
	}
}
return true;