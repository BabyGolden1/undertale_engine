///@arg phone_id
var PHONE=argument[0];

if(object_exists(PHONE)){
	return (PHONE==phone || object_get_parent(PHONE)==phone);
}else{
	return false;
}