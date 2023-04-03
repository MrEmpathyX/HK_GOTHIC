instance PAL_003_Blizna(Npc_Default)
{
	// ------ NSC ------
	name 		= "Blizna";
	guild 		= GIL_PAL;
	id 			= 003;
	voice 		= 10;
	flags       = 0;										//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	// MASTER / STRONG / NORMAL / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_Orkschlaechter);
	EquipItem           (self, ItRw_Crossbow_H_02);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_Scar, BodyTex_N, Pancerz_Magnata);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 70); //Grenzen für Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_003;
};

FUNC VOID Rtn_Start_003()
{
	TA_Smoke_Joint      (6,00,8,00, "OCC_BARONS_GREATHALL_CENTER_FRONT");
	TA_Smalltalk		(8,00,22,00,"OCC_BARONS_GREATHALL_CENTER_FRONT");
	TA_Sleep_Deep 		(22,00,08,00,"OCC_BARONS_UPPER_RIGHT_ROOM_BED3");
};