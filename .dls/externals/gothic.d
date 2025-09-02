var C_NPC hero;
var C_NPC self;
var C_NPC other;
var C_NPC victim;
var C_ITEM item;
var instance NULL;
var instance instance_help;
/// NPC zielt mit Fernkampfwaffe auf Target-NPC
func void AI_AimAt(var c_npc attacker, var c_npc target) {};
/// richtet den Nsc am Freepoint aus (im Spacer gesetzte Pfeilrichtung)
func void AI_AlignToFP(var c_npc self) {};
/// richtet den Nsc am Waypoint aus (im Spacer gesetzte Pfeilrichtung)
func void AI_AlignToWP(var c_npc self) {};
/// die angegeben Instanz (self), gibt eine Frage aus und verweist auf die selbst zu definierenden Funktionen,
/// die f�r die F�lle Spieler sagt ja (Daumen nach oben) und Spieler sagt nein (Daumen unten) vorhanden sein m�ssen
func void AI_Ask(var c_npc self, var func anseryes, var func answerno) {};
/// wie AI_Ask, nur das au�er den Funktionen auch noch Strings f�r die Antworten Ja/Nein mit angegeben werden k�nnen
func void AI_AskText(var c_npc self, var func funcyes, var func funcno, var string stryes, var string strno) {};
/// Startet Kampf AI (sollte in der ZS_Attack-Loop stehen)
/// Es wird das interne Ziel verwendet, das mit Npc_SetTarget() oder Npc_GetNextTarget() gesetzt
/// wurde.
func void AI_Attack(var c_npc self) {};
/// Noch nicht dokumentiert
func void AI_CanSeeNpc(var instance n0, var instance n1, var func f2) {};
/// Noch nicht dokumentiert
func void AI_CombatReactToDamage(var instance n0) {};
/// Setze Tagesablauf fort
/// Enth�lt Standup
func void AI_ContinueRoutine(var c_npc self) {};
/// Der Befehl ist als Overlay-Message implementiert. Das heisst, dass er neben anderen Nachrichten
/// aktiv bleibt. Er wird erst beendet, wenn der NPC eine Parade (ausgeloest durch die Attacke eines
/// anderen NPCs) durchgefuert hat.
func void AI_Defend(var c_npc self) {};
/// Der Nsc weicht ein St�ck nach hinten aus
func void AI_Dodge(var c_npc npc) {};
/// Equipte Waffe wird gezogen
func void AI_DrawWeapon(var c_npc n0) {};
/// Item(itemid) wird auf den Boden fallen gelassen
func void AI_DropItem(var c_npc self, var int itemid) {};
/// Noch nicht dokumentiert
func void AI_DropMob(var instance n0) {};
/// Ziehe die angebene R�stung dem NSC "owner" an, diese muss sich in seinem Inventory befinden.
func void AI_EquipArmor(var c_npc owner, var c_item armor_from_owners_inventory) {};
/// Wunder, Wunder hier wird die beste im Inventory vorhandene R�stung angezogen
func void AI_EquipBestArmor(var c_npc self) {};
/// sucht im Inventory nach der besten Nahkampfwaffe und h�ngt sie an den G�rtel
func void AI_EquipBestMeleeWeapon(var c_npc self) {};
/// sucht im Inventory nach der besten Fernkampfwaffe und ploppt sie auf den R�cken der Instanz
func void AI_EquipBestRangedWeapon(var c_npc self) {};
/// F�hrt den logischen Finishing Move inklusive Anis aus den Skripten heraus aus
func void AI_FinishingMove(var c_npc self, var c_npc other) {};
/// Der Befehl muss, wie AI_Attack(), in der ZS-Loop regelmaessig aufgerufen werden und setzt voraus, dass
/// vorher mit Npc_SetTarget( self, ) ein Gegner gesetzt wurde, vor dem der Npc fliehen soll.
func void AI_Flee(var c_npc self) {};
/// Sucht sich einen Freepoint im Umkreis von 20m vom NSC, bewegt sich dorthin und richtet sich entsprechend aus.
/// Suchkriterium wie bei Wld_IsFPAvailable()
func void AI_GotoFP(var c_npc self, var string fpname) {};
/// "self" geht zu "item"
func void AI_GotoItem(var c_npc self, var c_item item) {};
/// wie AI_GotoFP() allerdings Suchkriterium wie bei Wld_IsNextFPAvailable()
func void AI_GotoNextFP(var c_npc self, var string fpname) {};
/// "self" geht zu "other"
func void AI_GotoNpc(var c_npc self, var c_npc other) {};
/// Npc l�uft zum Sound
func void AI_GotoSound(var c_npc n0) {};
/// Npc-Instanz l�uft zum namentlich angegeben Waypoint
func void AI_GotoWP(var c_npc n0, var string s0) {};
/// Schaue auf einen Wegpunkt (Wegpunktname angeben) oder auf ein anderes Objekt (Vobname angeben)
func void AI_LookAt(var c_npc self, var string name) {};
/// Schaue zu einem NSC
func void AI_LookAtNpc(var c_npc self, var c_npc other) {};
/// gibt die M�glichkeit nach bestimmten Items zu suchen (z.B.:Das goldene Schwert der Zerst�rung, wenn vorhanden)
func void AI_LookForItem(var c_npc self, var int instance) {};
/// Cutscene mit entsprechender Id wird abgenudelt
func void AI_Output(var c_npc self, var c_npc target, var string outputname) {};
/// Outputbefehl um Svms abzuspielen
func void AI_OutputSVM(var c_npc self, var c_npc target, var string svmname) {};
/// wie AI_OutputSVM, wartet jedoch NICHT mit der Ausf�hrung des n�chsten AI_...-Befehls, bis
/// das SVM zuende gespielt wird. (F�r Kommentare kurz vor und w�hrend dem Kampf!)
func void AI_OutputSVM_Overlay(var c_npc self, var c_npc target, var string svmname) {};
/// Npc-Instanz spielt die angegebene Animation ab
func void AI_PlayAni(var c_npc n0, var string s0) {};
/// Beim Abspielen einer Ani mit diesem Befehl kann ein Bodystate angemeldet werden
func void AI_PlayAniBS(var c_npc npc, var string aniname, var int bodystate) {};
/// Eine Cutscene aus den Scripten heraus starten
func void AI_PlayCutscene(var c_npc self, var string csname) {};
/// Zeige auf einen Wegpunkt (Wegpunktname angeben) oder auf ein anderes Objekt (Vobname angeben)
func void AI_PointAt(var c_npc self, var string name) {};
/// Zeige auf einen NSC
func void AI_PointAtNpc(var c_npc self, var c_npc other) {};
/// Noch nicht dokumentiert
func void AI_ProcessInfos(var instance n0) {};
/// Noch nicht dokumentiert
func void AI_QuickLook(var instance n0, var instance n1) {};
/// NSC kurz ( 2 sec) anschauen ( nur Kopf bewegt sich )
func void AI_Quicklook(var c_npc self, var c_npc other) {};
/// Ziehe equippte Nahkampfwaffe
func void AI_ReadyMeleeWeapon(var c_npc self) {};
/// Ziehe equippte Fernkampfwaffe
func void AI_ReadyRangedWeapon(var c_npc self) {};
/// Lasse zauberspruch auf Hand erscheinen.
func void AI_ReadySpell(var c_npc self, var int spellid, var int investmana) {};
/// Gezogene Waffe wird weggesteckt
func void AI_RemoveWeapon(var c_npc n0) {};
/// Setze alle NSCs im Umkreis von x cm in entsprechenden AI-Zustand
/// -> FINGER WEG!!! (SN)
/// @param VORSICHT - Diese Funktion ist Buggy, wird aber derzeit auch NICHT verwendet!
func void AI_SetNpcsToState(var c_npc self, var func aistatefunc, var int radius) {};
/// Noch nicht dokumentiert
func void AI_SetWalkMode(var instance n0, var int i1) {};
/// gibt an mit welchem Walkmode Run etc der Character durch das Level l�uft
/// @param NPC_RUN - Rennen
/// @param NPC_WALK - Gehen
/// @param NPC_SNEAK - Schleichen
/// @param NPC_RUN_WEAPON - Rennen mit gezogener Waffe
/// @param NPC_WALK_WEAPON - Gehen mit gezogener Waffe
/// @param NPC_SNEAK_WEAPON - Schleichen mit gezogener Waffe
func void AI_SetWalkmode(var c_npc n, var int n0) {};
/// NPC feuert mit Fernkampfwaffe auf Target-NPC
func void AI_ShootAt(var c_npc attacker, var c_npc target) {};
/// - Ist der Nsc in einem Animatinsstate, wird die passende R�cktransition abgespielt.
/// - Benutzt der NSC gerade ein MOBSI, poppt er ins stehen.
func void AI_StandUp(var c_npc self) {};
/// Wie AI_StandUp(), jedoch werden keine R�cktransitionen abgespielt, sondern auch dort wird
/// sofort in den Grundzustand "gepoppt". Wichtig f�r sehr eilige Situationen!
func void AI_StandUpQuick(var c_npc self) {};
/// Versetzt den Nsc aus den Skripten heraus in den entsprechenden ZS (what),
/// stateBehaviour sagt : "0"-aktuellen Zustand abbrechen "1"-aktuellen Zustand erst ordnungsgem�� beenden (End-Funktion aufrufen) ).
func void AI_StartState(var c_npc self, var func what, var int statebehaviour, var string wpname) {};
/// NPC beendet vorher gestartetes Zielen mit Fernkampfwaffe.
func void AI_StopAim(var c_npc attacker) {};
/// wieder geradeaus schauen
func void AI_StopLookAt(var c_npc self) {};
/// nicht mehr auf etwas zeigen
func void AI_StopPointAt(var c_npc self) {};
/// Der DialogModus wird beendet (Multiple Choice-Dialog)
func void AI_StopProcessInfos(var c_npc npc) {};
/// der Npc nimmt mit dieser Funktion die globale Item-Instanz auf
func void AI_TakeItem(var c_npc self, var c_item item) {};
/// Noch nicht dokumentiert
func void AI_TakeMob(var instance n0, var string s1) {};
/// teleportiert den NSC zur angegebenene Location
func void AI_Teleport(var c_npc self, var string waypoint) {};
/// Der NSC "self" dreht dem NSC "other" den R�cken zu.
func void AI_TurnAway(var c_npc n0, var c_npc n1) {};
/// drehe Dich zum angegeben (zweiten) Npc um
func void AI_TurnToNpc(var c_npc n0, var c_npc n1) {};
/// Charakter dreht sich zur Ger�uschquelle
func void AI_TurnToSound(var c_npc self) {};
/// Unequippe aktuelle R�stung
func void AI_UnequipArmor(var c_npc self) {};
/// Unequippe alle Waffen
func void AI_UnequipWeapons(var c_npc self) {};
/// lasse zauberspruch aus Hand verschwinden
func void AI_UnreadySpell(var c_npc self) {};
/// Item bis zum Ende benutzen
func void AI_UseItem(var c_npc self, var int iteminstance) {};
/// Item benutzen bis zum angegebenen State
func void AI_UseItemToState(var c_npc self, var int iteminstance, var int state) {};
/// Benutze Mob mit angegebenen Schema-Namen bis zum Zustand "targetState". Wird diese Funktion aufgerufen
/// und der angegebene 'targetState' ist bereits vorhanden, l�uft der NSC zwar trotzdem zum MOB, tut dann aber nichts
func int AI_UseMob(var c_npc self, var string schemename, var int targetstate) {};
/// Character wird f�r n1 Sekunden in einen Wait-Zustand versetzt,
/// d.h. er tut nichts, aber Treffer etc.(passive Wahrnehmung) werden registriert
func void AI_Wait(var c_npc n0, var float n1) {};
/// NSC wartet 20 Sekunden, wird er in dieser Zeit vom Spieler angesprochen, wird die angegebene SkriptFunktion ausgef�hrt.
func void AI_WaitForQuestion(var c_npc self, var func scriptfunc) {};
/// Noch nicht dokumentiert
func void AI_WaitMS(var instance n0, var int i1) {};
/// 'self' wartet bis 'other' seinen laufenden AI-Befehl zu Ende gespielt hat (funzt allerdings nicht bei AI-Overlays!)
func void AI_WaitTillEnd(var c_npc self, var c_npc other) {};
/// schnelle Drehung zu other
func void AI_WhirlAround(var c_npc self, var c_npc other) {};
/// Noch nicht dokumentiert
func void AI_WhirlAroundToSource(var instance n0) {};
/// Noch nicht dokumentiert
func void Apply_Options_Audio() {};
/// Noch nicht dokumentiert
func void Apply_Options_Controls() {};
/// Noch nicht dokumentiert
func void Apply_Options_Game() {};
/// Noch nicht dokumentiert
func void Apply_Options_Performance() {};
/// Noch nicht dokumentiert
func void Apply_Options_Video() {};
/// !!!Erzeugt eine Kopie von dem ersten angegebenen String, h�ngt den zweiten an diesen an und gibt den neuen String zur�ck ???
/// Die folgenden Methoden geben den Text nur unter bestimmten zus�tzlichen Bedingungen aus. F�r die Methoden mit dem Suffix Inst trifft dies zu, wenn die Instanz von der die Debug-Methode aufgerufen wird, zum Debuggen aktiviert wurde. Die Methoden mit dem Suffix Ch geben den Text nur aus, wenn der angegebene Channel zum Debuggen aktiviert wurde.
func string ConcatStrings(var string str1, var string str2) {};
/// gibt der angegebenen Instanz (self oder other) ein Item ins Inventory
func void CreateInvItem(var c_npc n0, var int n1) {};
/// wie vorherige Funktion, nur das Multi-Items (z.B.: 100 Pfeile) ins Inventory kreiert werden
func void CreateInvItems(var c_npc n0, var int n1, var int n2) {};
/// erstellet ein Dokument und liefert ein Handle zur�ck, da� f�r alle weiteren Doc_...-Befehle n�tig ist
func int Doc_Create() {};
/// Noch nicht dokumentiert
func int Doc_CreateMap() {};
/// Benutzt den angegebenen Font f�r nachfolgende "Doc_Print"s.
func void Doc_Font(var string fontname) {};
/// Karte initialisieren : levelName = Name des Levels (.ZEN) aus dem die Karte einen Ausschnitt zeigt
/// @param gamex1,gamey1 - Koordinaten im Spiel (linke obere Ecke der Karte)
/// @param pixelx1,pixely1 - PixelKoordinaten linke obere Ecke // der Rest alles nochmal f�r die rechte untere Ecke
func void Doc_MapCoordinates(var string levelname, var float gamex1, var float gamey1, var float pixelx1, var float pixely1, var float gamex2, var float gamey2, var float pixelx2, var float pixely2) {};
/// �ffnet ein Dokument mit dem Bild "picName" als Hintergrund
func void Doc_Open(var string picname) {};
/// Angegebener Text wird in das aktuelle (vorher mit Doc_Open ge�ffnete) Dokument geschrieben
func void Doc_Print(var string text) {};
/// Gibt Text f�r die Seite 'page' an. Der Text wird NICHT umgebrochen
func void Doc_PrintLine(var int handle, var int page, var string text) {};
/// Gibt Text f�r die Seite 'page' an. Der Text WIRD umgebrochen, falls er nicht auf die in Doc_SetPage() angegebene Grafik passt.
func void Doc_PrintLines(var int handle, var int page, var string text) {};
/// setzt den Font f�r die angegebene Seite 'page' oder f�r das ganze Dokument ('page':-1)
/// Fontname z.B. "Scrolls.tga"
func void Doc_SetFont(var int handle, var int page, var string fontname) {};
/// Noch nicht dokumentiert
func void Doc_SetLevel(var int i0, var string s1) {};
/// setzt die R�nder (gerechnet vom Rand der TGA-Datei, die in Doc_SetPage() gesetzt wird). Die R�nder sind in Pixeln angegeben.
func void Doc_SetMargins(var int handle, var int page, var int leftmargin, var int topmargin, var int rightmargin, var int bottommargin, var int unknwn) {};
/// setzt f�r die Seite 'page' die Grafik-Datei 'pageimage'. Diese mu� im TGA-Format vorliegen und
/// z.B. "aufgeschlagenesBuch_links.tga" hei�en
/// wird bei 'page' -1 �bergeben, so bezieht sich der Befehl auf ALLE Seiten des Dokuments
func void Doc_SetPage(var int handle, var int page, var string pageimage, var int unknwn) {};
/// setzt die Anzahl der Seiten dieses Dokuments. Bei mehr als zwei Seiten wird versucht ALLE
/// Seiten auf den Bildschrim zu bekommen
func void Doc_SetPages(var int handle, var int pages) {};
func void Doc_Show(var int handle) {};
/// gibt dem Nsc direkt das angegebene Item an den G�rtel
func void EquipItem(var c_npc n0, var int n1) {};
/// Noch nicht dokumentiert
func void ExitGame() {};
/// !!! konvertiert einen float in einen int, hier w�re es noch ganz sch�n zu wissen, wie mit dem float umgesprungen wird --> schneiden oder runden ???
func int FloatToInt(var float x) {};
/// Noch nicht dokumentiert
func string FloatToString(var float r0) {};
/// Abfrage, ob Cutscene schon gespielt wurde (0 = Nein / 1 = Ja)
func int Hlp_CutscenePlayed(var string csname) {};
/// liefert die interne ID ( nicht Var aus der Instanz) zur�ck, um zwei items miteinander vergleichen zu k�nnen ( integer Vergleich)
func int Hlp_GetInstanceID(var c_item item) {};
/// Ermittle einen NSC �ber den Instanznamen. Dieser kann einer Variablen zugewiesen werden und ist somit gezielt verf�gbar
func c_npc Hlp_GetNpc(var int instancename) {};
/// Pr�ft, ob der Gegenstand 'item' den Instanznamen 'instanceName' tr�gt. Will man z.B. testen,
/// ob die globale Variable item Pfeile sind (ItMuArrow) ruft man Hlp_IsItem(item,ItMuArrow) auf.
/// Gribt bei Gleichheit TRUE, sonst FALSE zur�ck.
func int Hlp_IsItem(var c_item item, var int instancename) {};
/// Pr�fe ob Item-Instanz g�ltig und initialisiert ist True/False
func int Hlp_IsValidItem(var c_item item) {};
/// Pr�fe ob NSC-Instanz g�ltig und initialisiert ist. True/False
func int Hlp_IsValidNpc(var c_npc self) {};
/// erzeugt einen Zufallswert (wobei n0 Obergrenze : [0..n0-1] ) R�ckgabewert integer
func int Hlp_Random(var int n0) {};
/// Hilfsfunktion um zwei Strings miteinander zu vergleichen liefert bei Gleichheit eins zur�ck
func int Hlp_StrCmp(var string s1, var string s2) {};
/// Noch nicht dokumentiert
func int InfoManager_HasFinished() {};
/// Noch nicht dokumentiert
func void Info_AddChoice(var int i0, var string s1, var func f2) {};
/// Noch nicht dokumentiert
func void Info_ClearChoices(var int i0) {};
/// !!! wie float to int, nur da� ein integer in float umgewandelt wird ???
func float IntToFloat(var int x) {};
/// !!!Funktion �bertr�gt eine Integer variable in eine Stringvariable (R�ckgabewert : string)???
func string IntToString(var int x) {};
/// Noch nicht dokumentiert
func void IntroduceChapter(var string s0, var string s1, var string s2, var string s3, var int i4) {};
/// Der Befehl f�gt dem Topics topic ein neues Entrz namens entry hinzu. Wie auch bei der Erzeugung von Topics dient hier der
/// Name sowohl zur Identifikation als auch zur Anzeige und muss somit eindeutig sein. Doppelte Eintr�ge werden auch hier ignoriert.
/// Parameter
/// topic Diejenige Zeichenkette, die bei der Erstellung des Topics per Log_CreateTopic() angegeben wurde.
/// entry Eine eindeutige Zeichenkette, die sowohl zur Identifikation als auch zur Anzeige des Eintrags verwendet wird.
func void Log_AddEntry(var string topic, var string entry) {};
/// Der Befehl f�gt unter der Sektion 'section' ein neues Topic mit Namen 'name' ein.
/// Sollte bereits ein Topic dieses Names in irgendeiner Sektion existieren, wird das Topic nicht hinzugef�gt.
/// - name Eine eindeutige Zeichenkette, die sowohl zur Identifikation als auch zur Anzeige des Topics verwendet wird.
/// - section Eine, in der Constants.d definierte Konstante, die besagt, in welcher Sektion das Topic angezeigt werden soll.
/// Die Konstante kann folgende Werte annehmen:
/// - LOG_MISSION
/// - LOG_NOTE
/// @param Parameter -
func void Log_CreateTopic(var string name, var int section) {};
/// Der Befehl �ndert den Status des Topics 'name' in 'status'.
/// Er sollte nur f�r Topics verwendet werden, die f�r die Sektion LOG_MISSION erzeugt wurden.
/// - name Diejenige Zeichenkette, die bei der Erstellung des Topics per Log_CreateTopic() angegeben wurde.
/// - status Eine, in der Constants.d definierte Konstante, die besagt, unter welchem Status die Mission dargestellt werden soll.
/// Folgende Werte sind m�glich:
/// - LOG_RUNNING
/// - LOG_SUCCESS
/// - LOG_FAILED
/// - LOG_OBSOLETE
/// @param Parameter -
func void Log_SetTopicStatus(var string name, var int status) {};
/// Noch nicht dokumentiert
func void Mdl_ApplyOverlayMDS(var instance n0, var string s1) {};
/// Overlay-MDS wird gestartet und automatisch nach der angegebenen Zeit abgeschaltet
func void Mdl_ApplyOverlayMDSTimed(var c_npc self, var string overlayname, var float timeticks) {};
/// mit diesem Befehl werden Animationen auf einem h�heren Layer gestartet
/// (z.B. hat der Zombie ein Overlay �ber die normalen Human-Animationen)
func void Mdl_ApplyOverlayMds(var c_npc n0, var string s1) {};
/// Noch nicht dokumentiert
func void Mdl_ApplyOverlayMdsTimed(var instance n0, var string s1, var int i2) {};
/// F�gt Zufallsanimationen (am Kopf kratzen, an den Sack packen etc (s2)) f�r bestimmte Animationszust�nde (s1) ein
func void Mdl_ApplyRandomAni(var c_npc n0, var string s1, var string s2) {};
/// hiermit kann die Frequenz betimmt werden, wie oft die f�r den Animationszustand (s1) deklarierten Randomanis abgespielt werden
func void Mdl_ApplyRandomAniFreq(var c_npc n0, var string s1, var float f2) {};
/// Starte zuf�llige Gesichtsanimation
/// Mdl_ApplyRandomFaceAni ( self, ANINAME, minTime, minTimeVar, maxTime, maxTimeVar, probMin)
/// @param minTime - Minimum an Zeit nachdem Ani startet (in Sekunden)
/// @param maxTime - Maximum an Zeit nachdem Ani startet (in Sekunden)
/// @param minTimeVar - Abweichung von minTime (in Sekunden)
/// @param maxTimeVar - Abweichung von maxTime (in Sekunden)
/// @param probMin - Wahrscheinlichkeit [0..1] ob obere oder untere Grenze der Abweichung benutzt wird
func void Mdl_ApplyRandomFaceAni(var c_npc self, var string name, var float timemin, var float timeminvar, var float timemax, var float timemaxvar, var float probmin) {};
/// Entferne ein Overlay-MDS
func void Mdl_RemoveOverlayMDS(var c_npc self, var string overlayname) {};
/// Setzt Model-Z-Skalierung
func void Mdl_SetModelFatness(var c_npc self, var float fatness) {};
/// zum skalieren des Meshes (Breite,H�he,Tiefe) 1 = 100%, also Normalgr��e!
func void Mdl_SetModelScale(var c_npc self, var float x, var float y, var float z) {};
/// Noch nicht dokumentiert
func void Mdl_SetVisual(var instance n0, var string s1) {};
/// Noch nicht dokumentiert
func void Mdl_SetVisualBody(var instance n0, var string s1, var int i2, var int i3, var string s4, var int i5, var int i6, var int i7) {};
/// Starte Gesichtsanimation // intensity 1 = 100% // holdTime -1 = forever
func void Mdl_StartFaceAni(var c_npc self, var string name, var float intensity, var float holdtime) {};
/// Noch nicht dokumentiert
func void Mis_AddMissionEntry(var instance n0, var string s1) {};
/// Liefert aktuellen Status einer Mission zur�ck ( Bezogen auf den Spieler ) -> RUNNING, SUCCESS, FAILED etc.
func int Mis_GetStatus(var int missionname) {};
/// Liefert TRUE, wenn sich Spieler noch innerhalb des Zeitlimits f�r diese Mission befindet
func int Mis_OnTime(var int missionname) {};
/// Noch nicht dokumentiert
func void Mis_RemoveMission(var instance n0) {};
/// Setzt den Status einer Mission ( Bezogen auf den Spieler ) -> RUNNING, SUCCESS, FAILED etc. )
func void Mis_SetStatus(var int missionname, var int newstatus) {};
/// Erzeuge "amount" Items der Instanz "itemInstance" in oCMobContainer mit angegebenen Vobnamen.
func void Mob_CreateItems(var string mobname, var int iteminstance, var int amount) {};
/// Liefere Anzahl der Items der Instanz "itemInstance" in oCMobContainer mit angegebenen Vobnamen
func int Mob_HasItems(var string mobname, var int iteminstance) {};
/// �berpr�ft,ob der NSC eine (!) g�ltige Info f�r den Spieler hat und startet diese gegebenenfalls (Returnwert "1").
func int NPC_GiveInfo(var c_npc npc, var int important) {};
/// ermittelt den st�rkeren Nsc,
/// Wenn die Summe der Level aller NPCs (human, Monster), die zu mir feindlich sind und die zu freundlich sind
/// MEHR ALS DOPPELT SO HOCH ist (x > 2*y), wie die Summe der Level aller Leute, die zu mir freundlich sind, und die
/// zu feindlich sind, dann NEIN,
/// sonst JA (= wir SIND st�rker, nicht echt, aber ab doppelter Gegnerst�rke zu fliehen ist fr�h genug, sonst kommen
/// die Jungs aus dem Rennen nicht mehr raus
/// 1) Monster k�nnen feindlich zu beiden Menschen sein --> egal, z�hlen auf beiden Seiten
/// 2) Jemand, der z.B. zu mir freundlich und zu feindlich ist, wird demnach doppelt gewertet --> ok so
/// @param Beachten -
func int Npc_AreWeStronger(var c_npc self, var c_npc other) {};
/// Prueft ob Npc1 den Gegenstand sehen kann ( ein Ray wird gecastet -> Bitte sparsam einsetzen ) True/False
func int Npc_CanSeeItem(var c_npc npc1, var c_item item) {};
/// Prueft ob Npc1 den Npc2 sehen kann ( ein Ray wird gecastet -> Bitte sparsam einsetzen ) True/False Blickwinkelabh�ngig (+,-100�)+LOS von der H�fte aus
func int Npc_CanSeeNpc(var c_npc npc1, var c_npc npc2) {};
/// Pr�ft ob NSC anderen NSC sehen kann, ohne dabei den Winkel zu ber�cksichtigen (nur LineOfSight-Check)
func int Npc_CanSeeNpcFreeLOS(var c_npc self, var c_npc other) {};
/// Checkt, ob NSC die Soundquelle sehen kann True/False
func int Npc_CanSeeSource(var c_npc self) {};
/// �ndert den Wert des Attributs (atr) um (value) Einheiten.
func void Npc_ChangeAttribute(var c_npc self, var int atr, var int value) {};
/// Pr�fe ob zwischen dem NSC eine aktuelle Mission (AVAILABLE,RUNNING) besteht und vergleiche den Status mit den angegebenen.
/// Falls dieser identisch ist, wird "1" geliefert.
func int Npc_CheckAvailableMission(var c_npc npc, var int missionstate, var int important) {};
/// �berpr�ft,ob der NSC g�ltige Infos f�r den Spieler hat und startet diese gegebenenfalls (Returnwert "1").
func int Npc_CheckInfo(var c_npc npc, var int important) {};
/// �berprueft ob der NSC dem Spieler einen Auftrag anbieten kann, wenn ja, wird der Offer-Block gestartet und "1" zur�ckgeliefert.
func int Npc_CheckOfferMission(var c_npc npc, var int important) {};
/// �berprueft ob zwischen dem NSC und dem Spieler eine laufende Mission besteht und startet den entsprechenden Skriptblock.
/// (Returnwert 1 : Mission aktiv)
func int Npc_CheckRunningMission(var c_npc npc, var int important) {};
/// hiermit werden alle Befehle mit sofortiger Wirkung aus der AI_Queue rausgeworfen
func void Npc_ClearAIQueue(var c_npc self) {};
/// NSc bekommt Zauberspruch zugewiesen kann diesen aber noch nicht gebrauchen
/// (erscheint ausgegraut im Auswahlkranz)
func void Npc_CreateSpell(var c_npc self, var int spellnr) {};
/// Noch nicht dokumentiert
func int Npc_DeleteNews(var instance n0, var int i1) {};
/// Tausche meherere Tagesabl�ufe aus
func void Npc_ExchangeRoutine(var c_npc self, var string routinename) {};
/// liefert den Zauber zur�ck, der auf der Hand ist (self oder other)
/// liefert -1 zur�ck, wenn kein Zauber auf der Hand ist
func int Npc_GetActiveSpell(var c_npc self) {};
/// Unterscheidet zwischen den drei Kategorien (Spell_Bad, Spell_neutral,Spell_Good) Spellkat ist R�ckgabewert
func int Npc_GetActiveSpellCat(var c_npc self) {};
/// liefert den Spell-Level des Zaubers zur�ck, der auf der Hand ist
func int Npc_GetActiveSpellLevel(var c_npc self) {};
/// Gibt die Attit�de von self zu other zur�ck (temp. / perm. / Gilden )
func int Npc_GetAttitude(var c_npc self, var c_npc other) {};
/// Ermittle BodyState ( Liefert BS_-Konstanten )
/// !!! VORSICHT !!!: Diese Funktion gibt den Bodystate mit allen eventuellen
/// ver-oderten Modifiern wie "brennend". Besser 'C_BodyStateContains(self,bodystate)' benutzen
func int Npc_GetBodyState(var c_npc self) {};
/// Noch nicht dokumentiert
func int Npc_GetComrades(var instance n0) {};
/// liefert den Schemanamen des Mobsi zur�ck, das der Nsc entdeckt hat. Schemaname ist das String-K�rzel des Mobs, da� im Visualnamen vor dem ersten "_"-Zeichen steht, also z.B. "DOOR" wenn der Visualname "DOOR_OCR__135" ist.
/// @param VORSICHT - Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!
/// @param WORKAROUND - zur Zeit werden hiermit nur T�r-MOBSIs zur�ckgegeben, dies soll aber wieder zur�ckgebaut werden
func string Npc_GetDetectedMob(var c_npc self) {};
/// Liefert Entfernung ( �n cm ! ) zwischend NSC und Gegenstand
func int Npc_GetDistToItem(var c_npc npc, var c_item item) {};
/// Liefert Entfernung ( �n cm ! ) zwischend den beiden NSCs
func int Npc_GetDistToNpc(var c_npc npc1, var c_npc npc2) {};
/// Liefert Entfernung ( �n cm ! ) zwischend den beiden NSCs
func int Npc_GetDistToPlayer(var c_npc npc1) {};
/// liefert die Entfernung vom NSC 'self' zum angegebenen Waypoint in cm
func int Npc_GetDistToWP(var c_npc self, var string wpname) {};
/// Liefert die angelegte R�stung des NSCs.
func c_item Npc_GetEquippedArmor(var c_npc n0) {};
/// Liefert die gegurtete Nahkampfwaffe des NSCs.
func c_item Npc_GetEquippedMeleeWeapon(var c_npc n0) {};
/// Liefert die gegurtete Fernkampfwaffe des NSCs.
func c_item Npc_GetEquippedRangedWeapon(var c_npc n0) {};
/// Ermittelt die Gildenattit�de von zwei Nsc�s direkt im Gegensatz zu Wld_GetGuildAttitude
func int Npc_GetGuildAttitude(var c_npc npc, var c_npc npc) {};
/// Ermittle ItemInstanz aus Inventory
func c_item Npc_GetInvItem(var c_npc self, var int iteminstance) {};
/// Mit diesem Befehl l��t sich nachsehen, ob in einem bestimmten Slot einer bestimmten Kategorie ein item vorhanden ist
/// ist das der Fall, wird dieses Item in die globale Variable item geschrieben
/// gibt jetzt die Anzahl zurueck, wenn das Item stackable ist
/// . Den Transfer machst Du dann per Npc_RemoveInvItems() und Npc_CreateInvItems().
func int Npc_GetInvItemBySlot(var c_npc self, var int category, var int slotnr) {};
/// liefert den Namen des am n�chsten gelegenen Waypoints zur�ck
func string Npc_GetNearestWP(var c_npc self) {};
/// Ermittelt T�ter der News und gibt eine INstanz der Klasse C_Npc zur�ck
func c_npc Npc_GetNewsOffender(var c_npc self, var int newsnumber) {};
/// Ermittle Opfer der News und gibt eine INstanz der Klasse C_Npc zur�ck
func c_npc Npc_GetNewsVictim(var c_npc self, var int newsnumber) {};
/// Ermittle Zeuge der News und gibt eine INstanz der Klasse C_Npc zur�ck
func c_npc Npc_GetNewsWitness(var c_npc self, var int newsnumber) {};
/// Aktive Suche nach einem Gegner. Wird ein Gegner gefunden, so wird er als internes Ziel
/// �bernommen und in 'other' geschrieben, wenn kein Gegner gefunden wurde wird das
/// interne Ziel gel�scht und 'other' ung�ltig gemacht.
/// 2. ...dann der n�chstbeste aNSC demgegen�ber 'self' HOSTILE ist (auch weder tot noch bewu�tlos)
/// - return: neues Ziel gefunden -> TRUE
/// kein Ziel gefunden -> FALSE
/// Npc_PerceiveAll() erstellt wurde. Wird diese Funktion in einem Zustand ohne aktive
/// Wahrnehmungen benutzt, mu� vorher ein Npc_PerceiveAll() aufgerufen werden
/// @param Kriterien - 1. gesetzter Gegner, der nicht tot/bewu�tlos ist wird genommen...
/// @param VORSICHT - Beruht auf der aktuellsten VOB-Liste, die durch aktive Wahrnehmungen oder durch
func int Npc_GetNextTarget(var c_npc self) {};
/// Liefert den zweitnahesten WP vom NSC zur�ck
func string Npc_GetNextWP(var c_npc self) {};
/// Ermittle die permanente Attitude von "self" zu "other"
func int Npc_GetPermAttitude(var c_npc self, var c_npc other) {};
/// Liefert die gezogene Waffe des NSCs.
func c_item Npc_GetReadiedWeapon(var c_npc n0) {};
/// Liefert Anzahl Sekunden, wie lange der NSC sich in diesem Zustand im "Loop" befindet.
func int Npc_GetStateTime(var c_npc self) {};
/// Noch nicht dokumentiert
func int Npc_GetTalentSkill(var instance n0, var int i1) {};
/// Noch nicht dokumentiert
func int Npc_GetTalentValue(var instance n0, var int i1) {};
/// Bef�llt 'other' mit dem aktuellen Ziel. Das aktuelle Ziel wird intern gespeichert, wird
/// durch Npc_SetTarget() bzw. Npc_GetNextTarget() gesetzt.
/// - return: aktuelles Ziel gespeichert -> TRUE
/// kein Ziel gespeichert -> FALSE
func int Npc_GetTarget(var c_npc self) {};
/// liefert immer!!! die wahre Gilde zur�ck, ignoriert also auch ohne die Regeln die Verkleidung
func int Npc_GetTrueGuild(var c_npc npc) {};
/// Noch nicht dokumentiert
func int Npc_GiveInfo(var instance n0, var int i1) {};
/// Der NSC "self" gibt den NSC "other" den angegebenen Gegenstand "item". Der Gegenstand wandert sofort ins Inventory des anderen.
func void Npc_GiveItem(var c_npc n0, var c_item n1, var c_npc n2) {};
/// Liefert >0, falls BodyFlag gesetzt ist.
func int Npc_HasBodyFlag(var c_npc self, var int bodyflag) {};
/// liefert eins zur�ck, wenn der Spieler in Sinnesreichweite und entdeckt ist // SPIELER ???
func int Npc_HasDetectedNpc(var c_npc self, var c_npc other) {};
/// Armor angezogen True/False
func int Npc_HasEquippedArmor(var c_npc self) {};
/// gibt eins zur�ck, wenn eine Nahkampfwaffe Equipped ist
func int Npc_HasEquippedMeleeWeapon(var c_npc self) {};
/// Fernkampwaffe auf dem R�cken True/False
func int Npc_HasEquippedRangedWeapon(var c_npc self) {};
/// gibt eins zur�ck, wenn die abgefragte Instanz (self oder other) eine Waffe sichtbar mit sich rumtr�gt
func int Npc_HasEquippedWeapon(var c_npc self) {};
/// Spezialabfrage auf Kampftalente (z.B. 1hSword) ansonsten wie Npc_HasTalent
func int Npc_HasFightTalent(var c_npc self, var int tal) {};
/// Liefert "1", wenn NSC die angegebene Anzahl von Items besitzt.-> NpcHasItem ist damit obsolete
func int Npc_HasItems(var c_npc n0, var int iteminstance) {};
/// Liefert Newsnummer>0 (f�r weitere Referenzen) falls entsprechende News vorhanden.
/// Nicht ben�tigte Parameter k�nnen mit "NULL" leergelassen werden
func int Npc_HasNews(var c_npc self, var int newsid, var c_npc offender, var c_npc victim) {};
/// Bietet Spieler dem NSC einen Gegenstand �bers Trade-Modul an ? True/False
func int Npc_HasOffered(var c_npc self, var c_npc other, var int iteminstance) {};
/// Gibt TRUE zur�ck, wenn 'npc' irgendeine Fernkampfwaffe im Inventory oder in der Hand hat UND
/// dazu auch passende Munition vorhanden ist. Sonst FALSE.
func int Npc_HasRangedWeaponWithAmmo(var c_npc npc) {};
/// Nahkampfwaffe in der Hand
func int Npc_HasReadiedMeleeWeapon(var c_npc self) {};
/// Fernkampfwaffe in der Hand
func int Npc_HasReadiedRangedWeapon(var c_npc self) {};
/// gibt eins zur�ck, wenn die Waffe schon in der Hand ist
func int Npc_HasReadiedWeapon(var c_npc self) {};
/// Kann der NSC den angegebenen Zauberspruch benutzen ?
func int Npc_HasSpell(var c_npc self, var int spellid) {};
/// liefert eins zur�ck, wenn der gepr�fte Charakter das Talent tal hat
func int Npc_HasTalent(var c_npc self, var int tal) {};
/// liefert eins zur�ck, wenn der zweite Character auf den ersten zielt (Fernkampfwaffen und Zauber)
func int Npc_IsAiming(var c_npc self, var c_npc other) {};
/// Funktion liefert einen Wert zur�ck, falls Dead true ist
func int Npc_IsDead(var c_npc n0) {};
/// Liefert >0, falls "ownerguild" der Besitzer des vom "user" benutzten Mob ist.
/// @param VORSICHT - Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!
func int Npc_IsDetectedMobOwnedByGuild(var c_npc user, var int ownerguild) {};
/// Liefert >0, falls "owner" der Besitzer des vom "user" benutzten Mob ist.
/// @param VORSICHT - Diese Funktion ist nur in Verbindung mit PERC_MOVEMOB erlaubt !!!
func int Npc_IsDetectedMobOwnedByNpc(var c_npc user, var c_npc owner) {};
/// liefert eins zur�ck, wenn der entsprechende Nsc in einer Cutscene ist
func int Npc_IsInCutscene(var c_npc self) {};
/// liefert eins zur�ck, wenn der Charakter im angegebenen Fightmode (z.B. FMODE_MAGIC) ist
func int Npc_IsInFightMode(var c_npc self, var int fmode) {};
/// Check ob der angegebene Zustand der aktuelle TA des NSCs ist. True/FAlse
func int Npc_IsInRoutine(var c_npc self, var func state) {};
/// Abfrage auf den aktuellen Zustand einer Spielfigur True/False
func int Npc_IsInState(var c_npc self, var func state) {};
/// liefert eins zur�ck, wenn gepr�fte Instanz sich im Bereich von drei Metern zur pr�fenden Instanz befindet
func int Npc_IsNear(var c_npc self, var c_npc other) {};
/// Liefert >0, falls News "Gossip" ist
func int Npc_IsNewsGossip(var c_npc self, var int newsnumber) {};
/// Sucht genauso wie Npc_GetNextTarget nach einem neuen Ziel, �berschreibt aber weder
/// das interne Ziel, noch 'other'
/// - return: neues Ziel gefunden -> TRUE
/// kein Ziel gefunden -> FALSE
/// Npc_PerceiveAll() erstellt wurde. Wird diese Funktion in einem Zustand ohne aktive
/// Wahrnehmungen benutzt, mu� vorher ein Npc_PerceiveAll() aufgerufen werden
/// @param VORSICHT - Beruht auf der aktuellsten VOB-Liste, die durch aktive Wahrnehmungen oder durch
func int Npc_IsNextTargetAvailable(var c_npc self) {};
/// Abfrage darauf, ob der Nsc auf einem Freepoint mit name Teilstring steht
func int Npc_IsOnFP(var c_npc self, var string name) {};
/// liefert eins zur�ck, wenn der gepr�fte Charakter der Spieler himself ist
func int Npc_IsPlayer(var c_npc player) {};
/// gibt TRUE zur�ck, wenn sich SC im Raum des 'npc' oder seiner Gilde befindet, sonst FALSE
func int Npc_IsPlayerInMyRoom(var c_npc npc) {};
/// Noch nicht dokumentiert
func int Npc_IsVoiceActive(var instance n0) {};
/// Liefert "1", falls Weg von NSC durch Hindernis versperrt ist.
func int Npc_IsWayBlocked(var c_npc self) {};
/// Liefert TRUE, wenn der angegebene Spieler die Info schon einmal erhalten hat.
/// @param VORSICHT - auch wenn eine permanente Info schon einmal dem Spieler erz�hlt wurde, so gibt diese Funktion trotzdem FALSE zur�ck!
func int Npc_KnowsInfo(var c_npc self, var int infoinstance) {};
/// Kennt der NSC den Spieler? True/False
func int Npc_KnowsPlayer(var c_npc self, var c_npc player) {};
/// Was k�nnte das wohl hei�en ? Ich glaube damit kann man den (spellnr) Zauber zuweisen
func void Npc_LearnSpell(var c_npc self, var int spellnr) {};
/// mit dieser Funktion wird eine NSC bezogene News geschrieben newsid : News ID source > 0 : "gossip", ansonsten "witness",
/// @param self - NSC, bei dem News eingespeist werden soll, other T�ter victim Opfer
func void Npc_MemoryEntry(var c_npc self, var int source, var c_npc offender, var int newsid, var c_npc victim) {};
/// wie MemoryEntry nur, das die Memory f�r die ganze Gilde kreiert wird
func void Npc_MemoryEntryGuild(var c_npc self, var int source, var c_npc offender, var int newsid, var c_npc victimguild) {};
/// Liefert "1", wenn der angegebenen Gilde das Item geh�rt ( Gildenbesitz )
func int Npc_OwnedByGuild(var c_item item, var int guild) {};
/// Liefert "1", wenn dem NSC das Item geh�rt ( pers�nliches Besitzflag )
func int Npc_OwnedByNpc(var c_item item, var c_npc npc) {};
/// Deaktiviere Perception
func void Npc_PercDisable(var c_npc self, var int percid) {};
/// Aktiviere Perception
func void Npc_PercEnable(var c_npc self, var int percid, var func function) {};
/// Nimm alle Objekte in Wahrnehmungsreichweite wahr, die dann mit WLD_DetectNpc und Wld_DetectItem auswertbar sind
func void Npc_PerceiveAll(var c_npc self) {};
/// Noch nicht dokumentiert
func void Npc_PlayAni(var instance n0, var string s1) {};
/// Abfrage ob Dialog-Refuse Counter noch aktiv ist True/False
func int Npc_RefuseTalk(var c_npc self) {};
/// das angegebene Item wird aus dem Inventory des NSCs entfernt und gel�scht
func void Npc_RemoveInvItem(var c_npc owner, var int iteminstance) {};
/// das angegebene Anzahl des Multi-Items wird aus dem Inventory des NSCs entfernt und gel�scht
func void Npc_RemoveInvItems(var c_npc owner, var int iteminstance, var int amount) {};
/// Sende eine passive Wahrnehmung aus.Npc1 = wer schickt Npc2 = Opfer, Npc3 = T�ter
func void Npc_SendPassivePerc(var c_npc npc1, var int perc_type, var c_npc npc2, var c_npc npc3) {};
/// verschicke Wahrnehmung an einzelnen NSC
func void Npc_SendSinglePerc(var c_npc self, var c_npc target, var int percid) {};
/// Hier kann ein Wert f�r den Zauberspruch gesetzt werden. Was dieser Wert bewirkt, haengt allein von der Nutzung im
/// Skript ab. Das Programm benutzt diesen nicht.
func int Npc_SetActiveSpellInfo(var c_npc npc, var int i1) {};
/// setzt die permanente Attit�de auf einen festen Wert
func void Npc_SetAttitude(var c_npc self, var int att) {};
/// NSC kennt SC
func void Npc_SetKnowsPlayer(var c_npc self, var c_npc player) {};
/// Setze Zeitdelta f�r aktive Wahrnehmungen, alle Zeitdelta-Sekunden wird WN gesendet
func void Npc_SetPercTime(var c_npc self, var float seconds) {};
/// Dialog Refuse Counter aus "x" Sekunden setzen
func void Npc_SetRefuseTalk(var c_npc self, var int timesec) {};
/// _Setzt_ Anzahl Sekunden, wie lange der NSC sich in diesem Zustand im "Loop" befindet.
/// --> Das ist dann �ber Npc_GetStateTime abfragbar.
func void Npc_SetStateTime(var c_npc self, var int seconds) {};
/// Noch nicht dokumentiert
func void Npc_SetTalentSkill(var instance n0, var int i1, var int i2) {};
/// Noch nicht dokumentiert
func void Npc_SetTalentValue(var instance n0, var int i1, var int i2) {};
/// Gibt dem Nsc 'self' das interne Ziel 'other'. --> Nur wenn per GetTarget auch der other "geholt" wird ist er vorhanden, da hier interne Variablen, die in den Skripten nicht vorhanden sind verwendet werden
func void Npc_SetTarget(var c_npc self, var c_npc other) {};
/// Magie/Zauberstein Teleport Spruch : letzte Position des NSCs merken, zwecks sp�teren dahinbeamens.
func void Npc_SetTeleportPos(var c_npc self) {};
/// setzt die tempor�re Attit�de auf einen Wert (att)
func void Npc_SetTempAttitude(var c_npc self, var int att) {};
/// Setzt den NSC beim Start in den der Waffe entsprechenden Kampfmodus (Waffe wird erzeugt)
func void Npc_SetToFightMode(var c_npc self, var int weapon) {};
/// Setzt den NSC beim Start in den Faustkampfmodus (zB.Monster)
func void Npc_SetToFistMode(var c_npc self) {};
/// Setzt die wahre Gilde des NSCs
func int Npc_SetTrueGuild(var c_npc npc, var int guildid) {};
/// Pr�fe alle ItemReact-Module von "self" auf Gegenstand "item" von Geber "other" und starte passende Reaction-Funktion
/// liefert True beim finden eines Moduls
func int Npc_StartItemReactModules(var c_npc self, var c_npc other, var c_item item) {};
/// Abfrage auf den vorherigen Zustand einer Spielfigur True/False
func int Npc_WasInState(var c_npc self, var func state) {};
/// gibt TRUE zur�ck, wenn sich SC vor dem letzten Raumwechsel im Raum des 'npc' oder seiner Gilde befindet, sonst FALSE
/// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en
func int Npc_WasPlayerInMyRoom(var c_npc npc) {};
/// Setze Reichweite fuer eine passive Wahrnehmung int cm
func void Perc_SetRange(var int percid, var int range) {};
/// Noch nicht dokumentiert
func int PlayVideo(var string s0) {};
/// Ausgabebefehl, der Text ins Game schreibt (wie OutputunitTexte)
func void Print(var string s0) {};
/// Printausgabe, die nur bei eingeschaltetem Debugmodus (Alt+D) im Spy/logfile ausgegeben wird
func void PrintDebug(var string s) {};
/// gibt nur den Text eines bestimmten Channels wieder, unabh�ngig von der Instanz ???
func void PrintDebugCh(var int ch, var string text) {};
/// !!! gibt nur den Debugtext der eingeschalteten (SetDebugFocus --> siehe Intranetpage Erweitertes Skript-Debugging) Instanz aus ???
func void PrintDebugInst(var string text) {};
/// !!! gibt nur in einem bestimmten channel liegende Debuginfos einer Instanz aus ???
func void PrintDebugInstCh(var int ch, var string text) {};
/// Noch nicht dokumentiert
func int PrintDialog(var int i0, var string s1, var int i2, var int i3, var string s4, var int i5) {};
/// Printbefehl, der aus den angegebenen Strings einen Ausw�hlt und auf den Bildschirm schreibt
func void PrintMulti(var string s0, var string s1, var string s2, var string s3, var string s4) {};
/// Gibt den Text 'msg' auf dem Bildschrim aus und benutzt dabei den Font 'font'.
/// Die Position ist f�r jede Koordinate eine Zahl zwischen 0 und 99 und gibt die prozentuale Position an.
/// Der Ursprung befindet sich oben links (also 0% X und 0% Y)
func void PrintScreen(var string msg, var int posx, var int posy, var string font, var int timesec) {};
/// Tausche aktuellen Tagesablauf des NSC "self" gegen angegebenen aus
/// (Name wird automatisch mit "RTN_" am Anfang und NSC-Skript-ID am Ende erg�nzt)
func void Rtn_Exchange(var string oldroutine, var string newroutine) {};
/// Noch nicht dokumentiert
func void SetPercentDone(var int i0) {};
/// Liefert Entfernung ( in cm ! ) zum letzten logischen Sound
func int Snd_GetDistToSource(var c_npc self) {};
/// Check, ob Quelle des letzten Sound Item war (Return >0) und setzt "item" auf diesen Gegenstand
func int Snd_IsSourceItem(var c_npc self) {};
/// Check, ob Quelle des letzten Sound NPC war (Return >0) und setzt "other" auf diesen NPC
func int Snd_IsSourceNpc(var c_npc self) {};
/// spielt einen Sound ab
func void Snd_Play(var string s0) {};
/// spielt einen 3D-Sound ab.
func void Snd_Play3D(var c_npc n0, var string s1) {};
/// Mit _(Zustandsname) wird ein neuer Tagesablauf generiert, siehe TA.d
func void TA(var c_npc self, var int start_h, var int stop_h, var func state, var string waypoint) {};
/// Melde einen Overlay-Tagesablauf an
func void TA_BeginOverlay(var c_npc self) {};
/// Cutscene an den zuletzt angegebenen Tagesablaufpunkt h�ngen
/// @param csName - Name der Cutscene ( der Name des "CS" - Files )
/// @param roleName - Die Rolle die der NSC dabei �bernehmen soll.
func void TA_CS(var c_npc self, var string csname, var string rolename) {};
/// Beende einen Overlay-Tagesablauf
func void TA_EndOverlay(var c_npc self) {};
/// Tagesablaufpunkt minutengenau angeben
func void TA_Min(var c_npc self, var int start_h, var int start_m, var int stop_h, var int stop_m, var func state, var string waypoint) {};
/// Entferne aktiven TA-Overlay
func void TA_RemoveOverlay(var c_npc self) {};
/// Noch nicht dokumentiert
func void Tal_Configure(var int i0, var int i1) {};
/// Noch nicht dokumentiert
func void Update_ChoiceBox(var string s0) {};
/// Ordnet den Raum: 's0' der Gilde 'guild' zu
func void Wld_AssignRoomToGuild(var string s0, var int guild) {};
/// Ordnet den Raum: 's0' dem speziellen Nsc 'roomowner' zu
func void Wld_AssignRoomToNpc(var string s0, var c_npc roomowner) {};
/// liefert eins zur�ck, wenn ein Item mit dem Entsprechende Flag (z.B.ITEM_KAT_FOOD )gefunden wurde
/// Globale Variable 'item' wird mit dem gefundenen Gegenstand initialisiert
func int Wld_DetectItem(var c_npc self, var int flags) {};
/// Diese Methode initilisiert die globale Skriptvariable "other" mit einem NSC, den "self" beim letzten Warnehmungscheck wargenommen hat.
/// Wenn die Methode einen entsprechenden NSC gefunden hat, liefert diese "1" und 'other' ist initialisiert
/// ansonsten wird "0" geliefert und "other" wird nicht ver�ndert.
/// @param instance - Name der zu suchenden Instanz ( "-1" angeben, wenn Instanzname unwichtig )
/// @param guild - Der zu suchende NSC muss Mitglied dieser Gilde sein ( "-1" angeben, wenn Gilde unwichtig )
/// @param aiState - Der AI-Zustandsname, in dem sich der NSC befinden soll ( NOFUNC angeben, wenn AI-State unwichtig )
func int Wld_DetectNpc(var c_npc self, var int instance, var func aistate, var int guild) {};
/// Wie Wld_DetectNpc(). Zus�tzlich kann per detectPlayer=0 der Spieler ignoriert werden.
func int Wld_DetectNpcEx(var c_npc self, var int npcinstance, var func aistate, var int guild, var int detectplayer) {};
/// liefert eins zur�ck, wenn der Player in der N�he ist
func int Wld_DetectPlayer(var c_npc self) {};
/// Tausche Gilden-AttitudenTabelle aus.
func void Wld_ExchangeGuildAttitudes(var string name) {};
/// Liefert den aktuellen Tag zur�ck (Z�hler), hierbei ist der StartTag (Gamestart) = 0.
func int Wld_GetDay() {};
/// liefert den NSC des Raums, in dem sich der SC vor dem letzten "Raumwechsel" befunden hat, zur�ck
/// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en
/// - wenn der SC 'drau�en' ist, dann wird GIL_NONE zur�ckgegeben
/// - wenn der aktive Raum gildenlos ist, dann wird GIL_NONE zur�ckgeliefert
func int Wld_GetFormerPlayerPortalGuild() {};
/// liefert den NSC des Raums, in dem sich der SC vor dem letzten "Raumwechsel" befunden hat, zur�ck
/// Raumwechsel ist dabei: Au�en->Raum1, Raum1->Raum2, -> Raum1->Au�en
/// - wenn der SC 'drau�en' ist, dann ist der R�ckgabe-Npc 'notValid'
/// - wenn der aktive Raum besitzerlos ist, dann ist der R�ckgabe-Npc 'notValid'
func c_npc Wld_GetFormerPlayerPortalOwner() {};
/// Ermittle Gildenattitude
func int Wld_GetGuildAttitude(var int guild1, var int guild2) {};
/// Liefert den State zum n�chsten Mob mit 'schemeName' zur�ck bzw. '-1' wenn kein solches Mob gefunden wurde
func int Wld_GetMobState(var c_npc self, var string schemename) {};
/// liefert Gilde des aktiven Raums, in dem sich der SC gerade befindet, zur�ck
/// - wenn der SC 'drau�en' ist, dann wird GIL_NONE zur�ckgegeben
/// - wenn der aktive Raum gildenlos ist, dann wird GIL_NONE zur�ckgeliefert
func int Wld_GetPlayerPortalGuild() {};
/// liefert den NSC des aktiven Raums, in dem sich der SC gerade befindet, zur�ck
/// - wenn der SC 'drau�en' ist, dann ist der R�ckgabe-Npc 'notValid'
/// - wenn der aktive Raum besitzerlos ist, dann ist der R�ckgabe-Npc 'notValid'
func c_npc Wld_GetPlayerPortalOwner() {};
/// F�ge Item in Welt ein entweder an einem WP oder einem FP
/// Vorsicht, funktioniert nicht, Items werden immer im Mittelpunkt der Welt inserted
func void Wld_InsertItem(var int iteminstance, var string spawnpoint) {};
/// F�ge NSC in Welt ein. Wobei SPawnpoint entweder ein WP oder ein FP sein darf.
func void Wld_InsertNpc(var int npcinstance, var string spawnpoint) {};
/// F�ge NSC in Welt ein. Wobei SPawnpoint entweder ein WP oder ein FP sein darf. Stirbt dieser NSC wird
/// nach "spawnDelay"-Sekunden ein neuer NSC am Spawnpoint erzeugt.
func void Wld_InsertNpcAndRespawn(var int instance, var string spawnpoint, var float spawndelay) {};
/// Noch nicht dokumentiert
func void Wld_InsertObject(var string s0, var string s1) {};
/// Sucht einen Freepoint im Umkreis von 20m vom NSC und liefert TRUE falls vorhanden und frei ('self' z�hlt als Blockierer nicht!) und sichtbar
func int Wld_IsFPAvailable(var c_npc self, var string fpname) {};
/// Noch nicht dokumentiert
func int Wld_IsFpAvailable(var instance n0, var string s1) {};
/// Sucht sich ein Mobsi im Umkreis von 10m und liefert TRUE falls gefunden. MOB wird nur zur�ckgeliefert, wenn es nicht besetzt ist.
func int Wld_IsMobAvailable(var c_npc self, var string schemename) {};
/// wie Wld_IsFPAvailable(), aber es wird immer der nahegelegenste genommen und 'self' z�hlt als Blockierer!
func int Wld_IsNextFPAvailable(var c_npc self, var string fpname) {};
/// Noch nicht dokumentiert
func int Wld_IsNextFpAvailable(var instance n0, var string s1) {};
/// Liefert "1" wenn aktuelle Weltzeit zwischen den beiden angegebenen Zeiten liegt (von - bis)
func int Wld_IsTime(var int hour1, var int min1, var int hour2, var int min2) {};
/// gefunden wurde. (es muss trotzdem eine VisualFX-Instanz mit dem Namen definiert worden sein!)
/// @param effectInstance - Name der VisualFX-Instanz
/// @param originVob - Ursprung/Verursacher (muss existieren!)
/// @param targetVob - Ziel fuer Effekt + Schaden
/// @param effectLevel - Bei Angabe von effectLevel wird nach einer VisualFX-Instanz mit dem Namen _L gesucht und verwendet falls sie
/// @param damage - Hoehe des Schadens
/// @param damageType - Schadensart (DAM_Xxx)
/// @param bIsProjectile - Effekt ist Projektil
func void Wld_PlayEffect(var string effectinstance, var int originvob, var int targetvob, var int effectlevel, var int damage, var int damagetype, var int bisprojectile) {};
/// Hiermit wird das angegebene Item aus der Welt entfernt und gel�scht
func int Wld_RemoveItem(var c_item item) {};
/// Noch nicht dokumentiert
func void Wld_RemoveNpc(var int i0) {};
/// Sendet eine Trigger-Nachricht an das VOB (z.B. Mover) mit dem angegeben Namen.
func void Wld_SendTrigger(var string vobname) {};
/// Sendet eine UnTrigger-Nachricht an das VOB (z.B. Mover) mit dem angegeben Namen.
func void Wld_SendUntrigger(var string vobname) {};
/// Setze Gildenattitude neu
func void Wld_SetGuildAttitude(var int guild1, var int attitude, var int guild2) {};
/// _Alle_ Mobs mit diesem _Schemanamen_ werden getriggert.
func void Wld_SetMobRoutine(var int hour1, var int min1, var string objname, var int state) {};
/// _Ein_ Objekt mit diesem _Vobnamen_ wird getriggert
func void Wld_SetObjectRoutine(var int hour1, var int min1, var string objname, var int state) {};
/// Setzt die Uhrzeit auf hour:min. hour kann gr��er als 23 sein, um zum n�chsten Tag zu springen.
func void Wld_SetTime(var int hour, var int min) {};