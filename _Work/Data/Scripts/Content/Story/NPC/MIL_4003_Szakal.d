
instance MIL_4003_Szakal (Npc_Default)
{
	// ------ NSC ------
	name 		= "Szakal"
	guild 		= GIL_MIL;
	id 			= 4003;
	voice 		= 12;
	flags       = 0;										//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG //Master/ STRONG / NORMAL / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, itmw_sturmbringer);
	EquipItem           (self, itrw_crossbow_h_01);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_Jackal, BodyTex_N, C_Pancerz_Straznika);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abh�ngig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 60); //Grenzen f�r Talent-Level liegen bei 30 und 60

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_4003;
};

FUNC VOID Rtn_Start_4003 ()
{
	TA_Stand_Guarding	(1,00,21,00,"OCC_GATE_OUTSIDE");
	TA_Sleep_Deep 		(21,00,01,00,"OCC_BARONS_UPPER_RIGHT_ROOM_BED1");
};
