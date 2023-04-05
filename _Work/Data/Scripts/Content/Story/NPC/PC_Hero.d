instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Milten";
	guild		= GIL_NONE;
	id			= 0;
	voice		= 15;
	level		= 0;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 1000;
	lp				= 10;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 20;
	attribute[ATR_DEXTERITY] 		= 0;
	attribute[ATR_MANA_MAX] 		= 20;
	attribute[ATR_MANA] 			= 20;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS] 		= 100;
	
	// ------ visuals ------
	//B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, NO_ARMOR);
	
	Mdl_SetVisual (self,"HUMANS.MDS");
	// ------ Visual ------ "body_Mesh",		bodyTex			SkinColor	headMesh,			faceTex,		teethTex,	armorInstance	
	Mdl_SetVisualBody (self, "hum_body_Naked0", 9,				0,			"Hum_Head_Bald", 	FACE_N_Player,	0, 			NO_ARMOR);
	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 10); 
};