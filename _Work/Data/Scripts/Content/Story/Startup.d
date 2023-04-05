// *******************************************************************
// Startup und Init Funktionen der Level-zen-files
// -----------------------------------------------
// Die STARTUP-Funktionen werden NUR beim ersten Betreten eines Levels 
// (nach NewGame) aufgerufen, die INIT-Funktionen jedesmal
// Die Funktionen müssen so heissen wie die zen-files
// *******************************************************************

// *********
// GLOBAL
// *********

func void STARTUP_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor STARTUP_<LevelName>)
	Game_InitGerman();
	LeGo_Init (LeGo_All); & ~LeGo_Bloodsplats);
};

func void INIT_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor INIT_<LevelName>)
	Game_InitGerman();
};

// ------ World -------
FUNC VOID STARTUP_World()
{	
	// --- NPC-POCZ¥TEK HISTORII--- 
	Wld_InsertNpc (PAL_001_Gomez, 	     "OCC_BARONS_GREATHALL_THRONE");
	Wld_InsertNpc (PAL_002_Kruk, 	     "OCC_BARONS_GREATHALL_CENTER_LEFT");
	Wld_InsertNpc (PAL_003_Blizna, 	     "OCC_BARONS_GREATHALL_CENTER_FRONT");
	Wld_InsertNpc (PAL_004_Arto, 	     "FP_SMALLTALK_A_OC_109");
	Wld_InsertNpc (MIL_005_Baraback, 	 "OCC_GATE_OUTSIDE");
	// Potwory
	// Pochodnie
	Wld_SetObjectRoutine (00,00,"OC_FIREPLACE_HIGH2_05",1);
	};


	


