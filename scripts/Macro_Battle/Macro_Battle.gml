enum BATTLE_STATE{
	MENU,
	DIALOG,
	TURN_PREPARATION,
	IN_TURN,
	BOARD_RESETTING,
	RESULT
};

enum BATTLE_MENU{
	BUTTON,
	FIGHT_TARGET,
	FIGHT_AIM,
	FIGHT_ANIM,
	FIGHT_DAMAGE,
	ACT_TARGET,
	ACT_ACTION,
	ITEM,
	MERCY
};

enum BATTLE_MENU_RESULT{
	FIGHT,
	ACT,
	ITEM,
	SPARE,
	FLEE
};

enum BATTLE_ENEMY_EVENT{
	INIT,
	BATTLE_START,
	MENU_START,
	MENU_SWITCH,
	MENU_CHOICE_SWITCH,
	MENU_END,
	DIALOG_START,
	DIALOG_END,
	TURN_PREPARATION_START,
	TURN_PREPARATION_END,
	TURN_START,
	TURN_END,
	BOARD_RESETTING_START,
	BOARD_RESETTING_END
};

enum BATTLE_SOUL_EVENT{
	BULLET_COLLISION,
	HURT
};

enum BATTLE_BULLET_EVENT{
	SOUL_COLLISION,
	TURN_END
};

enum BATTLE_TURN_EVENT{
	TURN_PREPARATION_START,
	TURN_PREPARATION_END,
	TURN_START,
	TURN_END
};

enum BATTLE_MENU_FIGHT_EVENT{
	ANIM,
	DAMAGE,
	END
};

enum BATTLE_BOARD{
	X=320,
	Y=320,
	UP=65,
	DOWN=65,
	LEFT=283,
	RIGHT=283
};

enum BATTLE_TURN{
	TIME,
	BOARD_X,
	BOARD_Y,
	BOARD_UP,
	BOARD_DOWN,
	BOARD_LEFT,
	BOARD_RIGHT,
	BOARD_MOVE_TWEEN,
	BOARD_MOVE_EASE,
	BOARD_MOVE_MODE,
	BOARD_MOVE_SPEED,
	BOARD_MOVE_DURATION,
	BOARD_SIZE_TWEEN,
	BOARD_SIZE_EASE,
	BOARD_SIZE_MODE,
	BOARD_SIZE_SPEED,
	BOARD_SIZE_DURATION,
	BOARD_RESET_X,
	BOARD_RESET_Y,
	BOARD_RESET_UP,
	BOARD_RESET_DOWN,
	BOARD_RESET_LEFT,
	BOARD_RESET_RIGHT,
	BOARD_RESET_MOVE_TWEEN,
	BOARD_RESET_MOVE_EASE,
	BOARD_RESET_MOVE_MODE,
	BOARD_RESET_MOVE_SPEED,
	BOARD_RESET_MOVE_DURATION,
	BOARD_RESET_SIZE_TWEEN,
	BOARD_RESET_SIZE_EASE,
	BOARD_RESET_SIZE_MODE,
	BOARD_RESET_SIZE_SPEED,
	BOARD_RESET_SIZE_DURATION,
	SOUL_X,
	SOUL_Y
};

enum BATTLE_TURN_BOARD_TRANSFORM_MODE{
	SPEED,
	DURATION
};