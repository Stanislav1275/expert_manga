(defrule what-genre-of-manga-do-you-prefer-to-read?
   =>
   (bind ?response (ask-question-with-options "What genre of manga do you prefer to read? 1 - Comedy, 2 - Horror, 3 - Everyday Life, 4 - Fantasy" 1 2 3 4))
   (switch ?response
      (case 1 then
         (assert (Comedy))
         (printout t "Comedy" crlf
                   "------" crlf))
      (case 2 then
         (assert (Horror))
         (printout t "Horror" crlf
                   "------" crlf))
      (case 3 then
         (assert (EverydayLife))
         (printout t "Everyday Life" crlf
                   "----------------" crlf))
      (case 4 then
         (assert (Fantasy))
         (printout t "Fantasy" crlf
                   "-------" crlf))
      (default
         (printout t "Invalid response. Please select a valid genre." crlf))
   )
)
(defrule is-the-manga-ongoing-or-completed?
   =>
   (bind ?response (ask-question-with-options "Is the manga ongoing or completed? 1 - completed, 2 - ongoing" 1 2))
   (switch ?response
      (case 1 then
         (assert (Completed))
         (printout t "Completed" crlf
                   "-------" crlf))
      (case 2 then
         (assert (Ongoing))
         (printout t "Ongoing" crlf
                   "---------" crlf))
      (default
         (printout t "Invalid response. Please select a valid status." crlf))
   )
)
(defrule manga-gender-question
   =>
   (bind ?response (ask-question-with-options "What is the gender of the main character? (1 - Female, 2 - Male)" 1 2))
   (switch ?response
      (case 1 then
         (assert (FemaleCharacter))
         (printout t "Female character selected" crlf
                   "-----------------" crlf))
      (case 2 then
         (assert (MaleCharacter))
         (printout t "Male character selected" crlf
                   "----------------" crlf))
      (default
         (printout t "Invalid response. Please select a valid option." crlf))
   )
)
(defrule manga-length-question
   =>
   (bind ?response (ask-question-with-options "What is the length of the manga? (1 - 20-200, 2 - 200+)" 1 2))
   (switch ?response
      (case 1 then
         (assert (ShortManga))
         (printout t "20-200 chapters" crlf
                   "-----------------" crlf))
      (case 2 then
         (assert (LongManga))
         (printout t "200+ chapters" crlf
                   "----------------" crlf))
      (default
         (printout t "Invalid response. Please select a valid option." crlf))
   )
)
(defrule ChertovkaOrReaper_Comedy_Completed_20-200_FemaleCharacter
   (Comedy)
   (Completed)
   (ShortManga)
   (FemaleCharacter)
   =>
    (if (yes-or-no "Is the main character a noblewoman in the Middle Ages? (yes/no; y/n): ")
        then
        (assert (Beware of the Villainess))
        (printout t "" crlf)
        (printout t "Chosen Beware of the Villainess, END" crlf)
        else
        (assert (I am the grim reaper))
        (printout t "" crlf)
        (printout t "Chosen I am the grim reaper" crlf)
      )
)
(defrule SommonOrGerzog_Comedy_Completed_ShortManga_MaleCharacter
   (Comedy)
   (Completed)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the main character a sociopath? (yes/no; y/n): ")
     then
     (assert (Her sommon))
     (printout t "" crlf)
     (printout t "Her sommon, END" crlf)
     else
     (assert (Love Advice of the Duke of Hell))
     (printout t "" crlf)
     (printout t "Love Advice of the Duke of Hell" crlf)
   )
)
(defrule Comedy_Completed_LongManga_FemaleCharacter_PhoenexOrAdulter_1
   (Comedy)
   (Completed)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Are there palace intrigues? (yes/no; y/n): ")
     then
     (assert (Descent-of-the-Phoenix))
     (printout t "" crlf)
     (printout t "Chosen Descent of the Phoenix, END" crlf)
     else
     (assert (The-Adulterer-Must-Die))
     (printout t "" crlf)
     (printout t "Chosen The Adulterer Must Die" crlf)
   )
)
(defrule Comedy_Completed_LongManga_MaleCharacterMasterBattle1
   (Comedy)
   (Completed)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the main character learning to fight? (yes/no; y/n): ")
     then
     (assert (BATTLE in Live Broadcast))
     (printout t "" crlf)
     (printout t "Chosen BATTLE in Live Broadcast, END" crlf)
     else
     (assert (MASTER))
     (printout t "" crlf)
     (printout t "Chosen MASTER, END" crlf)
   )
)
(defrule Comedy_Ongoing_ShortManga_FemaleCharacterHC_ADH_1
   (Comedy)
   (Ongoing)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Does the heroine work in a hospital? (yes/no; y/n): ")
     then
     (assert (Horror Clinic))
     (printout t "" crlf)
     (printout t "Chosen Horror Clinic, END" crlf)
     else
     (assert (Adopted Daughter of the Hero))
     (printout t "" crlf)
     (printout t "Chosen Adopted Daughter of the Hero: Hero's Adopted Daughter" crlf)
   )
)
(defrule Comedy_Ongoing_ShortManga_MaleCharacter_MGR_SHNS
   (Comedy)
   (Ongoing)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero date an office worker? (yes/no; y/n): ")
     then
     (assert (My-Grim-Romance))
     (printout t "" crlf)
     (printout t "Chosen My Grim Romance, END" crlf)
     else
     (assert (Shuher!-We-Have-a-New-Student))
     (printout t "" crlf)
     (printout t "Chosen Shuher! We Have a New Student" crlf)
   )
)
(defrule Comedy_Ongoing_LongManga_FemaleCharacter_WB_RG
   (Comedy)
   (Ongoing)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a vampire? (yes/no; y/n): ")
     then
     (assert (White-Blood:Rascally-Girls))
     (printout t "" crlf)
     (printout t "Chosen White Blood: Rascally Girls, END" crlf)
     else
     (assert (Another-Title-Here))
     (printout t "" crlf)
     (printout t "Chosen Another Title Here" crlf)
   )
)
(defrule Comedy_Ongoing_LongManga_MaleCharacter_LF
   (Comedy)
   (Ongoing)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Did the hero experience a problem with lucism? (yes/no; y/n): ")
     then
     (assert (Lucism:Four-Heroes))
     (printout t "" crlf)
     (printout t "Chosen Lucism: Four Heroes, END" crlf)
     else
     (assert (Another-Title-Here))
     (printout t "" crlf)
     (printout t "Chosen Another Title Here" crlf)
   )
)
(defrule Fantasy_Completed_ShortManga_FemaleCharacter_DemonInService
   (Fantasy)
   (Completed)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a demon in service to Satan? (yes/no; y/n): ")
     then
     (assert (I-am-the-Grim-Reaper))
     (printout t "" crlf)
     (printout t "Chosen I am the Grim Reaper, END" crlf)
     else
     (assert (Beware-of-the-Villainess))
     (printout t "" crlf)
     (printout t "Chosen Beware of the Villainess" crlf)
   )
)
(defrule Fantasy_Completed_ShortManga_MaleCharacter_SwordAndMagicWorld
   (Fantasy)
   (Completed)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero journey to a world of swords and magic? (yes/no; y/n): ")
     then
     (assert (Her-Servant))
     (printout t "" crlf)
     (printout t "Chosen Her Servant, END" crlf)
     else
     (assert (Wanderer))
     (printout t "" crlf)
     (printout t "Chosen Wanderer" crlf)
   )
)
(defrule Fantasy_Completed_LongManga_FemaleCharacter_VampireVictim
   (Fantasy)
   (Completed)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a victim of vampire xenophobia? (yes/no; y/n): ")
     then
     (assert (White_Blood))
     (printout t "" crlf)
     (printout t "Chosen White Blood, END" crlf)
     else
     (assert (Descent of the Phoenix))
     (printout t "" crlf)
     (printout t "Chosen : Descent of the Phoenix" crlf)
   )
)
(defrule Fantasy_Completed_LongManga_MaleCharacter_GreatCommanderDisciple
   (Fantasy)
   (Completed)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the hero a disciple of a great commander? (yes/no; y/n): ")
     then
     (assert (Master))
     (printout t "" crlf)
     (printout t "Chosen Master, END" crlf)
     else
     (assert (SoloLeveling))
     (printout t "" crlf)
     (printout t "Chosen SoloLeveling" crlf)
   )
)
(defrule Fantasy_Ongoing_ShortManga_FemaleCharacter_SupernaturalInteraction
   (Fantasy)
   (Ongoing)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Does the heroine interact with supernatural creatures? (yes/no; y/n): ")
     then
     (assert (HorrorClinic))
     (printout t "" crlf)
     (printout t "Chosen Horror Clinic, END" crlf)
     else
     (assert (AdoptedDaughterOfTheHero))
     (printout t "" crlf)
     (printout t "Chosen Adopted Daughter Of The Hero" crlf)
   )
)
(defrule Fantasy_Ongoing_ShortManga_MaleCharacter_AgainstNationalArms
   (Fantasy)
   (Ongoing)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero oppose the entire country's weaponry? (yes/no; y/n): ")
     then
     (assert (SwordMasterOnTheRoof))
     (printout t "" crlf)
     (printout t "Chosen Sword Master on the Roof, END" crlf)
     else
     (assert (Nanomachines))
     (printout t "" crlf)
     (printout t "Chosen Nanomachines" crlf)
   )
)
(defrule Fantasy_Ongoing_LongManga_FemaleCharacter_ImmortalMagicalBeing
   (Fantasy)
   (Ongoing)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine an immortal magical being? (yes/no; y/n): ")
     then
     (assert (MyWifeIsTheDemonQueen))
     (printout t "" crlf)
     (printout t "Chosen My Wife is the Demon Queen, END" crlf)
     else
     (assert (TheAdultererMustDie))
     (printout t "" crlf)
     (printout t "ChosenTheAdultererMustDie" crlf)
   )
)
(defrule Fantasy_Ongoing_LongManga_MaleCharacter_RebirthAfterDeath
   (Fantasy)
   (Ongoing)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero experience a rebirth after death? (yes/no; y/n): ")
     then
     (assert (SSSRankHunter))
     (printout t "" crlf)
     (printout t "Chosen SSS Rank Hunter, END" crlf)
     else
     (assert (WarSlave))
     (printout t "" crlf)
     (printout t "Chosen WarSlave" crlf)
   )
)
(defrule EverydayLife_Completed_ShortManga_FemaleCharacter_MafiaBoss
   (EverydayLife)
   (Completed)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine the head of a criminal conglomerate? (yes/no; y/n): ")
     then
     (assert (MyWifeIsAGangster))
     (printout t "" crlf)
     (printout t "Chosen My Wife is a Gangster, END" crlf)
     else
     (assert (BewareOfThisDevil))
     (printout t "" crlf)
     (printout t "Chosen Beware Of This Devil" crlf)
   )
)
(defrule EverydayLife_Completed_ShortManga_MaleCharacter_DangerousHooligan
   (EverydayLife)
   (Completed)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the hero considered a dangerous hooligan at school? (yes/no; y/n): ")
     then
     (assert (Shuher_WeHaveANewStudent))
     (printout t "" crlf)
     (printout t "Chosen Shuher! We Have a New Student, END" crlf)
     else
     (assert (LoveAdviceOfTheDukeOfHell))
     (printout t "" crlf)
     (printout t "Chosen Love Advice of the Duke of Hell" crlf)
   )
)
(defrule EverydayLife_Completed_LongManga_FemaleCharacter_InBookWorld
   (EverydayLife)
   (Completed)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Does the heroine find herself in the world of a novel she read? (yes/no; y/n): ")
     then
     (assert (TomoTyan_Girl))
     (printout t "" crlf)
     (printout t "Chosen Tomo Tyan - Girl, END" crlf)
     else
     (assert (FlowersAfterBerries))
     (printout t "" crlf)
     (printout t "Chosen Flowers After Berries" crlf)
   )
)
(defrule EverydayLife_Completed_LongManga_MaleCharacter_LearnsToFight
   (EverydayLife)
   (Completed)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero learn to fight? (yes/no; y/n): ")
     then
     (assert (RascallyGirls))
     (printout t "" crlf)
     (printout t "Chosen Rascally Girls, END" crlf)
     else
     (assert (BattleInLiveBroadcast))
     (printout t "" crlf)
     (printout t "Chosen Battle in Live Broadcast" crlf)
   )
)
(defrule EverydayLife_Ongoing_ShortManga_FemaleCharacter_SupernaturalInteraction
   (EverydayLife)
   (Ongoing)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Does the heroine interact with supernatural beings? (yes/no; y/n): ")
     then
     (assert (HorrorClinic))
     (printout t "" crlf)
     (printout t "Chosen Horror Clinic, END" crlf)
     else
     (assert (AdoptedDaughterOfTheHero))
     (printout t "" crlf)
     (printout t "Chosen Adopted Daughter of the Hero" crlf)
   )
)
(defrule EverydayLife_Ongoing_ShortManga_MaleCharacter_WantsToBeGreatCyclist
   (EverydayLife)
   (Ongoing)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Does the hero want to become a great cyclist? (yes/no; y/n): ")
     then
     (assert (Vetrolom))
     (printout t "" crlf)
     (printout t "Chosen Vetrolom, END" crlf)
     else
     (assert (Lucism))
     (printout t "" crlf)
     (printout t "Chosen Lucism" crlf)
   )
)
(defrule EverydayLife_Ongoing_LongManga_FemaleCharacter_SoldIntoSlavery
   (EverydayLife)
   (Ongoing)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Was the heroine sold into slavery by her parents? (yes/no; y/n): ")
     then
     (assert (MilitarySlave))
     (printout t "" crlf)
     (printout t "Chosen Military Slave, END" crlf)
     else
     (assert (InsomniaLaw))
     (printout t "" crlf)
     (printout t "Chosen Insomnia Law" crlf)
   )
)
(defrule EverydayLife_Ongoing_LongManga_MaleCharacter_FatherIsInfluentialKiller
   (EverydayLife)
   (Ongoing)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the hero's father an influential killer? (yes/no; y/n): ")
     then
     (assert (Bastard))
     (printout t "" crlf)
     (printout t "Chosen Bastard, END" crlf)
     else
     (assert (GrimReaper))
     (printout t "" crlf)
     (printout t "Chosen Grim Reaper" crlf)
   )
)
(defrule Horror_Completed_ShortManga_FemaleCharacter_SinfulKiller
   (Horror)
   (Completed)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a sinner who kills to survive? (yes/no; y/n): ")
     then
     (assert (GrimReaper))
     (printout t "" crlf)
     (printout t "Chosen I am the grim reaper, END" crlf)
     else
     (assert (NightmareHouse))
     (printout t "" crlf)
     (printout t "Chosen Nightmare House" crlf)
   )
)
(defrule Horror_Completed_ShortManga_MaleCharacter_IntelligentMonsters
   (Horror)
   (Completed)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Have intelligent monsters taken over the world? (yes/no; y/n): ")
     then
     (assert (DearHouse))
     (printout t "" crlf)
     (printout t "Chosen Dear House, END" crlf)
     else
     (assert (BoyWithGun))
     (printout t "" crlf)
     (printout t "Chosen Boy With Gun" crlf)
   )
)
(defrule Horror_Completed_LongManga_FemaleCharacter_XenophobicVampires
   (Horror)
   (Completed)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a victim of xenophobic vampires? (yes/no; y/n): ")
     then
     (assert (WhiteBlood))
     (printout t "" crlf)
     (printout t "Chosen White Blood: Descent of the Phoenix, END" crlf)
     else
     (assert (Erma))
     (printout t "" crlf)
     (printout t "Chosen Erma" crlf)
   )
)
(defrule Horror_Completed_LongManga_MaleCharacter_SerialKiller
   (Horror)
   (Completed)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is the hero a serial killer? (yes/no; y/n): ")
     then
     (assert (SwineHerd))
     (printout t "" crlf)
     (printout t "Chosen Swine Herd, END" crlf)
     else
     (assert (Erma))
     (printout t "" crlf)
     (printout t "Chosen Erma" crlf)
   )
)
(defrule Horror_Ongoing_ShortManga_FemaleCharacter_Homunculus
   (Horror)
   (Ongoing)
   (ShortManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Is the heroine a homunculus? (yes/no; y/n): ")
     then
     (assert (Claymore))
     (printout t "" crlf)
     (printout t "Chosen Claymore, END" crlf)
     else
     (assert (ScreamQueen))
     (printout t "" crlf)
     (printout t "Chosen Scream Queen" crlf)
   )
)
(defrule Horror_Ongoing_ShortManga_MaleCharacter_FaustDeal
   (Horror)
   (Ongoing)
   (ShortManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is it an interpretation of the Faust story and deals with the Devil? (yes/no; y/n): ")
     then
     (assert (DevilBoy))
     (printout t "" crlf)
     (printout t "Chosen Devil Boy, END" crlf)
     else
     (assert (CreatingHellFromScratch))
     (printout t "" crlf)
     (printout t "Chosen Creating Hell From Scratch" crlf)
   )
)
(defrule Horror_Ongoing_LongManga_FemaleCharacter_SeesEvilSpirits
   (Horror)
   (Ongoing)
   (LongManga)
   (FemaleCharacter)
   =>
   (if (yes-or-no "Does the heroine see evil spirits? (yes/no; y/n): ")
     then
     (assert (GirlWhoSeesIt))
     (printout t "" crlf)
     (printout t "Chosen Girl Who Sees It, END" crlf)
     else
     (assert (DarkQueen))
     (printout t "" crlf)
     (printout t "Chosen Dark Queen" crlf)
   )
)
(defrule Horror_Ongoing_LongManga_MaleCharacter_CurseWish
   (Horror)
   (Ongoing)
   (LongManga)
   (MaleCharacter)
   =>
   (if (yes-or-no "Is there a curse that can grant wishes or kill? (yes/no; y/n): ")
     then
     (assert (DivineMercy))
     (printout t "" crlf)
     (printout t "Chosen Divine Mercy, END" crlf)
     else
     (assert (LastMan))
     (printout t "" crlf)
     (printout t "Chosen Last Man" crlf)
   )
)