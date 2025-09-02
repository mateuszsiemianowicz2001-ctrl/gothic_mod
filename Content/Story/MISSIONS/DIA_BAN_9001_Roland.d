// *Script was make in Easy Dialog Maker (EDM)

//========================================
//-----------------> OPCJA *KONIEC* 
//========================================

INSTANCE DIA_Roland_EXIT(C_INFO)
{
	npc             = BAN_9001_Roland;
	nr              = 999;
	condition	= DIA_Roland_EXIT_Condition;
	information	= DIA_Roland_EXIT_Info;
	permanent	= 1;
	description     = "KONIEC";
};

FUNC INT DIA_Roland_EXIT_Condition()
{
	return 1;
};

FUNC VOID DIA_Roland_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> HELLO1
//========================================

INSTANCE DIA_Roland_HELLO1 (C_INFO)
{
   npc          = BAN_9001_Roland;
   nr           = 1;
   condition    = DIA_Roland_HELLO1_Condition;
   information  = DIA_Roland_HELLO1_Info;
   permanent	= 0;
   description	= "Witaj";
};

FUNC INT DIA_Roland_HELLO1_Condition()
{
    return 1;
};

FUNC VOID DIA_Roland_HELLO1_Info()
{
    AI_Output (other, self ,"DIA_Roland_HELLO1_15_01"); //Witaj Rolandzie
    AI_Output (self, other ,"DIA_Roland_HELLO1_12_02"); //No nareszczie jesteœ.
    AI_Output (self, other ,"DIA_Roland_HELLO1_12_03"); //Ju¿ tydzieñ na ciebie czekamy.
    AI_Output (other, self ,"DIA_Roland_HELLO1_15_04"); //Jak wygl¹da sytuacja?
    AI_PlayAni (self, "T_SEARCH");
    AI_Output (self, other ,"DIA_Roland_HELLO1_12_05"); //Jak narazie rozbiliœmy obóz i czekaliœmy na ciebie.
    AI_Output (self, other ,"DIA_Roland_HELLO1_12_06"); //Pogadaj z Wiktorem on ci wszystko wyjaœni.
    MIS_znajomi = LOG_RUNNING;

    Log_CreateTopic            (CH1_znajomi, LOG_MISSION);
    Log_SetTopicStatus       (CH1_znajomi, LOG_RUNNING);
    B_LogEntry                     (CH1_znajomi,"Roland poleci³ mi porozmawiaæ z Wiktorem, pewnie ma ju¿ jakiœ plan co do naszego pobytu w koloni.");

 
   
    AI_StopProcessInfos	(self);
};

