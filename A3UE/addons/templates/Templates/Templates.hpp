class Templates 
{
    class Vanilla_Base;

    class US_EU_A3UE_Base : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\US_EU_A3UE);                                                    // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        maps[] = {};                                                                           // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"temperate"};                                                                      // The climate that the template can be selected on.
        logo = QPATHTOFOLDER(Pictures\a3ue_logo.paa);
    };
    /*
    Climates: {"arid", "arctic", "temperate", "tropical"}
    */

    class US_EU_A3UE_EU : US_EU_A3UE_Base
    {                                                 // The path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\YULAK_ypg_flag.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "USE";                                                                                   // Name shown in the select menu.
        file = "US_EU_A3UE_EU";                                                 // The template file name - .sqf, that gets appended automatically.
        description = "The United States of Europe";                                // If this isn't included, no description will show (unless inherited from the base class.)
    };
    
    class US_EU_A3UE_ : US_EU_A3UE_Base
    {
        side = "Inv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\YULAK_rus_flag.paa);                                  // Path to an icon to be displayed in the select menu.
        name = "US Joint Forces";                                                                        // Name shown in the select menu.
        file = "US_EU_A3UE_US";                                                                  // The template file name - .sqf, that gets appended automatically.
        description = "Joint US invasion force";                              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class US_EU_A3UE_SOAR : US_EU_A3UE_Base
    {
        side = "Riv";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\YULAK_spz_flag.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "US SOF";                                                                              // Name shown in the select menu.
        file = "US_EU_A3UE_SOAR";                                                                        // The template file name - .sqf, that gets appended automatically.
        description = "US Special Forces";              // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class US_EU_A3UE_REB : US_EU_A3UE_Base
    {
        side = "Reb";                                                                                   // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Pictures\YULAK_ylf_flag.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "Rebels";                                                                                   // Name shown in the select menu.
        file = "US_EU_A3UE_REB";                                                       // The template file name - .sqf, that gets appended automatically.
        description = "Allan please add details";                                        // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class US_EU_A3UE_Civilians : US_EU_A3UE_Base
    {
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Pictures\YULAK_ypg_flag.paa);                                 // Path to an icon to be displayed in the select menu.
        name = "Europeans";
        file = "US_EU_A3UE_Civilians";
        description = "Citizens of the EU";
    };
};