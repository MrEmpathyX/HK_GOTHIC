//**********************************************************************************
//	Heiltrunk
//**********************************************************************************
instance ITWr_Addon_Health_04		(C_Item)
{
	name 				=	"Mikstura lecznicza � przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1000;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Heilrezept_04;
	scemeName			=	"MAP";
	description			= 	"Pe�nia �ycia";
	
	TEXT[2]				=	"Warzenie silnej mikstury.";
	TEXT[3]				=	"Wymagana jest znajomo�� eliksiru leczenia.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

func void Use_Heilrezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == true)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Health_04] = true;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do przygotowania mikstury leczniczej potrzebne s� 3 esencje lecznicze oraz 1 rdest polny.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Tworzenie mikstury leczniczej:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebny jest jeden rdest polny, a tak�e trzy esencje lecznicze.");	
					Doc_PrintLines	( nDocID,  0, "Po��cz je zgodnie z przepisem na tworzenie eliksiru leczenia.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mikstura mo�e zosta� przygotowana jedynie przez alchemika, kt�ry zna przepis na eliksir leczenia.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Manatrunk
//**********************************************************************************
instance ITWr_Addon_Mana_04		(C_Item)
{
	name 				=	"Mikstura many � przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1500;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Manarezept_04;
	scemeName			=	"MAP";

	description			= 	"Pe�nia many";
	
	TEXT[2]				=	"Warzenie silnej mikstury.";
	TEXT[3]				=	"Wymagana jest znajomo�� eliksiru many.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

func void Use_Manarezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == true)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = true;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do przygotowania mikstury many potrzebne s� 3 esencje many oraz 1 rdest polny.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Warzenie mikstury many:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebny jest jeden rdest polny, a tak�e trzy esencje many.");	
					Doc_PrintLines	( nDocID,  0, "Po��cz je zgodnie z przepisem na tworzenie eliksiru many.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ta mikstura mo�e by� przygotowana jedynie przez alchemika, kt�ry zna przepis na eliksir many.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Rezept von Miguel (Minecrawler Trank)
//**********************************************************************************
instance ITWr_Addon_MCELIXIER_01		(C_Item)
{
	name 				=	"Przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MCELIXIER_01;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Przepis mikstury przemiany duszy";
	Text[1]				= 	"Ta mikstura przywraca utracone wspomnienia.";
};

func void Use_MCELIXIER_01 ()
{
		Knows_MCELIXIER = true;
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Mikstura przemiany duszy");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Do przyrz�dzenia tej mikstury potrzebna jest wydzielina z dw�ch ��de� krwiopijc�w.");	
					Doc_PrintLines	( nDocID,  0, "Dodaj do tego jeden ekstrakt many, a tak�e esencj� lecznicz�.");	
					Doc_PrintLines	( nDocID,  0, "W ko�cu dosyp do ca�o�ci woreczek czerwonego pieprzu."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tylko do�wiadczony alchemik wie, jak pobra� wydzielin� z ��d�a potrzebn� do zrobienia tej mikstury.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Rezept f�r gr�nene Novizen
//**********************************************************************************
instance ITWr_Addon_Joint_01		(C_Item)
{
	name 				=	"Zielony nowicjusz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Joint_Rezept_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				= 	"Le�a� w skrzyni Fortuna";
};

func void Use_Joint_Rezept_01 ()
{
		var int nDocID;
	
		Green_Extrem = true;
		
		
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Der gr�ne Novize"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "(...) Te �odygi mo�na ca�kiem nie�le zwija�, ale nie ma por�wnania z tym, co mieli�my w obozie na bagnie.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Je�li wezm� wyci�g z dw�ch �odyg bagiennego ziela i zmieszam go z polnym rdestem, mo�na to b�dzie por�wna� do zielonego nowicjusza."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zielony nowicjusz �agodzi wszystkie b�le i oczyszcza umys�.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Schnapsbrennen Rezept
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept		(C_Item)
{
	name 				=	"Przepis na M�ot Lou";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	70;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Jak przygotowa� M�ot Lou.";
};

func void UseLouRezept ()
{
		Knows_LousHammer = true;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Przepis na M�ot Lou"					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Sk�adniki mocnej nalewki:");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Bierzesz butelk�, a tak�e dwie rzepy i spor� gar�� bagiennego ziela.");	
					Doc_PrintLines	( nDocID,  0, "Dodajesz do tego k�y b�otnego w�a."					);
					Doc_PrintLines	( nDocID,  0, "Mieszasz w butelce i gotujesz z dzia�k� rumu."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Na zdrowie.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wed�ug starego �lepca lepiej nie wdycha� wyziew�w!");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Doppelhammer
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept2		(C_Item)
{
	name 				=	"Przepis na podw�jny M�ot Lou";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	140;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept2;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Jak przygotowa� podw�jny M�ot Lou.";
};

func void UseLouRezept2 ()
{
		Knows_SchlafHammer = true;
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Podw�jny M�ot Lou"					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "We� stary, dobry M�ot Lou i przedestyluj go jeszcze raz.");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Ten wywar mo�e przyrz�dzi� jedynie kto� do�wiadczony w destylacji.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Profan mo�e od tego nie tylko o�lepn��, ale te� ca�kiem wyzion�� ducha.");	
					
					Doc_Show		( nDocID );

};

//**********************************************************************************
//	Piratentod
//**********************************************************************************
instance ITWr_Addon_Piratentod		(C_Item)
{
	name 				=	"Szybki �led�";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezeptPiratentod;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				=	"Przepis na przygotowanie Szybkiego �ledzia.";
};
func void UseRezeptPiratentod ()
{
		Knows_SchnellerHering = true;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Szybki �led� (m�j przepis)"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Ma�y klinek dla porz�dnych ch�opak�w");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Jak zwykle, potrzebna b�dzie butelka. Wlej do niej jedn� porcj� rumu i dodaj �wie�� ryb�.");	
					Doc_PrintLines	( nDocID,  0, "Kiedy tylko p�yn zrobi si� ��ty, wyjmij ryb� i dopraw gar�ci� soli"					);
					Doc_PrintLines	( nDocID,  0, "�wie�o zebranego z�batego ziela."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Uwa�aj! Ta nalewka naprawd� stawia na nogi.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_Show		( nDocID );

};

//------------------------------------------------------------------------------------------
instance Fakescroll_Addon (C_Item)
{	
	name 					=	"Kawa�ek papieru";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	hp 						=	5;
	hp_max 					=	5;
	weight 					=	1;
	value 					=	0;

	visual 					=	"Fakescroll.3ds";
	material 				=	MAT_LEATHER;
	
	scemeName				=	"MAPSEALED";	
	
	description				= name;
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

//------------------------------------------------------------------------------------------
instance ItWr_Addon_AxtAnleitung (C_ITEM)
{	
	name 				=	"Przepis na bandycki top�r";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 					=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAxtAnleitung;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Instrukcja stworzenia lekkiego, ostrego topora";
};

func void UseAxtAnleitung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Bandycki top�r"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Jednor�czny top�r");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Osoba znaj�ca podstawy kowalstwa mo�e stworzy� specjalny top�r.");	
					Doc_PrintLines	( nDocID,  0, "Potrzebne s� dwa kawa�ki rozgrzanego do bia�o�ci �elaza."					);
					Doc_PrintLines	( nDocID,  0, "Jedna bry�ka rudy i trzy komplety k��w wilk�w, z�baczy lub podobnych bestii."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Ruda i k�y zbijane s� w jedn� ca�o�� na kowadle.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Taki top�r jest �atwy we w�adaniu i zadaje spore");
					Doc_PrintLines	( nDocID,  0, "obra�enia.");	
					Doc_Show		( nDocID );
};