private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC; //dlc stuff if your templates needs it

/*
private _obj = curatorMouseOver select 1;
copyToClipboard str (configOf _obj);
hint str (configOf _obj);

This is a command I used to get the configFile path of vehicles, you need to be in Zeus and have the vehicle selected
*/

private _hasHatchet = isClass (configFile >> "CfgVehicles" >> "vtx_MH60M");
private _hasSOAR = isClass (configFile >> "CfgVehicles" >> "TF373_SOAR_MH47G");
//private _hasRTS = isClass ("allan please add details");
private _hasMTLB = isClass (configFile >> "CfgVehicles" >> "tbd_mtlb_6mb_1p39");
private _hasSFP = isClass (configFile >> "CfgVehicles" >> "sfp_lvkv90c");
private _hasFFP = isClass (configFile >> "CfgVehicles" >> "ffp_cv9030");
//private _hasAC130 = isClass ("allan please add details");
private _hasRHSPlus = isClass (configFile >> "CfgVehicles" >> "FP_UAF_Abrams");
private _hasHELL = isClass (configFile >> "CfgVehicles" >> "F16_B52_BLU");
private _hasChallenger = isClass (configFile >> "CfgVehicles" >> "qav_challenger2");
//private _hasAFRF = isClass ("allan please add details");
//private _hasTechnics = isClass ("allan please add details");
private _hasUAF = isClass (configFile >> "CfgVehicles" >> "FA_UAF_BTR4");
//private _hasUFP = isClass ("allan please add details");
//private _hasSaber = isClass ("allan please add details");
private _hasHELLHeli = isClass (configFile >> "CfgVehicles" >> "EC635_Unarmed_BW");
private _hasF16 = isClass (configFile >> "CfgVehicles" >> "FIR_F16C_910345");
//private _hasAV8B = isClass ("allan please add details");
private _hasF15 = isClass (configFile >> "CfgVehicles" >> "FIR_F15A_318FIS_1");
private _hasTornado = isClass (configFile >> "CfgVehicles" >> "Tornado_AWS_GER_4301");
private _hasF18 = isClass (configFile >> "CfgVehicles" >> "FIR_F18C_MALS11");
//private _hasA10 = isClass ("allan please add details");
//private _hasSU25 = isClass ("allan please add details");
//private _hasEF2000 = isClass ("allan please add details");
//private _hasMilGear = isClass ("allan please add details");
//private _hasProjectMCombatCarbines = isClass ("allan please add details");
//private _hasProjectMSnipers = isClass ("allan please add details");
//private _hasProjectMHandguns = isClass ("allan please add details");
//private _hasProjectMPistols = isClass ("allan please add details");
//private _hasDAGR = isClass ("allan please add details");
//private _hasJCA = isClass ("allan please add details");
//private _hasTFLEquipment = isClass ("allan please add details");
//////////////////////////
//   Side Information   //
//////////////////////////

#include "..\..\script_component.hpp" // TAKE NOTE OF THIS. WITHOUT THIS, YOU CAN'T USE MACROS LIKE QPATHTOFOLDER.

["name", "USE"] call _fnc_saveToTemplate;
["spawnMarkerName", "USE Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_AAF_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Pictures\YULAK_ypg_flag.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "flag_YULAK_YPG"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

//["vehiclesSDV", ["B_SDV_01_F"]] call _fnc_saveToTemplate; //used only in salvage mission and only if template has "vanilla" flag 
/// can be "B_SDV_01_F", "O_SDV_01_F" or "I_SDV_01_F"

//["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; //used in QRF orbital and crashsite mission
/// can be a vehicle or prop like in example above(but it must have physix)

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basicVehicles             = [
    "BWA3_Eagle_Fleck",
    "ASZ_LR110_CCpara",
    "ASZ_LR90_EI",
    "ffaa_et_anibal",
    "ffaa_et_neton_mk2",
    "UK3CB_BAF_LandRover_Soft_FFR_Green_A_MTP"
];

private _unarmedLightVehicles      = [
    "BWA3_Eagle_Fleck",
    "ASZ_LR110_AM",
    "ASZ_LR90_EI",
    "ASZ_VM90_EI",
    "ffaa_et_anibal",
    "ffaa_et_vamtac_trans",
    "ffaa_et_vamtac_trans_blind",
    "UK3CB_BAF_LandRover_Hard_FFR_Green_A_MTP",
    "UK3CB_BAF_LandRover_Snatch_FFR_Green_A_MTP"
];

private _armedLightVehicles        = [
    "BWA3_Dingo2_FLW200_GMW_CG13_Fleck",
    "BWA3_Dingo2_FLW200_M2_CG13_Fleck",
    "BWA3_Dingo2_FLW100_MG3_CG13_Fleck",
    "BWA3_Eagle_FLW100_Fleck",
    "amf_pvp_01_top_CE_f",
    "amf_pvp_01_mag_CE_f",
    "AMF_VB2L_CE_762_01_F",
    "AMF_VBL_CE_127_01_F",
    "AMF_VBL_CE_762_01_F",
    "amf_VBAE_01_CE_f",
    "amf_VBAE_03_CE_f",
    "amf_VBAE_02_CE_f",
    "ASZ_PUMA4x4CC_MG30",
    "ASZ_PUMA4x4_M2",
    "ASZ_PUMA4x4_TOW",
    "ASZ_PUMA6x6CC_MG3",
    "ASZ_PUMA6x6_hitrole",
    "ASZ_PUMA6x6_M2",
    "ASZ_PUMA6x6_AT",
    "ASZ_LR110_CCpara_MG3",
    "ASZ_LR90_M2",
    "ASZ_LR90_MK19",
    "ASZ_LR90_TOW",
    "ASZ_VM90_EI_P",
    "ASZ_VM90spop",
    "ASZ_VM90_EI_M2",
    "ASZ_VTML_hitrole",
    "ASZ_VTML_hitrole_LR",
    "ASZ_VTML_M2",
    "ASZ_VTML_M2_LR",
    "ASZ_VTML_M2_Protect",
    "ASZ_VTML_M2_Protect_LR",
    "ffaa_et_lince_lag40",
    "ffaa_et_lince_m2",
    "ffaa_et_lince_mg3",
    "ffaa_et_vamtac_lag40",
    "ffaa_et_vamtac_m2",
    "ffaa_et_vamtac_tow",
    "ffaa_et_vamtac_crows",
    "ffaa_et_vamtac_st5_lag40",
    "ffaa_et_vamtac_st5_m2",
    "ffaa_et_vamtac_st5_mg3",
    "ffaa_et_vamtac_st5_spike",
    "UK3CB_BAF_Coyote_Passenger_L134A1_W_MTP",
    "UK3CB_BAF_Coyote_Passenger_L111A1_W_MTP",
    "UK3CB_BAF_Husky_Passenger_GMG_Green_MTP",
    "UK3CB_BAF_Husky_Passenger_GPMG_Green_MPT",
    "UK3CB_BAF_Husky_Passenger_HMG_Green_MPT",
    "UK3CB_BAF_LandRover_WMIK_GMG_FFR_Green_A_MPT",
    "UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_A_MPT",
    "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_A_MPT",
    "UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_A_MPT",
    "UK3CB_BAF_Panther_GPMG_Green_A_MPT"
];

private _transportTrucks           = [
    "AMF_GBC180_PERS_01",
    "ASZ_ACTL4x4_EI",
    "ffaa_et_m250_carga_blin",
    "ffaa_et_m250_carga_lona_blin",
    "ffaa_et_pegaso_carga",
    "ffaa_et_pegaso_carga_lona",
    "UK3CB_BAF_MAN_HX58_Transport_Green_MTP"
];

private _cargoTrucks               = [
    "AMF_GBC180_PLATEAU_01",
    "AMF_GBC180_ViV",
    "ASZ_ACTL6x6_logistic",
    "ffaa_et_m250_recuperacion_blin",
    "UK3CB_BAF_MAN_HX58_Cargo_Green_A_MTP"
];

private _ammoTrucks                = [
    "AMF_GBC180_AmmoTruck",
    "ffaa_et_m250_municion_blin",
    "ffaa_et_pegaso_municion"
];

private _repairTrucks              = [
    "AMF_GBC180_MECA_01",
    "ASZ_VCC2_rep",
    "ASZ_ACTL6x6_repair",
    "ASZ_VM90_EI_rep",
    "ffaa_et_m250_repara_municion_blin",
    "ffaa_et_pegaso_repara_municion",
    "UK3CB_BAF_MAN_HX58_Repair_Green_MTP"
];

private _fuelTrucks                = [
    "ASZ_ACTL6x6_fuel",
    "ffaa_et_m250_combustible_blin",
    "ffaa_et_pegaso_combustible",
    "UK3CB_BAF_MAN_HX58_Fuel_Green_MTP"
];

private _medicalTrucks             = [
    "AMF_VBMR_SAN_CE",
    "ASZ_VCC2_EI_amb",
    "ASZ_VM90_EI_amb",
    "ffaa_et_toa_ambulancia",
    "UK3CB_BAF_LandRover_Amb_FFR_Green_A_MTP"
];

private _lightAPCs                 = [
    "B_AMF_VAB_ULTIMA_TOP_X8_F",
    "AMF_VBMR_ARX30_CE",
    "AMF_VBMR_DEF_CE",
    "AMF_VBMR_GENIE_CE",
    "AMF_VBMR_HMG_CE",
    "AMF_VBMR_GMG_CE",
    "AMF_VBMR_MMP_CE",
    "AMF_VBMR_MISTRAL_CE",
    "ASZ_AAV_EI_camo",
    "ASZ_VCC1_EI_camo",
    "ASZ_VCC1_EI_camo_plus",
    "ASZ_Cougar_6x6",
    "AMF_VBMRL_127_CCE",
    "AMF_VBMRL_762_CCE",
    "ffaa_ar_piranhaIIIC",
    "ffaa_et_toa_spike",
    "ffaa_et_rg31_samson",
    "UK3CB_BAF_FV432_Mk3_GPMG_Green_MTP",
    "UK3CB_BAF_FV432_Mk3_RWS_Green_MTP"
];

private _APCs                      = [
    "AMF_VBCI_CE_01_F",
    "ASZ_SuperAV_EI",
    "ASZ_SuperAV_EI_battlefield",
    "ASZ_Freccia",
    "ASZ_Freccia_AT",
    "ffaa_ar_piranhaIIIC_lance"
];

private _airborneVehicles          = [
    "ASZ_LR110_CCpara",
    "ASZ_LR90_EI",
    "ASZ_LR110_CCpara_MG3"
];

private _IFVs                      = [
    "BWA3_Puma_Fleck",
    "ASZ_Dardo",
    "ffaa_et_pizarro_mauser",
    "UK3CB_BAF_Warrior_A3_W_MTP"
];

private _tanks                     = [
    "BWA3_Leopard2_Fleck",
    "B_AMF_TANK_01",
    "B_AMF_TANK_CE_02_F",
    "ASZ_Ariete_camo",
    "ASZ_Ariete_camo_plus",
    "ffaa_et_leopardo"
];

private _lightTanks                = [
    "B_AMF_AMX10_RCR_01_F",
    "B_AMF_AMX10_RCR_SPEAR_01_F",
    "AMF_EBCR_CE_01",
    "ASZ_Centauro_B1"
];

private _SPAA                      = [
    "ffaa_et_vamtac_mistral",
    "AMF_VBMR_MISTRAL_CE"
];

private _transportBoats            = [
    "ffaa_ar_supercat",
    "ffaa_ar_zodiac_hurricane",
    "ffaa_ar_zodiac_hurricane_long"
];

private _armedBoats                = [
    "UK3CB_BAF_RHIB_GPMG_MTP",
    "UK3CB_BAF_RHIB_HMG_MTP"
];

private _amphibiousVehicles        = [
    "ASZ_AAV_EI_camo",
    "ASZ_SuperAV_EI",
    "ASZ_SuperAV_EI_battlefield"
];

private _casPlanes                 = [
    "ASZ_AV8B",
    "ASZ_EFA",
    "AMF_RAFALE_C_01_F",
    "AMF_RAFALE_GREEK_01_F",
    "ffaa_ar_harrier"
];

private _asPlanes                  = [
    "AMF_RAFALE_C_01_F",
    "AMF_RAFALE_M_01_F",
    "B_AMF_PLANE_FIGHTER_02_F",
    "AMF_RAFALE_GREEK_01_C",
    "ASZ_EFA",
    "ffaa_ea_ef18m"
];

private _transportPlanes           = [
    "B_AMF_PLANE_TRANSPORT_01_F",
    "ASZ_C130J_AM",
    "DDL_C27J_AM",
    "UK3CB_BAF_Hercules_C4_MTP"
];

/*
private _gunshipPlanes             = [

];
*/

private _lightHelicopters          = [
    "AMF_panther_FRA",
    "ASZ_AB212_AM",
    "ASZ_AB212_AM_ico",
    "ASZ_AB412_EI",
    "ASZ_AB412_EI_reos",
    "ASZ_AH6_EI_reos",
    "ffaa_famet_ec135",
    "ffaa_uh1h",
    "ffaa_uh1h_armed",
    "UK3CB_BAF_Wildcat_HMA2_TRN_8A_MTP"
];

private _transportHelicopters      = [
    "BWA3_NH90_TTH_Fleck",
    "BWA3_NH90_TTH_M3M_Fleck",
    "amf_cougar",
    "B_AMF_Heli_Transport_01_F",
    "B_AMF_Heli_Transport_4RHFS_01_F",
    "amf_nh90_tth_transport",
    "ASZ_CH47_EI",
    "ASZ_EH101_MM",
    "ASZ_NH90_EI",
    "ASZ_NH90_EI_reos",
    "ffaa_famet_cougar_armed",
    "ffaa_famet_cougar",
    "ffaa_famet_ch47_mg",
    "ffaa_nh90_tth_armed",
    "ffaa_nh90_tth_transport",
    "UK3CB_BAF_Merlin_HC3_18_MTP",
    "UK3CB_BAF_Merlin_HC3_18_GPMG_MTP",
    "UK3CB_BAF_Merlin_HC3_32_MTP",
    "UK3CB_BAF_Merlin_HC3_CSAR_MTP"
];

private _armedHelicopters          = [
    "ASZ_AB212_EI_FFAR",
    "ASZ_AB212_EI_M21",
    "ASZ_AB412_EI_ffar",
    "ASZ_AB412_EI_M21",
    "ASZ_AH6_EI_ffar",
    "UK3CB_BAF_Wildcat_AH1_CAS_8A_MTP"
];

private _gunshipHelicopters        = [
    "BWA3_Tiger",
    "BWA3_Tiger_RMK",
    "ASZ_A129",
    "ASZ_A129d",
    "UK3CB_BAF_Apache_AH1_JS_MTP",
    "UK3CB_BAF_Wildcat_AH1_HEL_8A_MTP",
    "AMF_TIGRE_01",
    "ffaa_famet_tigre",
    "UK3CB_BAF_Apache_AH1_CAS_MTP"
];

private _patrolHelicopters         = [
    "AMF_panther_FRA",
    "AMF_gazelle_afte_f",
    "AMF_gazelle_minigun_f",
    "ASZ_AB212_AM_ico",
    "ASZ_AB412_EI",
    "ASZ_AB412_EI_reos",
    "ASZ_AH6_EI_reos",
    "ffaa_famet_ec135"
];

private _SPGs                      = [
    "ffaa_ar_m109",
    "ffaa_et_m109",
    "ffaa_et_vamtac_cardom",
    "BWA3_Panzerhaubitze2000_Fleck"
];

private _attackUAVs                = [
    "B_AMF_REAPER_dynamicLoadout_F",
    "ffaa_et_searcherIII",
    "ffaa_et_reaper",
    "UK3CB_BAF_MQ9_Reaper_MTP"
];

private _portableUAVs              = [
    "AMF_Anafi_01_F",
    "ffaa_raven"
];

private _armedLightMilitiaVehicles = [
    "BWA3_Eagle_FLW100_Fleck",
    "ASZ_VTML_M2",
    "ffaa_et_vamtac_m2"
];

private _transportMilitiaTrucks    = [
    "AMF_GBC180_PERS_01",
    "ASZ_ACTL4x4_EI",
    "ffaa_et_m250_carga_blin",
    "ffaa_et_m250_carga_lona_blin"
];

private _unarmedMilitiaCars        = [
    "BWA3_Eagle_Fleck"
];

private _militiaAPCs               = [
    "B_AMF_VAB_ULTIMA_TOP_X8_F"
];

private _policeVehicles            = [
    "ASZ_LR110_CC",
    "ASZ_LR90_CC",
    "ASZ_VM90_CC_P",
    "ffaa_et_vamtac_ume",
    "UK3CB_BAF_LandRover_Snatch_Police_A"
];

private _staticMGs                 = [
    "ffaa_lag40_tripode",
    "ffaa_m2_ship_tripode",
    "UK3CB_BAF_Static_L111A1_Deployed_High_MTP",
    "UK3CB_BAF_Static_L134A1_Deployed_High_MTP",
    "UK3CB_BAF_Static_L7A2_Deployed_High_MTP"
];

private _staticATs                 = [
    "BWA3_MELLS_static_Fleck",
    "AMF_WireGuided_mmp_F",
    "asz_spikeLR_tripode",
    "ffaa_spike_tripode",
    "ffaa_tow_tripode"
];

private _staticAAs                 = [
    "ffaa_mistral_tripode",
    "RHS_Stinger_AA_pod_WD"
];

private _mortars                   = [
    "BWA3_MRS120_Fleck",
    "AMF_Mo120_01_CE_F",
    "UK3CB_BAF_Static_L16_Deployed_MTP"
];

private _howitzers                 = [
    "RHS_M119_MD"
];

private _radar                     = [
    "B_Radar_System_01_F"
];

private _sam                       = [
    "B_SAM_System_03_F"
];

if (_hasSOAR) then {
    _transportHelicopters append [
        "TF373_RAF_HC5"
    ];
} else {
    _transportHelicopters append [
        "UK3CB_BAF_Chinook_HC2_MTP"
    ];
};

if (_hasChallenger) then {
    _tanks append [
        "qav_challenger2",
        "qav_challenger2_e"
    ];
};

if (_hasSFP) then {
    _tanks append [
        "sfp_strv122",
        "sfp_strv121"
    ];
    _armedBoats append [
        "sfp_strb90_rws"
    ];
    _casPlanes append [
        "sfp_jas39"
    ];
    _asPlanes append [
        "sfp_jas39_cap"
    ];
    _staticATs append [
        "sfp_rbs55"
    ];
    _SPAA append [
        "sfp_lvkv90c"
    ];
    _IFVs append [
        "sfp_strf90c"
    ];
    _lightAPCs append [
        "sfp_patgb360"
    ];
    _SPGs append [
        "sfp_grkpbv90120"
    ];
    _unarmedLightVehicles append [
        "sfp_tgb16"
    ];
    _armedLightVehicles append [
        "sfp_tgb16_ksp58",
        "sfp_tgb16_rws"
    ];
    _policeVehicles append [
        "sfp_tgb16_ksp58_mp"
    ];
    _attackUAVs append [
        "sfp_uav03"
    ];
    _lightHelicopters append [
        "sfp_hkp9_sog",
        "sfp_hkp6"
    ];
    _transportHelicopters append [
        "sfp_hkp16",
        "sfp_hkp4_2015"
    ];
    _transportPlanes append [
        "sfp_tp84_2015"
    ];
    _howitzers append [
        "sfp_fh77"
    ];
    _mortars append [
        "sfp_grk84"
    ];
    _staticAAs append [
        "sfp_rbs70"
    ];
    _sam append [
        "sfp_rbs97"
    ];
};

if (_hasFFP) then {
    _IFVs append [
        "ffp_bmp2_atgm",
        "ffp_cv9030"
    ];
    _howitzers append [
        "ffp_122h63"
    ];
    _SPGs append [
        "ffp_rsrakh06"
    ];
    _unarmedLightVehicles append [
        "ffp_rg32m"
    ];
    _policeVehicles append [
        "ffp_rg32m_gmg"
    ];
    _ammoTrucks append [
        "ffp_susi8x8_ammo"
    ];
    _transportTrucks append [
        "ffp_susi_sa420",
        "ffp_susi_sa420_covered"
    ];
    _repairTrucks append [
        "ffp_susi_sa420_repair"
    ];
    _fuelTrucks append [
        "ffp_susi_sa420_fuel"
    ];
    _portableUAVs append [
        "ffp_oribter"
    ];
    _lightHelicopters append [
        "ffp_md500"
    ];
    _transportHelicopters append [
        "ffp_nh90",
        "ffp_nh90_armed"
    ];
    _tanks append [
        "ffp_leopard2a4",
        "ffp_leopard2a6"
    ];
    _staticAAs append [
        "ffp_23itk61"
    ];
    _staticATs append [
        "ffp_pstohj83"
    ];
};

if (_hasFFP && _hasJets) then {
    _casPlanes append [
        "ffp_jas39e"
    ];
    _asPlanes append [
        "ffp_jas39e"
    ];
};

if (_hasRHSPlus) then {
    _tanks append [
        "FP_UAF_Abrams"
    ];
    _SPAA append [
        "FP_Ger_Wiesel_AA",
        "FP_UAF_Bradley_AA"
    ];
    _radar append [
        "Ger_Wiesel_Radar"
    ];
    _lightAPCs append [
        "FP_UAF_Stryker",
        "FP_UAF_Stryker_Recon",
        "FP_UAF_Strkyer_MineClearer",
        "bushmaster_ukr_127"
    ];
    _SPGs append [
        "FP_UAF_Truck_MRL",
        "FP_UAF_Himars",
        "FP_UAF_M109A6",
        "FP_UAF_2S1"
    ];
    _transportTrucks append [
        "FP_UAF_Truck_Transport"
    ];
    _ammoTrucks append [
        "FP_UAF_Truck_Ammo"
    ];
    _fuelTrucks append [
        "FP_UAF_Truck_Fuel"
    ];
    _repairTrucks append [
        "FP_UAF_Truck_Repair"
    ];
    _basicVehicles append [
        "FP_UAF_Humvee"
    ];
    _unarmedLightVehicles append [
        "FP_UAF_Humvee_Armored"
    ];
    _armedLightVehicles append [
        "FP_UAF_Humvee_Armored_M2",
        "FP_UAF_Humvee_M2",
        "FP_UAF_Humvee_Tow",
        "FP_UAF_Humvee_Armored_PKM"
    ];
    _transportHelicopters append [
        "FP_UAF_Mi17",
        "FP_UAF_UH60_Unarmed"
    ];
    _armedHelicopters append [
        "FP_UAF_Mi17_Gunship"
    ];
    _gunshipHelicopters append [
        "FP_UAF_Mi35"
    ];
    _IFVs append [
        "FP_UAF_Bradley",
        "FP_UAF_Bradley_Busk"
    ];
    _medicalTrucks append [
        "bushmaster_ukr_medical"
    ];
    _casPlanes append [
        "FP_UAF_L159_ALCA"
    ];
    _asPlanes append [
        "FP_UAF_Mig29_AA"
    ];
};

if (_hasHELLHeli) then {
    _transportHelicopters append [
        "EC635_Unarmed_BW"
    ];
    _armedHelicopters append [
        "EC635_BW"
    ];
    _gunshipHelicopters append [
        "EC635_AT_BW"
    ];
};

if (_hasHELL) then {
    _transportPlanes append [
        "C130H_BLU"
    ];
    _casPlanes append [
        "F16C_BLU",
        "F16_B52_BLU"
    ];
    _asPlanes append [
        "F16C_BLU",
        "F16_B52_BLU",
        "M2000C_BLU"
    ];
    _lightAPCs append [
        "Leonidas3_BLU",
        "blx_M1117_GR"
    ];
    _lightHelicopters append [
        "HAFM_UH1H"
    ];
    _transportHelicopters append [
        "CH_47F_BLU",
        "NH90Armed_GR2"
    ];
    _armedHelicopters append [
        "HAFM_Kiowa"
    ];
    _unarmedLightVehicles append [
        "HAFM_HMMWV1",
        "HAFM_VBL2"
    ];
    _armedLightVehicles append [
        "HAFM_HMMWV1_Kornet",
        "HAFM_HMMWV1_Milan",
        "HAFM_HMMWV1_TOW",
        "HAFM_HMMWV1_MK19",
        "HAFM_HMMWV1_M2",
        "HAFM_VBL2_M50",
        "HAFM_VBL2_m240"
    ];
    _attackUAVs append [
        "HAFM_Pegasus"
    ];
};

if (_hasF16) then {
    _asPlanes append [
        "FIR_F16D_Polish_CFT",
        "FIR_F16C_Polish",
        "FIR_F16C_Polish_CFT"
    ];
    _casPlanes append [
        "FIR_F16D_Polish_CFT",
        "FIR_F16C_Polish",
        "FIR_F16C_Polish_CFT"
    ];
};

if (_hasF18) then {
    _asPlanes append [
        "FIR_F18C_FINNISH",
        "FIR_F18C_SWISS"
    ];
    _casPlanes append [
        "FIR_F18D_FINNISH",
        "FIR_F18D_Swiss"
    ];
};

if (_hasTornado) then {
    _asPlanes append [
        "Tornado_AWS_ADV_ita",
        "Tornado_AWS_ADV_uk"
    ];
    _casPlanes append [
        "Tornado_AWS_camo_ger",
        "Tornado_AWS_UK_617",
        "Tornado_AWS_camo_ita"
    ];
};

if (_hasUAF) then {
    _casPlanes append [
        "FA_UAF_F16A",
        "FA_UAF_Mig29"
    ];
    _asPlanes append [
        "FA_UAF_F16A",
        "FA_UAF_Mig29"
    ];
    _APCs append [
        "FA_UAF_BTR3",
        "FA_UAF_BTR4"
    ];
    _IFVs append [
        "FA_UAF_BMP1U"
    ];
    _tanks append [
        "FA_UAF_Leopard2A4",
        "FA_UAF_Leopard2A4_ERA",
        "FA_UAF_T64BM",
        "FA_UAF_T64BM2",
        "FA_UAF_T64BV",
        "FA_UAF_T84M"
    ];
    _unarmedLightVehicles append [
        "FA_UAF_Dozor",
        "FA_UAF_Novator"
    ];
    _armedLightVehicles append [
        "FA_UAF_Novator_ATGM"
    ];
    _transportTrucks append [
        "FA_UAF_Zamak"
    ];
    _repairTrucks append [
        "FA_UAF_Zamak_Repair"
    ];
    _fuelTrucks append [
        "FA_UAF_Zamak_Fuel"
    ];
    _medicalTrucks append [
        "FA_UAF_Fiona_Ambulance"
    ];
    _lightAPCs append [
        "FA_UAF_Dozor_Armed",
        "FA_UAF_Fiona",
        "FA_UAF_Shrek"
    ];
};

if (_hasGM) then {
    _basicVehicles append [
        "gm_ge_army_iltis_cargo"
    ];
    _armedLightVehicles append [
        "gm_ge_army_iltis_mg3"
    ];
    _transportTrucks append [
        "gm_ge_army_kat1_451_cargo"
    ];
    _cargoTrucks append [
        "gm_ge_army_kat1_454_cargo",
        "gm_ge_army_kat1_451_container"
    ];
    _ammoTrucks append [
        "gm_ge_army_kat1_454_reammo",
        "gm_ge_army_kat1_451_reammo"
    ];
    _repairTrucks append [
        "gm_ge_army_u1300l_repair"
    ];
    _fuelTrucks append [
        "gm_ge_army_kat1_451_refuel"
    ];
    _medicalTrucks append [
        "gm_ge_army_u1300l_medic",
        "gm_ge_army_m113a1g_medic_noinsignia"
    ];
    _lightAPCs append [
        "gm_ge_army_fuchsa0_engineer",
        "gm_ge_army_fuchsa0_reconniassance",
        "gm_dk_army_m113a2dk_noinsignia"
    ];
    _IFVs append [
        "gm_ge_army_marder1a2_noinsignia"
    ];
    _tanks append [
        "gm_ge_army_Leopard1a5_noinsignia",
        "gm_dk_army_Leopard1a5dk1_dozer"
    ];
    _lightTanks append [
        "gm_ge_army_luchsa2"
    ];
    _SPAA append [
        "gm_ge_army_gepard1a1"
    ];
    _lightHelicopters append [
        "gm_ge_army_bo105p1m_vbh_swooper"
    ];
    _transportHelicopters append [
        "gm_ge_army_ch53gs"
    ];
    _SPGs append [
        "gm_ge_army_kat1_463_mlrs"
    ];
    _transportMilitiaTrucks append [
        "gm_ge_army_kat1_451_cargo"
    ];
    _unarmedMilitiaCars append [
        "gm_ge_army_iltis_cargo"
    ];
    _militiaAPCs append [
        "gm_ge_army_m113a1g_apc_noinsignia"
    ];
    _staticMGs append [
        "gm_ge_army_mg3_aatripod"
    ];
    _mortars append [
        "gm_ge_army_m120"
    ];
};

// vehicles can be placed in more than one category if they fit between both. Cost will be derived by the higher category
["vehiclesBasic", _basicVehicles] call _fnc_saveToTemplate;			 // unarmed or armed, with 0-2 passengers
["vehiclesLightUnarmed", _unarmedLightVehicles] call _fnc_saveToTemplate;		 // must be unarmed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesLightArmed", _armedLightVehicles] call _fnc_saveToTemplate;             // Should be armed, unarmoured to lightly armoured, with 0-4 passengers
["vehiclesTrucks", _transportTrucks] call _fnc_saveToTemplate;		 // vehicle that can carry troops and cargoboxes
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;		 // vehicle that can carry only cargoboxes
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to rearm vehicles
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to repair vehicles
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;		 // wheeled vehicle with capability to refuel vehicles
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;		 // vehicle with capability to provide healing
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;             // armed, lightly armoured, with 6-8 passengers 
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;                  // armed with enclosed turret, armoured, with 6-8 passengers
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;              // airborne vehicles, could be with passenger seats or just a crew 
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;                  // capable of surviving multiple rockets, cannon armed, with 6-8 passengers
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;                 // cannon armed, heavely armored, passengers will be ignored
["vehiclesLightTanks", _lightTanks] call _fnc_saveToTemplate;             // tanks with poor armor and weapons
["vehiclesAA", _SPAA] call _fnc_saveToTemplate;                    // ideally heavily armed with anti-ground capability and enclosed turret. Passengers will be ignored

["vehiclesTransportBoats", _transportBoats] call _fnc_saveToTemplate;	// boat that can carry passengers and cargoboxes
["vehiclesGunBoats", _armedBoats] call _fnc_saveToTemplate;              // armed boat, with passengers(?)
["vehiclesAmphibious", _amphibiousVehicles] call _fnc_saveToTemplate;          // armed or unarmed wheled or tracked based vehicle with light armor(?) and passengers(?)

["vehiclesPlanesCAS", _casPlanes] call _fnc_saveToTemplate;             // Will be used with CAS script, must be defined in setPlaneLoadout. Needs fixed gun and either rockets or missiles
["vehiclesPlanesAA", _asPlanes] call _fnc_saveToTemplate;              //Will be used with ASF script, must be defined in setPlaneLoadout.
//Needs fixed gun and either rockets or missiles
["vehiclesPlanesTransport", _transportPlanes] call _fnc_saveToTemplate;	//Plane that can carry passengers and cargo(?), infantry variant if availbe 
//no need for vehicle variant currently
//["vehiclesPlanesGunship", _gunshipPlanes] call _fnc_saveToTemplate;     // planes like V-44X armed, AC-130 or pelican from OPTRE, used in GUNSHIP support
//probably can also be a helicopter

["vehiclesHelisLight", _lightHelicopters] call _fnc_saveToTemplate;            // ideally fragile & unarmed helis seating 4+
["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;        // bigger heli with more passengers. 
//Should be capable of dealing damage to ground targets without additional scripting

// Should be capable of dealing damage to ground targets without additional scripting
["vehiclesHelisLightAttack", _armedHelicopters] call _fnc_saveToTemplate;      // Utility helis with fixed or door guns + rocket pods
["vehiclesHelisAttack", _gunshipHelicopters] call _fnc_saveToTemplate;           // Proper attack helis: Apache, Hind etc

["vehiclesAirPatrol", _patrolHelicopters] call _fnc_saveToTemplate;             // preferably light helicopters(armed or unarmed), used in base patrol near bases

["vehiclesArtillery", _SPGs] call _fnc_saveToTemplate;             // wheeled or tracked vehicle with artillery cannon or rockets
["magazines", createHashMapFromArray []] call _fnc_saveToTemplate; //element format: [Vehicle class, [Magazines]]

["uavsAttack", _attackUAVs] call _fnc_saveToTemplate;                    // unmanned aerial vehicle with heavy armament
["uavsPortable", _portableUAVs] call _fnc_saveToTemplate;                  // unmanned aerial vehicle(drone), unarmed or armed(Western Sahara style), must be able to be disassembled


//Config special vehicles
["vehiclesMilitiaLightArmed", _armedLightMilitiaVehicles] call _fnc_saveToTemplate;     // same as "vehiclesLightArmed" but for milita forces
["vehiclesMilitiaTrucks", _transportMilitiaTrucks] call _fnc_saveToTemplate;         // same as "vehiclesTrucks" but for milita forces
["vehiclesMilitiaCars", _unarmedMilitiaCars] call _fnc_saveToTemplate;           // same as "vehiclesLightUnarmed" but for milita forces

["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;              // Militia APCs will be used at roadblocks and attacks at first 4 war levels

["vehiclesPolice", _policeVehicles] call _fnc_saveToTemplate;                // cars used by police forces

["staticMGs", _staticMGs] call _fnc_saveToTemplate;                     // static machine guns
["staticAT", _staticATs] call _fnc_saveToTemplate;                      // static anti-tank weapons 
["staticAA", _staticAAs] call _fnc_saveToTemplate;                      // static anti-aircraft weapons
["staticMortars", _mortars] call _fnc_saveToTemplate;                 // static mortars
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;               // static howitzers

["vehicleRadar", _radar] call _fnc_saveToTemplate;                  // vehicle with radar
["vehicleSam", _sam] call _fnc_saveToTemplate;                    // vehicle with SAM

["howitzerMagazineHE", ""] call _fnc_saveToTemplate;            // explosive ammo for Howitzer

["mortarMagazineHE", ""] call _fnc_saveToTemplate;              // explosive ammo for mortars
["mortarMagazineSmoke", ""] call _fnc_saveToTemplate;           // smoke ammo for mortars

//Minefield definition
//CFGVehicles variant of Mines are needed "ATMine", "APERSTripMine", "APERSMine"
["minefieldAT", []] call _fnc_saveToTemplate;                   // anti-tank mines
["minefieldAPERS", []] call _fnc_saveToTemplate;                // anti-personal mines

//Example on how to use dlc content
/* if (_hasContact) then {
    #include "..\DLC_content\vehicles\Contact\weird_alien_bug.sqf"
}; */

//Example on how to use mod content
//If CUP
/* if (isClass (configFile >> "cfgVehicles" >> "CUP_ZSU23_Base")) then {
    #include "..\MOD_content\CUP\Vanilla_AAF\Vehicles_AAF.sqf"
}; */

//or like this

//Example on how to use mod content
/* if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
	_gunship pushBack "vnx_b_air_ac119_01_01";
  	_transportplanes append ["vnx_b_air_ac119_02_01","vnx_b_air_ac119_02_02"];
	_planesCAS pushBack "vnx_b_air_ac119_04_01";
}; */

//#include "xxx_Vehicle_Attributes.sqf"  /// in case you want vehicles to have custom "prices" and threat levels

//SLAT cages, camo nets, logs, doors etc
/*
["animations", [
    ["vehClass", ["animsourcefromgarage1", 0.3, "animsourcefromgarage2", 0.25, "animsourcefromgarage3", 0.3, "animsourcefromgarage4", 0.3]],
    ["", []]
]] call _fnc_saveToTemplate;
*/

//#include "VehicleData\US_EU_A3UE_EU_Vehicle_Attributes.sqf"

/// or do it like this
/* ["animations", [
    #include "..\vehicleAnimations\vehicleAnimations_Vanilla.sqf"
]] call _fnc_saveToTemplate; */

//vehicle skins
/*
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;
*/

/// or do it like this
/* ["variants", [
    #include "..\vehicleVariants\Vanilla_NATO_Arid\CSLA_NATO_Arid.sqf"
]] call _fnc_saveToTemplate; */

/////////////////////
///  Identities   ///
/////////////////////
//Faces and Voices given to AI Factions.

["faces", ["WhiteHead_02"]] call _fnc_saveToTemplate;
["voices", ["RHS_Male01RUS"]] call _fnc_saveToTemplate;
/*
//SpecialForces, Militia, Police Faces and Voices, these are Optional if there is no reason to Include them, leave them out.
["sfVoices", []] call _fnc_saveToTemplate;
["sfFaces", []] call _fnc_saveToTemplate;
["milVoices", []] call _fnc_saveToTemplate;
["milFaces", []] call _fnc_saveToTemplate;
["polVoices", []] call _fnc_saveToTemplate;
["polFaces", []] call _fnc_saveToTemplate;
["eliteVoices", []] call _fnc_saveToTemplate;
["eliteFaces", []] call _fnc_saveToTemplate;

["insignia", []] call _fnc_saveToTemplate;
["sfInsignia", []] call _fnc_saveToTemplate;
["milInsignia", []] call _fnc_saveToTemplate;
["polInsignia", []] call _fnc_saveToTemplate;
["eliteInsignia", []] call _fnc_saveToTemplate;
*/

//#include "CharacterData\US_EU_A3UE_Combined_Identities.sqf"

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

//["Weapon", "Muzzle", "Rail", "Sight", [""], [], "Bipod"];
//["", "", "", "", [], [], ""]

_loadoutData set ["lightATLaunchers", [
    ["UK3CB_BAF_AT4_CS_AT_Launcher", "", "", "", [], [], ""],
    ["AMF_AT4CS_Loaded", "", "", "", [], [], ""],
    ["BWA3_PzF3_Tandem_Loaded", "", "", "", [], [], ""],
    ["BWA3_RGW90_Loaded", "", "", "", [], [], ""],
    ["ffaa_armas_c100", "", "", ["ffaa_optic_vosel", 1, "", 2], [], [], ""],
    ["ffaa_armas_c90", "", "", "", [], [], ""],
    ["ASZ_PzF3_Loaded", "", "", "", [], [], ""]
]];
_loadoutData set ["lightHELaunchers", [
    ["UK3CB_BAF_AT4_CS_AP_Launcher", "", "", "", [], [], ""],
    ["BWA3_CarlGustav", "", "", "BWA3_optic_CarlGustav", ["BWA3_CarlGustav_HE"], [], ""],
    ["BWA3_CarlGustav", "", "", "BWA3_optic_CarlGustav", ["BWA3_CarlGustav_HEDP"], [], ""],
    ["BWA3_Bunkerfaust_Loaded", "", "", "", [], [], ""],
    ["ffaa_armas_c100_biv", "", "", ["ffaa_optic_vosel", 1, "", 2], [], [], ""],
    ["ffaa_armas_c90_CR_AM", "", "", "", [], [], ""]
]];
_loadoutData set ["ATLaunchers", [
    ["AMF_LRAC89_F", "", "", "", ["AMF_AC89mm_F1"], [], ""],
    ["BWA3_CarlGustav", "", "", "BWA3_optic_CarlGustav", ["BWA3_CarlGustav_HEAT"], [], ""]
]];
_loadoutData set ["missileATLaunchers", [
    ["UK3CB_BAF_NLAW_Launcher", "", "", "", [], [], ""],
    ["AMF_Eryx", "", "", "", ["Eryx_HEAT"], [], ""],
    ["ASZ_SpikeSR_Loaded", "", "", "", [], [], ""]
]];
_loadoutData set ["AALaunchers", [
        ["BWA3_Fliegerfaust", "", "", "", ["BWA3_Fliegerfaust_Mag"], [], ""],
        ["ASZ_Launch_Stinger", "", "", "", ["ASZ_Stinger_Mag"], [], ""]
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", [
    "BWA3_DM31AT_Mag",
    "ATMine_Range_Mag"
]];
_loadoutData set ["APMines", [
    "APERSMine_Range_Mag",
    "APERSBoundingMine_Range_Mag"
]];
_loadoutData set ["lightExplosives", [
    "DemoCharge_Remote_Mag"
]];
_loadoutData set ["heavyExplosives", [
    "SatchelCharge_Remote_Mag"
]];

_loadoutData set ["antiInfantryGrenades", [
    "ffaa_granada_alhambra",
    "BWA3_DM51A1",
    "AMF_GR_DEFF1",
    "AMF_GR_OFF1"
]];
_loadoutData set ["smokeGrenades", [
    "BWA3_DM25",
    "AMF_GR_FUMF5",
    "UK3CB_BAF_SmokeShell"
]];
_loadoutData set ["signalsmokeGrenades", [
    "BWA3_DM32_Blue",
    "BWA3_DM32_Green",
    "BWA3_DM32_Orange",
    "BWA3_DM32_Purple",
    "BWA3_DM32_Red",
    "BWA3_DM32_Yellow",
    "UK3CB_BAF_SmokeShellYellow",
    "UK3CB_BAF_SmokeShellPurple",
    "UK3CB_BAF_SmokeShellGreen",
    "UK3CB_BAF_SmokeShellOrange",
    "UK3CB_BAF_SmokeShellRed",
    "UK3CB_BAF_SmokeShellBlue"
]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", [
    "UK3CB_BAF_HMNVS",
    "AMF_BINYX_BLK_NVG",
    "AMF_BINYX_Tan_NVG"
]];
_loadoutData set ["binoculars", [
    "Binocular",
    "AMF_APX_M241",
    "AMF_OB72_SOPHIE"
]];
_loadoutData set ["rangefinders", [
    "UK3CB_BAF_Soflam_Laserdesignator",
    "AMF_VectorIV",
    "BWA3_Vector",
    "ASZ_Vector"
]];

_loadoutData set ["traitorUniforms", [
    "U_BG_Guerrilla_6_1",
    "rhs_uniform_afghanka_moldovan_ttsko_desat"
]];
_loadoutData set ["traitorVests", [
    "V_TacVest_oli",
    "V_TacVest_khk",
    "V_TacVest_brn",
    "V_TacVest_blk",
    "V_TacVest_blk_POLICE"
]];
_loadoutData set ["traitorHats", [
    "H_Booniehat_khk",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Cap_tan",
    "H_Cap_oli",
    "H_Cap_grn",
    "H_Cap_blk"
]];

_loadoutData set ["officerUniforms", [
    "amf_uniform_01_NG_CE_HX",
    "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM",
    "BWA3_Uniform_sleeves_Fleck",
    "ASZ_Uniforme_EI_LS_Vegecam",
    "rhs_uniform_afghanka_moldovan_ttsko_blue"
]];
_loadoutData set ["officerVests", [
    "amf_Belt"
]];
_loadoutData set ["officerHats", [
    "UK3CB_BAF_H_Beret_BR",
    "UK3CB_BAF_H_Beret_CSG",
    "UK3CB_BAF_H_Beret_Mer",
    "UK3CB_BAF_H_Beret_RM_Officer",
    "UK3CB_BAF_H_Beret_UN_Officer",
    "AMF_BERET_RPIMa",
    "BWA3_Beret_Falli",
    "BWA3_Beret_PzAufkl"
]];

private _cloakUniforms = [
    "ASZ_GhillieSuit_Vegecam",
    "ASZ_GhillieSuit_CBT"
];
private _ghillieSuits = [
    "U_I_FullGhillie_lsh",
    "U_I_FullGhillie_sard"
];
/*
if (_hasDAGR) then {
    _cloakUniforms append [
        ""
    ];
    _ghillieSuits append [
        ""
    ];
};
*/
_loadoutData set ["cloakUniforms", _cloakUniforms];
_loadoutData set ["ghillieSuits", _ghillieSuits];

_loadoutData set ["cloakVests", []];

//["Weapon", "Muzzle", "Rail", "Sight", [""], [], "Bipod"];
//["", "", "", "", [], [], ""]

private _sniperScopes = [
    "optic_LRPS",
    "AMF_schmidt_bendex4",
    "AMF_SB_PM2_P3L",
    "AMF_SB_PM2_P4FL",
    "ffaa_optic_Mk4_v1",
    "ffaa_optic_3x12x50",
    "ASZ_AMS",
    "ASZ_Leupold_MK4_MRT_black",
    "ASZ_Schmidt_Bender_LP",
    "ASZ_Tasco_Pronghorn"
];
/*
_loadoutData set ["cloakRifles", [
    ["UK3CB_BAF_L115A3", ["UK3CB_BAF_Silencer_L115A3", ""], "", _sniperScopes, ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], "UK3CB_underbarrel_acc_bipod"],
    ["UK3CB_BAF_L115A3_Ghillie", ["UK3CB_BAF_Silencer_L115A3", ""], "", _sniperScopes, ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], "UK3CB_underbarrel_acc_bipod"],
    ["UK3CB_BAF_L118A1_Covert", "", "", _sniperScopes, ["UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd_T"], [], ""],
    ["AMF_PGM_ULTIMA_RATIO_F", "", "", _sniperScopes, ["AMF_10Rnd_308WIN_UR_CBC_168GR_HPBT"], [], ""],
    ["BWA3_G29", ["BWA3_muzzle_snds_Rotex_Monoblock", ""], ["AMF_AN_PEQ_15_tan", ""], _sniperScopes, ["BWA3_10Rnd_86x70_G29", "BWA3_10Rnd_86x70_G29_Tracer"], [], "BWA3_bipod_Harris_tan"],
    ["ffaa_armas_aw", ["ASZ_Silencer_762_blk", ""], "", _sniperScopes, ["ffaa_762x51_accuracy"], [], ""],
    ["ASZ_M40A3_Green", [], "", _sniperScopes, [], [], "ASZ_Bipod_M40A3"],
    ["ASZ_SakoTRG42", "", "", _sniperScopes, [], [], "ASZ_Bipod_SakoTRG42"]
]];
*/
_loadoutData set ["cloakRifles", []];
_loadoutData set ["cloakCarbines", []];
_loadoutData set ["cloakSidearms", []];
_loadoutData set ["cloakGlasses", []];

_loadoutData set ["uniforms", [
    "amf_uniform_01_NG_OD_LowaZephyr",
    "amf_uniform_01_OD_LowaZephyr",
    "amf_uniform_01_RE_NG_OD_LowaZephyr",
    "amf_uniform_01_RE_OD_MD",
    "amf_uniform_04_MTP",
    "UK3CB_BAF_U_CombatUniform_MTP",
    "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",
    "UK3CB_BAF_U_Smock_MTP",
    "BWA3_Uniform_Crye_G3_Fleck",
    "BWA3_Uniform_Fleck",
    "G3_cbt",
    "ASZ_cotton",
    "ASZ_Parka_CBT",
    "ASZ_SOD_Combat_CBT2",
    "ASZ_SOF_Uniform_CBT",
    "BWA3_Uniform_sleeves_Fleck"
]];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", [
    "UK3CB_BAF_V_Osprey_Grenadier_A",
    "UK3CB_BAF_V_Osprey_Grenadier_B"
]];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", []];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_mtp_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Beret_02"]];
_loadoutData set ["sniHats", ["H_Booniehat_mcamo"]];

_loadoutData set ["facewear", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
if(A3A_hasACE) then {
    /*
    Basic Medical:       3 Bandages
    Standard Medical:    5 Bandages, 2 Tourniquets
    Squad Lead Medical:  6 Bandages, 4 Tourniquets, 1 Splint
    Doctor Medical:     12 Bandages, 2 Tourniquets, 2 Splints, 4 Morphine, 2 Epinephrine, 1 PAK
    */
    _loadoutData set ["items_medical_basic",    ["ACE_fieldDressing", "ACE_fieldDressing", "ACE_fieldDressing"]                                                                                                                                                                                                                                                                                                                                                                                     call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet"]                                                                                                                                                                                                                                                                                                  call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_tourniquet", "ACE_splint"]                                                                                                                                                                                                                          call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_packingBandage", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_tourniquet", "ACE_tourniquet", "ACE_splint", "ACE_splint", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_morphine", "ACE_epinephrine", "ACE_epinephrine", "ACE_personalAidKit"]  call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   ["ACE_IR_Strobe_Item", "ACE_EntrenchingTool", "ACE_Flashlight_XL50"]                                                                                                                                                                                                                                                                                                                                                                                call A3A_fnc_itemset_miscEssentials ];
} else {
    /*
    Basic Medical:      1 FAK
    Standard Medical:   3 FAKs
    Squad Lead Medical: 5 FAKs
    Doctor Medical:     1 Medikit
    */
    _loadoutData set ["items_medical_basic",    ["FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_standard", ["FirstAidKit", "FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_leader",   ["FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_medical_medic",    ["Medikit"] call A3A_fnc_itemset_medicalSupplies];
    _loadoutData set ["items_miscEssentials",   [] call A3A_fnc_itemset_miscEssentials];
};

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private   _squadLeaderItems = ["MineDetector"];
private      _riflemanItems = [];
private         _medicItems = [];
private     _grenadierItems = ["rhs_ec75_mag"];
private          _demoItems = ["rhs_ec200_mag", "MineDetector"];
private      _engineerItems = ["ToolKit"];
private _lightAntiTankItems = [];
private      _antiTankItems = [];
private       _antiAirItems = [];
private _machineGunnerItems = [];
private      _marksmanItems = [];
private        _sniperItems = [];
private        _policeItems = [];
private          _crewItems = [];
private       _unarmedItems = [];

if (A3A_hasACE) then {
    _squadLeaderItems append   [];
    _riflemanItems append      [];
    _medicItems append         [];
    _grenadierItems append     [];
    _demoItems append          [];
    _engineerItems append      [];
    _lightAntiTankItems append [];
    _antiTankItems append      [];
    _antiAirItems append       [];
    _machineGunnerItems append [];
    _marksmanItems append      [];
    _sniperItems append        [];
    _policeItems append        [];
    _crewItems append          [];
    _unarmedItems append       [];
};

_loadoutData set ["items_squadLeader_extras",      _squadLeaderItems];
_loadoutData set ["items_rifleman_extras",         _riflemanItems];
_loadoutData set ["items_medic_extras",            _medicItems];
_loadoutData set ["items_grenadier_extras",        _grenadierItems];
_loadoutData set ["items_explosivesExpert_extras", _demoItems];
_loadoutData set ["items_engineer_extras",         _engineerItems];
_loadoutData set ["items_lat_extras",              _lightAntiTankItems];
_loadoutData set ["items_at_extras",               _antiTankItems];
_loadoutData set ["items_aa_extras",               _antiAirItems];
_loadoutData set ["items_machineGunner_extras",    _machineGunnerItems];
_loadoutData set ["items_marksman_extras",         _marksmanItems];
_loadoutData set ["items_sniper_extras",           _sniperItems];
_loadoutData set ["items_police_extras",           _policeItems];
_loadoutData set ["items_crew_extras",             _crewItems];
_loadoutData set ["items_unarmed_extras",          _unarmedItems];

_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

private _frenchSniperScopes = [
    "AMF_schmidt_bendex4",
    "AMF_SB_PM2_P3L",
    "AMF_SB_PM2_P4FL"
];

private _frenchUniforms                      = [
    "amf_uniform_01_NG_OD_LowaZephyr",
    "amf_uniform_01_OD_LowaZephyr",
    "amf_uniform_01_RE_NG_OD_LowaZephyr",
    "amf_uniform_01_RE_OD_MD",
    "amf_uniform_04_MTP"
];                                           
private _frenchVests                         = [
    "AMF_WA_DCS_V1_MTC",
    "AMF_WA_DCS_V1_RG",
    "AMF_WA_DCS_V3_MTC",
    "AMF_WA_DCS_V3_RG",
    "AMF_WA_DCS_V6_MTC",
    "AMF_WA_DCS_V6_RG",
    "amf_SMB_FUS"
];                                           
private _frenchSlVests                       = [
    "amf_SMB_LEADER"
];                                           
private _frenchMgVests                       = [
    "amf_SMB_ART"
];                                           
private _frenchMedicVests                    = [
    "AMF_WA_DCS_V4_MG_MTC",
    "AMF_WA_DCS_V4_MG_RG"
];                                               
private _frenchGlVests                       = [
    "AMF_WA_DCS_V1_MTC",
    "AMF_WA_DCS_V1_RG",
    "AMF_WA_DCS_V3_MTC",
    "AMF_WA_DCS_V3_RG",
    "AMF_WA_DCS_V6_MTC",
    "AMF_WA_DCS_V6_RG",
    "amf_SMB_FUS"
];                                           
private _frenchHelmets                       = [
    "AMF_OPSCORE_OD1",
    "AMF_OPSCORE_GREY1",
    "AMF_OPSCORE_GREY2",
    "AMF_opscore"
];                                           
private _frenchFacewear                      = [
    "amf_balaclava_goggles_od",
    "amf_balaclava_od",
    "amf_oakley02_od",
    "amf_oakley02_ranger"
];                                           
private _frenchBackpacks                     = [
    "AMF_Bergen_F2",
    "AMF_rush24_RG"
];
private _frenchHK416Rail = [
    "AMF_AN_PEQ_15_black", 1, 
    "", 4
];
private _frenchHK416Bipod = [
    "amf_acc_614_grip3", 
    "amf_acc_614_grip2", 
    ""
];
private _frenchHK416Optic = [
    "AMF_specter", 
    "AMF_exps3_magnifier_side"
];
//["Weapon", "Muzzle", "Rail", "Sight", [""], [], "Bipod"];
//["", "", "", "", [], [], ""]
private _frenchSlRifles                      = [
    ["AMF_614_long_HK269_01_F", "", "AMF_AN_PEQ_15_black", _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], ["1Rnd_HE_Grenade_shell"], ""]
];                                           
private _frenchRifles                        = [
    ["AMF_614_long_01_F", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], [], _frenchHK416Bipod],
    ["AMF_HK416_F_Magpul_Stock", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], [], _frenchHK416Bipod],
    ["AMF_614_short_01_F", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], [], _frenchHK416Bipod]
];                                           
private _frenchCarbines                      = [
    ["AMF_614_short_FS_BLK", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], [], _frenchHK416Bipod],
    ["AMF_614_short_FS4_BLK", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_30Rnd_556x45_SS109_PMAG1", "AMF_30Rnd_556x45_SS109_Tracer_PMAG1"], [], _frenchHK416Bipod]
];                                           
private _frenchGrenadeLaunchers              = [
    ["ASZ_M32", "", "", "", ["6Rnd_HE_Grenade_shell_ASZ"], [], ""]
];                                                   
private _frenchSMGs                          = [
    ["amf_hk_mp5_02_f", ["muzzle_snds_L", 1, "", 3], _frenchHK416Rail, ["AMF_AIMPOINT_MICRO_T2", "AMF_exps3", "AMF_Red_Dot_Sight"], ["AMF_30Rnd_9x19_MP5_BO_123GR"], [], _frenchHK416Bipod]
];                                       
private _frenchMachineGuns                   = [
    ["FN_Minimi_MK3", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_100Rnd_556x45_Minimi_BO_SS109_OD", "AMF_100Rnd_556x45_Minimi_BO_BT_SS109_OD"], [], "Minimi_Grip_MK2"],
    ["amf_mag58_01_f", "", _frenchHK416Rail, _frenchHK416Optic, ["AMF_100Rnd_762x51_MAG58_BO_F3"], [], ""]
];                                               
private _frenchMarksmanRifles                = [
    ["AMF_HK417_F", "", _frenchHK416Rail, _frenchSniperScopes, ["AMF_20Rnd_762x51_HK417_BO_F3"], [], ""],
    ["AMF_HK417_Tan_F", "", _frenchHK416Rail, _frenchSniperScopes, ["AMF_20Rnd_762x51_HK417_BO_F3"], [], ""]
];                                                   
private _frenchSniperRifles                 = [
    ["AMF_PGM_ULTIMA_RATIO_F", "", "", _frenchSniperScopes, ["AMF_10Rnd_308WIN_UR_CBC_168GR_HPBT"], [], ""]
];                                               
private _frenchSidearms                      = [
    ["AMF_Glock_17_Gen4", "", "", "", ["AMF_17Rnd_9x19_Glock"], [], ""],
    ["AMF_PAMAC_50", "", "", "", ["AMF_9Rnd_9x19_PAMC50"], [], ""],
    ["AMF_Pamas", "", "", "", ["AMF_15Rnd_9x19_PAMAS"], [], ""],
    ["AMF_PSA_Glock_17", "", "", "", ["AMF_17Rnd_9x19_Glock"], [], ""]
];                                         
private _frenchNVGs                          = [
    "AFM_BINYX_BLK_NVG",
    "AMF_BINYX_Tan_NVG"
];
private _frenchBerets                       = [
    "AMF_BERET_1RHP",
    "AMF_BERET_CAVALERIE_OR",
    "AMF_BERET_RPIMa",
    "AMF_BERET_ALAT_OR",
    "AMF_BERET_2RH",
    "AMF_BERET_C_MARINE",
    "AMF_BERET_GENIE",
    "AMF_BERET_LEGION_1REG",
    "AMF_BERET_MEDICAL"
];
private _frenchGlasses                      = [
    "amf_oakley02_od",
    "amf_oakley02_ranger"
];
private _frenchGoggles                      = [
    "amf_balaclava_goggles_od",
    "amf_balaclava_od"
];


private _britishUniforms                     = [
    "UK3CB_BAF_U_CombatUniform_MTP",
    "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",
    "UK3CB_BAF_U_Smock_MTP"
];
private _britishVests                        = [
    "UK3CB_BAF_V_Osprey_Rifleman_A",
    "UK3CB_BAF_V_Osprey_Rifleman_B",
    "UK3CB_BAF_V_Osprey_Rifleman_C",
    "UK3CB_BAF_V_Osprey_Rifleman_D",
    "UK3CB_BAF_V_Osprey_Rifleman_E",
    "UK3CB_BAF_V_Osprey_Rifleman_F"
];
private _britishSlVests                      = [
    "UK3CB_BAF_V_Osprey_SL_A",
    "UK3CB_BAF_V_Osprey_SL_B",
    "UK3CB_BAF_V_Osprey_SL_C",
    "UK3CB_BAF_V_Osprey_SL_D"
];
private _britishMgVests                      = [
    "UK3CB_BAF_V_Osprey_MG_A",
    "UK3CB_BAF_V_Osprey_MG_B"
];
private _britishMedicVests                   = [
    "UK3CB_BAF_V_Osprey_Medic_A",
    "UK3CB_BAF_V_Osprey_Medic_B",
    "UK3CB_BAF_V_Osprey_Medic_C",
    "UK3CB_BAF_V_Osprey_Medic_D"
];
private _britishGlVests                      = [
    "UK3CB_BAF_V_Osprey_Grenadier_A",
    "UK3CB_BAF_V_Osprey_Grenadier_B"
];
private _britishHelmets                      = [
    "UK3CB_BAF_H_Mk7_Camo_A",
    "UK3CB_BAF_H_Mk7_Camo_B",
    "UK3CB_BAF_H_Mk7_Camo_C",
    "UK3CB_BAF_H_Mk7_Camo_D",
    "UK3CB_BAF_H_Mk7_Camo_E",
    "UK3CB_BAF_H_Mk7_Camo_F",
    "UK3CB_BAF_H_Mk7_Net_A",
    "UK3CB_BAF_H_Mk7_Net_B",
    "UK3CB_BAF_H_Mk7_Net_C",
    "UK3CB_BAF_H_Mk7_Net_D",
    "UK3CB_BAF_H_Mk7_Scrim_A",
    "UK3CB_BAF_H_Mk7_Scrim_B",
    "UK3CB_BAF_H_Mk7_Scrim_C",
    "UK3CB_BAF_H_Mk7_Scrim_D",
    "UK3CB_BAF_H_Mk7_Scrim_E",
    "UK3CB_BAF_H_Mk7_Scrim_F"
];
private _britishFacewear                     = [
    "UK3CB_BAF_G_Tactical_Black",
    "UK3CB_BAF_G_Tactical_Clear",
    "UK3CB_BAF_G_Tactical_Grey"
];
private _britishBackpacks                    = [
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",
    "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A",
    "UK3CB_BAF_B_Bergen_OLI_Rifleman_A",
    "UK3CB_BAF_B_Bergen_OLI_Rifleman_B",
    "UK3CB_BAF_B_Carryall_OLI",
    "UK3CB_BAF_B_Kitbag_OLI"
];
private _britishSlBackpacks                  = [
    "UK3CB_BAF_B_Bergen_MTP_SL_H_A",
    "UK3CB_BAF_B_Bergen_MTP_SL_L_A",
    "UK3CB_BAF_B_Bergen_OLI_SL_A"
];
private _britishEngineerBackpacks            = [
    "UK3CB_BAF_B_Bergen_MTP_Engineer_H_A",
    "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A"
];
private _britishRadiomanBackpacks            = [
    "UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",
    "UK3CB_BAF_B_Bergen_MTP_JTAC_L_A",
    "UK3CB_BAF_B_Bergen_MTP_Radio_H_A",
    "UK3CB_BAF_B_Bergen_MTP_Radio_H_B",
    "UK3CB_BAF_B_Bergen_MTP_Radio_L_A",
    "UK3CB_BAF_B_Bergen_MTP_Radio_L_B",
    "UK3CB_BAF_B_Bergen_OLI_JTAC_A",
    "UK3CB_BAF_B_Bergen_OLI_JTAC_H_A"
];
private _britishMedicBackpacks               = [
    "UK3CB_BAF_B_Bergen_MTP_Medic_H_A",
    "UK3CB_BAF_B_Bergen_MTP_Medic_H_B",
    "UK3CB_BAF_B_Bergen_MTP_Medic_L_A",
    "UK3CB_BAF_B_Bergen_MTP_Medic_L_B"
];
private _britishEODBackpacks                 = [
    "UK3CB_BAF_B_Bergen_MTP_Sapper_H_A",
    "UK3CB_BAF_B_Bergen_MTP_Sapper_L_A"
];

private _britishRifleOptics                  = [
    "UK3CB_BAF_TA31F",
    "RKSL_optic_EOT552",
    "RKSL_optic_LDS"
];
private _british556Magazines                 = [
    "UK3CB_BAF_556_30Rnd",
    "UK3CB_BAF_556_30Rnd_T"
];
private _britishSlGrenades                   = [
    "UK3CB_BAF_1Rnd_HE_Grenade_Shell",
    "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell"
];
//["Weapon", "Muzzle", "Rail", "Sight", [""], [], "Bipod"];
//["", "", "", "", [], [], ""]
private _britishSlRifles                     = [
    ["UK3CB_BAF_L85A3_UGL", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, _britishSlGrenades, ""],
    ["UK3CB_BAF_L85A2_UGL", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, _britishSlGrenades, ""],
    ["UK3CB_BAF_L119A1_UKUGL", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, _britishSlGrenades, ""]
];
private _britishRifles                       = [
    ["UK3CB_BAF_L103A2", "", "", "", ["30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_red"], [], ""],
    ["UK3CB_BAF_L119A1_RIS", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, [], ""],
    ["UK3CB_BAF_L85A2_EMAG", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], "", _britishRifleOptics, _british556Magazines, [], ""],
    ["UK3CB_BAF_L85A2_RIS", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, [], ""],
    ["UK3CB_BAF_L85A3", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, _british556Magazines, [], ""]
];
private _britishCarbines                     = [
    ["UK3CB_BAF_L119A1_CQB", ["", 2, "UK3CB_BAF_Silencer_L85", 1, "UK3CB_BAF_SFFH", 2], "", _britishRifleOptics, _british556Magazines, [], ""],
    ["UK3CB_BAF_L22", ["", 2, "UK3CB_BAF_SFFH", 2], "", _britishRifleOptics, _british556Magazines, [], ""],
    ["UK3CB_BAF_L22A2", ["", 2, "UK3CB_BAF_SFFH", 2], "", _britishRifleOptics, _british556Magazines, [], ""]
];
private _britishGrenadeLaunchers             = [
    ["ASZ_M32", "", "", "", ["6Rnd_HE_Grenade_shell_ASZ"], [], ""]
];
private _britishSMGs                         = [
    ["UK3CB_BAF_L91A1", ["UK3CB_BAF_Silencer_L91A1", ""], "", ["RKSL_optic_RMR_MS19", "RKSL_optic_RMR_RM33"], ["UK3CB_BAF_9_30Rnd"], [], ""]
];
private _britishMachineGuns                  = [
    ["UK3CB_BAF_L110A1", "", "", "", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
    ["UK3CB_BAF_L110A2", "", "", _britishRifleOptics, ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
    ["UK3CB_BAF_L110A2RIS", "", ["UK3CB_BAF_LLFM_IR_Black", 1, "", 2], _britishRifleOptics, ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""]
];
private _britishMarksmanRifles               = [
    ["UK3CB_BAF_L129A1", ["", 2, "UK3CB_BAF_Silencer_L115A3", 1], ["", 2, "UK3CB_BAF_LLM_IR_Black"], ["UK3CB_BAF_TA31F", "RKSL_optic_LDS"], ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], ["", "UK3CB_underbarrel_acc_fgrip_bipod", "UK3CB_underbarrel_acc_bipod"]]
];
private _britishSniperRifles                 = [
    ["UK3CB_BAF_L115A3", ["", "UK3CB_BAF_Silencer_L115A3"], "", "RKSL_optic_PMII_312_sunshade", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], "UK3CB_underbarrel_acc_bipod"],
    ["UK3CB_BAF_L115A3_Ghillie", ["", "UK3CB_BAF_Silencer_L115A3"], "", "RKSL_optic_PMII_312_sunshade", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], "UK3CB_underbarrel_acc_bipod"],
    ["UK3CB_BAF_UK3CB_BAF_L118A1_Covert", "", "", "RKSL_optic_PMII_312_sunshade", ["UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd_T"], [], ""]
];
private _britishSidearms                     = [
    ["UK3CB_BAF_L105A2", "", ["", "UK3CB_BAF_Flashlight_L105A1"], "", ["UK3CB_BAF_9_15Rnd"], [], ""],
    ["UK3CB_BAF_L117A2", "", ["", "UK3CB_BAF_Flashlight_L105A1"], "", ["UK3CB_BAF_9_15Rnd"], [], ""],
    ["UK3CB_BAF_L131A1", "", ["", "UK3CB_BAF_Flashlight_L131A1"], "", ["UK3CB_BAF_9_17Rnd"], [], ""]
];
private _britishNVGs                         = [
    "UK3CB_BAF_HMNVS"
];
private _britishBerets                       = [
    "UK3CB_BAF_H_Beret_Mer",
    "UK3CB_BAF_H_Beret_PR",
    "UK3CB_BAF_H_Beret_PWRR",
    "UK3CB_BAF_H_Beret_RAF",
    "UK3CB_BAF_H_Beret_RAMC",
    "UK3CB_BAF_H_Beret_RAMC_Officer",
    "UK3CB_BAF_H_Beret_Rifles",
    "UK3CB_BAF_H_Beret_RM_Bootneck",
    "UK3CB_BAF_H_Beret_RM_Officer"
];


private _italianUniforms                     = [

];                                               
private _italianVests                        = [

];                                           
private _italianSlVests                      = [

];                                           
private _italianMgVests                      = [

];                                           
private _italianMedicVests                   = [

];                                               
private _italianGlVests                      = [

];                                           
private _italianHelmets                      = [

];                                           
private _italianFacewear                     = [

];                                               
private _italianBackpacks                    = [

];                                               
private _italianSlRifles                     = [

];                                               
private _italianRifles                       = [

];                                           
private _italianCarbines                     = [

];                                               
private _italianGrenadeLaunchers             = [

];                                                       
private _italianSMGs                         = [

];                                           
private _italianMachineGuns                  = [

];                                               
private _italianMarksmanRifles               = [

];                                                   
private _italianSniperRifles                 = [

];                                                   
private _italianSidearms                     = [

];
private _italianNVGs                          = [
    
];                                               


private _germanUniforms                      = [

];                                           
private _germanVests                         = [

];                                           
private _germanSlVests                       = [

];                                           
private _germanMgVests                       = [

];                                           
private _germanMedicVests                    = [

];                                               
private _germanGlVests                       = [

];                                           
private _germanHelmets                       = [

];                                           
private _germanFacewear                      = [

];                                           
private _germanBackpacks                     = [

];                                               
private _germanSlRifles                      = [

];                                           
private _germanRifles                        = [

];                                           
private _germanCarbines                      = [

];                                           
private _germanGrenadeLaunchers              = [

];                                                   
private _germanSMGs                          = [

];                                       
private _germanMachineGuns                   = [

];                                               
private _germanMarksmanRifles                = [

];                                                   
private _germanSniperRifles                  = [

];                                               
private _germanSidearms                      = [

];
private _germanNVGs                          = [
    
];

private _spanishUniforms                      = [

];                                     
private _spanishVests                         = [

];                                     
private _spanishSlVests                       = [

];                                     
private _spanishMgVests                       = [

];                                     
private _spanishMedicVests                    = [

];                                         
private _spanishGlVests                       = [

];                                     
private _spanishHelmets                       = [

];                                     
private _spanishFacewear                      = [

];                                     
private _spanishBackpacks                     = [

];                                         
private _spanishSlRifles                      = [

];                                     
private _spanishRifles                        = [

];                                     
private _spanishCarbines                      = [

];                                     
private _spanishGrenadeLaunchers              = [

];                                             
private _spanishSMGs                          = [

];                                 
private _spanishMachineGuns                   = [

];                                         
private _spanishMarksmanRifles                = [

];                                             
private _spanishSniperRifles                  = [

];                                         
private _spanishSidearms                      = [

];
private _spanishNVGs                          = [
    
];

_loadoutData set ["frenchUniforms", []];
_loadoutData set ["frenchVests", []];
_loadoutData set ["frenchSlVests", []];
_loadoutData set ["frenchMgVests", []];
_loadoutData set ["frenchMedicVests", []];
_loadoutData set ["frenchGlVests", []];
_loadoutData set ["frenchHelmets", []];
_loadoutData set ["frenchFacewear", []];
_loadoutData set ["frenchBackpacks", []];
_loadoutData set ["frenchSlRifles", []];
_loadoutData set ["frenchRifles", []];
_loadoutData set ["frenchCarbines", []];
_loadoutData set ["frenchGrenadeLaunchers", []];
_loadoutData set ["frenchSMGs", []];
_loadoutData set ["frenchMachineGuns", []];
_loadoutData set ["frenchMarksmanRifles", []];
_loadoutData set ["frenchSniperRifles", []];
_loadoutData set ["frenchSidearms", []];
_loadoutData set ["frenchNVGs", []];
_loadoutData set ["frenchBerets", []];
_loadoutData set ["frenchGlasses", []];
_loadoutData set ["frenchGoggles", []];

_loadoutData set ["frenchMilitiaRifles", []];

_loadoutData set ["britishUniforms", []];
_loadoutData set ["britishVests", []];
_loadoutData set ["britishSlVests", []];
_loadoutData set ["britishMgVests", []];
_loadoutData set ["britishMedicVests", []];
_loadoutData set ["britishGlVests", []];
_loadoutData set ["britishHelmets", []];
_loadoutData set ["britishFacewear", []];
_loadoutData set ["britishBackpacks", []];
_loadoutData set ["britishSlRifles", []];
_loadoutData set ["britishRifles", []];
_loadoutData set ["britishCarbines", []];
_loadoutData set ["britishGrenadeLaunchers", []];
_loadoutData set ["britishSMGs", []];
_loadoutData set ["britishMachineGuns", []];
_loadoutData set ["britishMarksmanRifles", []];
_loadoutData set ["britishSniperRifles", []];
_loadoutData set ["britishSidearms", []];
_loadoutData set ["britishNVGs", []];

_loadoutData set ["britishEngineerBackpacks", []];
_loadoutData set ["britishRadiomanBackpacks", []];
_loadoutData set ["britishMedicBackpacks", []];
_loadoutData set ["britishSlBackpacks", []];
_loadoutData set ["britishEODBackpacks", []];
_loadoutData set ["britishBerets", []];

_loadoutData set ["italianUniforms", []];
_loadoutData set ["italianVests", []];
_loadoutData set ["italianSlVests", []];
_loadoutData set ["italianMgVests", []];
_loadoutData set ["italianMedicVests", []];
_loadoutData set ["italianGlVests", []];
_loadoutData set ["italianHelmets", []];
_loadoutData set ["italianFacewear", []];
_loadoutData set ["italianBackpacks", []];
_loadoutData set ["italianSlRifles", []];
_loadoutData set ["italianRifles", []];
_loadoutData set ["italianCarbines", []];
_loadoutData set ["italianGrenadeLaunchers", []];
_loadoutData set ["italianSMGs", []];
_loadoutData set ["italianMachineGuns", []];
_loadoutData set ["italianMarksmanRifles", []];
_loadoutData set ["italianSniperRifles", []];
_loadoutData set ["italianSidearms", []];
_loadoutData set ["italianNVGs", []];

_loadoutData set ["germanUniforms", []];
_loadoutData set ["germanVests", []];
_loadoutData set ["germanSlVests", []];
_loadoutData set ["germanMgVests", []];
_loadoutData set ["germanMedicVests", []];
_loadoutData set ["germanGlVests", []];
_loadoutData set ["germanHelmets", []];
_loadoutData set ["germanFacewear", []];
_loadoutData set ["germanBackpacks", []];
_loadoutData set ["germanSlRifles", []];
_loadoutData set ["germanRifles", []];
_loadoutData set ["germanCarbines", []];
_loadoutData set ["germanGrenadeLaunchers", []];
_loadoutData set ["germanSMGs", []];
_loadoutData set ["germanMachineGuns", []];
_loadoutData set ["germanMarksmanRifles", []];
_loadoutData set ["germanSniperRifles", []];
_loadoutData set ["germanSidearms", []];
_loadoutData set ["germanNVGs", []];

_loadoutData set ["spanishUniforms", []];
_loadoutData set ["spanishVests", []];
_loadoutData set ["spanishSlVests", []];
_loadoutData set ["spanishMgVests", []];
_loadoutData set ["spanishMedicVests", []];
_loadoutData set ["spanishGlVests", []];
_loadoutData set ["spanishHelmets", []];
_loadoutData set ["spanishFacewear", []];
_loadoutData set ["spanishBackpacks", []];
_loadoutData set ["spanishSlRifles", []];
_loadoutData set ["spanishRifles", []];
_loadoutData set ["spanishCarbines", []];
_loadoutData set ["spanishGrenadeLaunchers", []];
_loadoutData set ["spanishSMGs", []];
_loadoutData set ["spanishMachineGuns", []];
_loadoutData set ["spanishMarksmanRifles", []];
_loadoutData set ["spanishSniperRifles", []];
_loadoutData set ["spanishSidearms", []];
_loadoutData set ["spanishNVGs", []];
_loadoutData set ["spanishBerets", []];
_loadoutData set ["spanishGlasses", []];
_loadoutData set ["spanishGoggles", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

//["Weapon", "Muzzle", "Rail", "Sight", [""], [], "Bipod"];
//["", "", "", "", [], [], ""]






private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", []]; 
_sfLoadoutData set ["uniforms", []];
_sfLoadoutData set ["vests", []];
_sfLoadoutData set ["Hvests", []];
_sfLoadoutData set ["glVests", []];
_sfLoadoutData set ["helmets", []];
_sfLoadoutData set ["glasses", []];
_sfLoadoutData set ["goggles", []];
_sfLoadoutData set ["binoculars", []];
_sfLoadoutData set ["backpacks", []];
_sfLoadoutData set ["atBackpacks", []];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

_sfLoadoutData set ["sniperRifles", []];
_sfLoadoutData set ["sidearms", []];
_sfLoadoutData set ["slRifles", []];

//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];

// The two empty lists are for magazines - leave them empty for whatever the weapon's default mag is, or fill them for a given ratio (i.e. ["tracer", "regular", "regular"]). 
// The second list is for underbarrel mags.

// Note: muzzle, rail, sight, and bipod slots can be either a string for a specific item, or an array for a list of items. Arrays can be defined separately from weapons.
// Arrays (both for attachments and for the larger lists of weapons) can either be a regular list or a weighted list that alternates between item and weight.
// See https://community.bistudio.com/wiki/selectRandomWeighted for details.
// If a given spawn list is made a weighted list, make sure that anything that adds to that list (e.g. optional DLC compatibility) is also a weighted list, or everything breaks.
// Everything in this also applies to e.g. uniforms and equipment, but does NOT apply to vehicles.

// Example of a weighted spawn list, with attachments and etc, using all possible methods of declaring lists:
/*
_sfM4Optics = ["optic_holo", 2, "optic_acog", 1, "", 1]; //weighted list - 50% chance holo, 25% chance acog, 25% chance nothing
_sfM4Attachments = ["flashlight", ""]; //unweighted list, even distribution between flashlight or nothing
_sfLoadoutData set ["rifles", [
    ["rifle_m4a1", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 2,
    ["rifle_m4a1_camo", "suppressor_m4", _sfM4Attachments,  _sfM4Optics, [], [], ""], 1 //2:1 ratio of regular and camo M4s
]]; 
_sfM4Optics append ["optic_thermal", 0.1]; //this works even if done after the optics lists are applied since _sfM4Optics is stored as a reference, which is useful for DLC/mod compats

*/

_sfLoadoutData set ["rifles", []];
_sfLoadoutData set ["carbines", []];
_sfLoadoutData set ["grenadeLaunchers", []];
_sfLoadoutData set ["machineGuns", []];
_sfLoadoutData set ["marksmanRifles", []];
_sfLoadoutData set ["SMGs", []];
_sfLoadoutData set ["sniperRifles", []];
_sfLoadoutData set ["sidearms", []];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", []]; 
_eliteLoadoutData set ["uniforms", []];
_eliteLoadoutData set ["vests", []];
_eliteLoadoutData set ["Hvests", []];
_eliteLoadoutData set ["glVests", []];
_eliteLoadoutData set ["helmets", []];
_eliteLoadoutData set ["glasses", []];
_eliteLoadoutData set ["goggles", []];
_eliteLoadoutData set ["binoculars", []];
_eliteLoadoutData set ["backpacks", []];
_eliteLoadoutData set ["atBackpacks", []];

_eliteLoadoutData set ["sniperRifles", []];
_eliteLoadoutData set ["sidearms", []];
_eliteLoadoutData set ["slRifles", []];
_eliteLoadoutData set ["rifles", []];
_eliteLoadoutData set ["carbines", []];
_eliteLoadoutData set ["grenadeLaunchers", []];
_eliteLoadoutData set ["machineGuns", []];
_eliteLoadoutData set ["marksmanRifles", []];
_eliteLoadoutData set ["SMGs", []];
_eliteLoadoutData set ["sniperRifles", []];
_eliteLoadoutData set ["sidearms", []];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_militaryLoadoutData set ["frenchUniforms", _frenchUniforms];
_militaryLoadoutData set ["frenchVests", _frenchVests];
_militaryLoadoutData set ["frenchSlVests", _frenchSlVests];
_militaryLoadoutData set ["frenchMgVests", _frenchMgVests];
_militaryLoadoutData set ["frenchMedicVests", _frenchMedicVests];
_militaryLoadoutData set ["frenchGlVests", _frenchGlVests];
_militaryLoadoutData set ["frenchHelmets", _frenchHelmets];
_militaryLoadoutData set ["frenchFacewear", _frenchFacewear];
_militaryLoadoutData set ["frenchBackpacks", _frenchBackpacks];
_militaryLoadoutData set ["frenchSlRifles", _frenchSlRifles];
_militaryLoadoutData set ["frenchRifles", _frenchRifles];
_militaryLoadoutData set ["frenchCarbines", _frenchCarbines];
_militaryLoadoutData set ["frenchGrenadeLaunchers", _frenchGrenadeLaunchers];
_militaryLoadoutData set ["frenchSMGs", _frenchSMGs];
_militaryLoadoutData set ["frenchMachineGuns", _frenchMachineGuns];
_militaryLoadoutData set ["frenchMarksmanRifles", _frenchMarksmanRifles];
_militaryLoadoutData set ["frenchSniperRifles", _frenchSniperRifles];
_militaryLoadoutData set ["frenchSidearms", _frenchSidearms];
_militaryLoadoutData set ["frenchNVGs", _frenchNVGs];

_militaryLoadoutData set ["frenchBerets", _frenchBerets];
_militaryLoadoutData set ["frenchGlasses", _frenchGlasses];
_militaryLoadoutData set ["frenchGoggles", _frenchGoggles];

_militaryLoadoutData set ["britishUniforms", _britishUniforms];
_militaryLoadoutData set ["britishVests", _britishVests];
_militaryLoadoutData set ["britishSlVests", _britishSlVests];
_militaryLoadoutData set ["britishMgVests", _britishMgVests];
_militaryLoadoutData set ["britishMedicVests", _britishMedicVests];
_militaryLoadoutData set ["britishGlVests", _britishGlVests];
_militaryLoadoutData set ["britishHelmets", _britishHelmets];
_militaryLoadoutData set ["britishFacewear", _britishFacewear];
_militaryLoadoutData set ["britishBackpacks", _britishBackpacks];
_militaryLoadoutData set ["britishSlRifles", _britishSlRifles];
_militaryLoadoutData set ["britishRifles", _britishRifles];
_militaryLoadoutData set ["britishCarbines", _britishCarbines];
_militaryLoadoutData set ["britishGrenadeLaunchers", _britishGrenadeLaunchers];
_militaryLoadoutData set ["britishSMGs", _britishSMGs];
_militaryLoadoutData set ["britishMachineGuns", _britishMachineGuns];
_militaryLoadoutData set ["britishMarksmanRifles", _britishMarksmanRifles];
_militaryLoadoutData set ["britishSniperRifles", _britishSniperRifles];
_militaryLoadoutData set ["britishSidearms", _britishSidearms];
_militaryLoadoutData set ["britishNVGs", _britishNVGs];

_militaryLoadoutData set ["britishEngineerBackpacks", _britishEngineerBackpacks];
_militaryLoadoutData set ["britishRadiomanBackpacks", _britishRadiomanBackpacks];
_militaryLoadoutData set ["britishMedicBackpacks", _britishMedicBackpacks];
_militaryLoadoutData set ["britishSlBackpacks", _britishSlBackpacks];
_militaryLoadoutData set ["britishEODBackpacks", _britishEODBackpacks];
_militaryLoadoutData set ["britishBerets", _britishBerets];

_militaryLoadoutData set ["italianUniforms", _italianUniforms];
_militaryLoadoutData set ["italianVests", _italianVests];
_militaryLoadoutData set ["italianSlVests", _italianSlVests];
_militaryLoadoutData set ["italianMgVests", _italianMgVests];
_militaryLoadoutData set ["italianMedicVests", _italianMedicVests];
_militaryLoadoutData set ["italianGlVests", _italianGlVests];
_militaryLoadoutData set ["italianHelmets", _italianHelmets];
_militaryLoadoutData set ["italianFacewear", _italianFacewear];
_militaryLoadoutData set ["italianBackpacks", _italianBackpacks];
_militaryLoadoutData set ["italianSlRifles", _italianSlRifles];
_militaryLoadoutData set ["italianRifles", _italianRifles];
_militaryLoadoutData set ["italianCarbines", _italianCarbines];
_militaryLoadoutData set ["italianGrenadeLaunchers", _italianGrenadeLaunchers];
_militaryLoadoutData set ["italianSMGs", _italianSMGs];
_militaryLoadoutData set ["italianMachineGuns", _italianMachineGuns];
_militaryLoadoutData set ["italianMarksmanRifles", _italianMarksmanRifles];
_militaryLoadoutData set ["italianSniperRifles", _italianSniperRifles];
_militaryLoadoutData set ["italianSidearms", _italianSidearms];
_militaryLoadoutData set ["italianNVGs", _italianNVGs];

_militaryLoadoutData set ["germanUniforms", _germanUniforms];
_militaryLoadoutData set ["germanVests", _germanVests];
_militaryLoadoutData set ["germanSlVests", _germanSlVests];
_militaryLoadoutData set ["germanMgVests", _germanMgVests];
_militaryLoadoutData set ["germanMedicVests", _germanMedicVests];
_militaryLoadoutData set ["germanGlVests", _germanGlVests];
_militaryLoadoutData set ["germanHelmets", _germanHelmets];
_militaryLoadoutData set ["germanFacewear", _germanFacewear];
_militaryLoadoutData set ["germanBackpacks", _germanBackpacks];
_militaryLoadoutData set ["germanSlRifles", _germanSlRifles];
_militaryLoadoutData set ["germanRifles", _germanRifles];
_militaryLoadoutData set ["germanCarbines", _germanCarbines];
_militaryLoadoutData set ["germanGrenadeLaunchers", _germanGrenadeLaunchers];
_militaryLoadoutData set ["germanSMGs", _germanSMGs];
_militaryLoadoutData set ["germanMachineGuns", _germanMachineGuns];
_militaryLoadoutData set ["germanMarksmanRifles", _germanMarksmanRifles];
_militaryLoadoutData set ["germanSniperRifles", _germanSniperRifles];
_militaryLoadoutData set ["germanSidearms", _germanSidearms];
_militaryLoadoutData set ["germanNVGs", _germanNVGs];

_militaryLoadoutData set ["spanishUniforms", _spanishUniforms];
_militaryLoadoutData set ["spanishVests", _spanishVests];
_militaryLoadoutData set ["spanishSlVests", _spanishSlVests];
_militaryLoadoutData set ["spanishMgVests", _spanishMgVests];
_militaryLoadoutData set ["spanishMedicVests", _spanishMedicVests];
_militaryLoadoutData set ["spanishGlVests", _spanishGlVests];
_militaryLoadoutData set ["spanishHelmets", _spanishHelmets];
_militaryLoadoutData set ["spanishFacewear", _spanishFacewear];
_militaryLoadoutData set ["spanishBackpacks", _spanishBackpacks];
_militaryLoadoutData set ["spanishSlRifles", _spanishSlRifles];
_militaryLoadoutData set ["spanishRifles", _spanishRifles];
_militaryLoadoutData set ["spanishCarbines", _spanishCarbines];
_militaryLoadoutData set ["spanishGrenadeLaunchers", _spanishGrenadeLaunchers];
_militaryLoadoutData set ["spanishSMGs", _spanishSMGs];
_militaryLoadoutData set ["spanishMachineGuns", _spanishMachineGuns];
_militaryLoadoutData set ["spanishMarksmanRifles", _spanishMarksmanRifles];
_militaryLoadoutData set ["spanishSniperRifles", _spanishSniperRifles];
_militaryLoadoutData set ["spanishSidearms", _spanishSidearms];
_militaryLoadoutData set ["spanishNVGs", _spanishNVGs];

//_militaryLoadoutData set ["uniforms", []];
/*
_militaryLoadoutData set ["vests", [
    "UK3CB_BAF_V_Osprey_Rifleman_B",
    "AMF_WA_DCS_V1_MTC",
    "AMF_WA_DCS_V1_RG",
    "AMF_WA_DCS_V3_MTC",
    "AMF_WA_DCS_V3_RG",
    "AMF_WA_DCS_V6_MTC",
    "AMF_WA_DCS_V6_RG",
    "amf_SMB_FUS",
    "BWA3_Vest_JPC_Rifleman_Fleck",
    "ffaa_et_moe_peco_02_mtp",
    "ASZ_JPC_mc",
    "ASZ_JPC_RG",
    "ASZ_NC4_09",
    "ASZ_SODADP_CBT_assaulter"
]];
_militaryLoadoutData set ["slVests", [
    "UK3CB_BAF_V_Osprey_SL_D",
    "UK3CB_BAF_V_Osprey_SL_B",
    "amf_SMB_LEADER",
    "BWA3_Vest_JPC_Leader_Fleck",
    "ASZ_jpc_1_mc",
    "ASZ_jpc_1_RG",
    "ASZ_NC4_09_TL",
    "ASZ_SODADP_CBT_TL"
]];
_militaryLoadoutData set ["medicVests", [
    "UK3CB_BAF_V_Osprey_Medic_C",
    "UK3CB_BAF_V_Osprey_Medic_B",
    "ASZ_MMAC_mc",
    "ASZ_MMAC_RG",
    "ASZ_NC4_09_Medic",
    "ASZ_SODADP_CBT_medic"
]];
_militaryLoadoutData set ["mgVests", [
    "UK3CB_BAF_V_Osprey_MG_B",
    "ASZ_SODADP_CBT_mg",
    "ASZ_NC4_09_MG"
]];
_militaryLoadoutData set ["backpacks", [
    "",
    ""
]];
_militaryLoadoutData set ["helmets", [
    "UK3CB_BAF_H_Mk7_Camo_A",
    "UK3CB_BAF_H_Mk7_Scrim_C"
]];
_militaryLoadoutData set ["binoculars", []];

_militaryLoadoutData set ["slRifles", []];
_militaryLoadoutData set ["rifles", []];
_militaryLoadoutData set ["carbines", []];
_militaryLoadoutData set ["grenadeLaunchers", []];
_militaryLoadoutData set ["SMGs", []];
_militaryLoadoutData set ["machineGuns", []];
_militaryLoadoutData set ["marksmanRifles", []];
_militaryLoadoutData set ["sniperRifles", []];
_militaryLoadoutData set ["sidearms", []];

*/
///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", []];
_policeLoadoutData set ["vests", []];
_policeLoadoutData set ["helmets", []];

_policeLoadoutData set ["SMGs", []];
_policeLoadoutData set ["sidearms", []];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;

private _frenchMilitiaRifles = [
    ["Famas_F1", ["BAYO_Famas", 1, "", 5], "", _frenchHK416Optic, ["AMF_25Rnd_BO_MEN_SS109", "AMF_25Rnd_BO_BT_MEN_SS109"], ["AMF_RFG_AC58", "AMF_RFG_APAV40"], ""]
];

_militiaLoadoutData set ["frenchUniforms", _frenchUniforms];
_militiaLoadoutData set ["frenchVests", _frenchVests];
_militiaLoadoutData set ["frenchSlVests", _frenchSlVests];
_militiaLoadoutData set ["frenchMgVests", _frenchMgVests];
_militiaLoadoutData set ["frenchMedicVests", _frenchMedicVests];
_militiaLoadoutData set ["frenchGlVests", _frenchGlVests];
_militiaLoadoutData set ["frenchHelmets", _frenchHelmets];
_militiaLoadoutData set ["frenchFacewear", _frenchFacewear];
_militiaLoadoutData set ["frenchBackpacks", _frenchBackpacks];
_militiaLoadoutData set ["frenchSlRifles", _frenchSlRifles];
_militiaLoadoutData set ["frenchRifles", _frenchMilitiaRifles];
_militiaLoadoutData set ["frenchCarbines", _frenchCarbines];
_militiaLoadoutData set ["frenchGrenadeLaunchers", _frenchGrenadeLaunchers];
_militiaLoadoutData set ["frenchSMGs", _frenchSMGs];
_militiaLoadoutData set ["frenchMachineGuns", _frenchMachineGuns];
_militiaLoadoutData set ["frenchMarksmanRifles", _frenchMarksmanRifles];
_militiaLoadoutData set ["frenchSniperRifles", _frenchSniperRifles];
_militiaLoadoutData set ["frenchSidearms", _frenchSidearms];
_militiaLoadoutData set ["frenchNVGs", _frenchNVGs];

_militiaLoadoutData set ["frenchBerets", _frenchBerets];
_militiaLoadoutData set ["frenchGlasses", _frenchGlasses];
_militiaLoadoutData set ["frenchGoggles", _frenchGoggles];

_militiaLoadoutData set ["britishUniforms", _britishUniforms];
_militiaLoadoutData set ["britishVests", _britishVests];
_militiaLoadoutData set ["britishSlVests", _britishSlVests];
_militiaLoadoutData set ["britishMgVests", _britishMgVests];
_militiaLoadoutData set ["britishMedicVests", _britishMedicVests];
_militiaLoadoutData set ["britishGlVests", _britishGlVests];
_militiaLoadoutData set ["britishHelmets", _britishHelmets];
_militiaLoadoutData set ["britishFacewear", _britishFacewear];
_militiaLoadoutData set ["britishBackpacks", _britishBackpacks];
_militiaLoadoutData set ["britishSlRifles", _britishSlRifles];
_militiaLoadoutData set ["britishRifles", _britishRifles];
_militiaLoadoutData set ["britishCarbines", _britishCarbines];
_militiaLoadoutData set ["britishGrenadeLaunchers", _britishGrenadeLaunchers];
_militiaLoadoutData set ["britishSMGs", _britishSMGs];
_militiaLoadoutData set ["britishMachineGuns", _britishMachineGuns];
_militiaLoadoutData set ["britishMarksmanRifles", _britishMarksmanRifles];
_militiaLoadoutData set ["britishSniperRifles", _britishSniperRifles];
_militiaLoadoutData set ["britishSidearms", _britishSidearms];
_militiaLoadoutData set ["britishNVGs", _britishNVGs];

_militiaLoadoutData set ["britishBerets", _britishBerets];

_militiaLoadoutData set ["britishEngineerBackpacks", _britishEngineerBackpacks];
_militiaLoadoutData set ["britishRadiomanBackpacks", _britishRadiomanBackpacks];
_militiaLoadoutData set ["britishMedicBackpacks", _britishMedicBackpacks];
_militiaLoadoutData set ["britishSlBackpacks", _britishSlBackpacks];
_militiaLoadoutData set ["britishEODBackpacks", _britishEODBackpacks];

_militiaLoadoutData set ["italianUniforms", _italianUniforms];
_militiaLoadoutData set ["italianVests", _italianVests];
_militiaLoadoutData set ["italianSlVests", _italianSlVests];
_militiaLoadoutData set ["italianMgVests", _italianMgVests];
_militiaLoadoutData set ["italianMedicVests", _italianMedicVests];
_militiaLoadoutData set ["italianGlVests", _italianGlVests];
_militiaLoadoutData set ["italianHelmets", _italianHelmets];
_militiaLoadoutData set ["italianFacewear", _italianFacewear];
_militiaLoadoutData set ["italianBackpacks", _italianBackpacks];
_militiaLoadoutData set ["italianSlRifles", _italianSlRifles];
_militiaLoadoutData set ["italianRifles", _italianRifles];
_militiaLoadoutData set ["italianCarbines", _italianCarbines];
_militiaLoadoutData set ["italianGrenadeLaunchers", _italianGrenadeLaunchers];
_militiaLoadoutData set ["italianSMGs", _italianSMGs];
_militiaLoadoutData set ["italianMachineGuns", _italianMachineGuns];
_militiaLoadoutData set ["italianMarksmanRifles", _italianMarksmanRifles];
_militiaLoadoutData set ["italianSniperRifles", _italianSniperRifles];
_militiaLoadoutData set ["italianSidearms", _italianSidearms];
_militiaLoadoutData set ["italianNVGs", _italianNVGs];

_militiaLoadoutData set ["germanUniforms", _germanUniforms];
_militiaLoadoutData set ["germanVests", _germanVests];
_militiaLoadoutData set ["germanSlVests", _germanSlVests];
_militiaLoadoutData set ["germanMgVests", _germanMgVests];
_militiaLoadoutData set ["germanMedicVests", _germanMedicVests];
_militiaLoadoutData set ["germanGlVests", _germanGlVests];
_militiaLoadoutData set ["germanHelmets", _germanHelmets];
_militiaLoadoutData set ["germanFacewear", _germanFacewear];
_militiaLoadoutData set ["germanBackpacks", _germanBackpacks];
_militiaLoadoutData set ["germanSlRifles", _germanSlRifles];
_militiaLoadoutData set ["germanRifles", _germanRifles];
_militiaLoadoutData set ["germanCarbines", _germanCarbines];
_militiaLoadoutData set ["germanGrenadeLaunchers", _germanGrenadeLaunchers];
_militiaLoadoutData set ["germanSMGs", _germanSMGs];
_militiaLoadoutData set ["germanMachineGuns", _germanMachineGuns];
_militiaLoadoutData set ["germanMarksmanRifles", _germanMarksmanRifles];
_militiaLoadoutData set ["germanSniperRifles", _germanSniperRifles];
_militiaLoadoutData set ["germanSidearms", _germanSidearms];
_militiaLoadoutData set ["germanNVGs", _germanNVGs];

_militiaLoadoutData set ["spanishUniforms", _spanishUniforms];
_militiaLoadoutData set ["spanishVests", _spanishVests];
_militiaLoadoutData set ["spanishSlVests", _spanishSlVests];
_militiaLoadoutData set ["spanishMgVests", _spanishMgVests];
_militiaLoadoutData set ["spanishMedicVests", _spanishMedicVests];
_militiaLoadoutData set ["spanishGlVests", _spanishGlVests];
_militiaLoadoutData set ["spanishHelmets", _spanishHelmets];
_militiaLoadoutData set ["spanishFacewear", _spanishFacewear];
_militiaLoadoutData set ["spanishBackpacks", _spanishBackpacks];
_militiaLoadoutData set ["spanishSlRifles", _spanishSlRifles];
_militiaLoadoutData set ["spanishRifles", _spanishRifles];
_militiaLoadoutData set ["spanishCarbines", _spanishCarbines];
_militiaLoadoutData set ["spanishGrenadeLaunchers", _spanishGrenadeLaunchers];
_militiaLoadoutData set ["spanishSMGs", _spanishSMGs];
_militiaLoadoutData set ["spanishMachineGuns", _spanishMachineGuns];
_militiaLoadoutData set ["spanishMarksmanRifles", _spanishMarksmanRifles];
_militiaLoadoutData set ["spanishSniperRifles", _spanishSniperRifles];
_militiaLoadoutData set ["spanishSidearms", _spanishSidearms];
_militiaLoadoutData set ["spanishNVGs", _spanishNVGs];

//_militiaLoadoutData set ["uniforms", []];
//_militiaLoadoutData set ["vests", []];
//_militiaLoadoutData set ["backpacks", []];
//_militiaLoadoutData set ["helmets", []];
//
//_militiaLoadoutData set ["slRifles", []];
//_militiaLoadoutData set ["rifles", []];
//_militiaLoadoutData set ["carbines", []];
//_militiaLoadoutData set ["grenadeLaunchers", []];
//_militiaLoadoutData set ["SMGs", []];
//_militiaLoadoutData set ["machineGuns", []];
//_militiaLoadoutData set ["marksmanRifles", []];
//_militiaLoadoutData set ["sidearms", []];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["uniforms", []];
_crewLoadoutData set ["vests", []];
_crewLoadoutData set ["helmets", []];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", []];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", []];


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.


//private _nationCount = 2; // [France, Germany, UK, Italy]

/*
private _nationList = [
    "france",
    "uk",
    "germany",
    "spain",
    "italy"
];
*/

private _nationList = [
    "france",
    "uk"
];

if (_hasHELL) then {
    _nationList append ["greece"]
};
if (_hasSFP) then {
    _nationList append ["sweden"];
};
if (_hasFFP) then {
    _nationList append ["finland"];
};
if (_hasRHSPlus) then {
    _nationList append ["ukraine"];
};

private _squadLeaderTemplate = {
  //private _nation = floor random _nationCount;
  private _nation = selectRandom _nationList;
  switch (_nation) do {
    case "france": {
        if (random 1 < 0.7) then {
            ["frenchHelmets"] call _fnc_setHelmet;
            ["frenchNVGs"] call _fnc_addNVGs;
            [selectRandomWeighted ["frenchGlasses", 1, "frenchGoggles", 2]] call _fnc_setFacewear;
        } else {
            ["frenchBerets"] call _fnc_setHelmet;
        };

        //[selectRandomWeighted [[], 1.5, "frenchGlasses", 0.75, "frenchGoggles", 0.5]] call _fnc_setFacewear;
        ["frenchSlVests"] call _fnc_setVest;
        ["frenchUniforms"] call _fnc_setUniform;

        ["frenchBackpacks"] call _fnc_setBackpack;

        ["frenchSlRifles"] call _fnc_setPrimary;
        ["primary", 6] call _fnc_addMagazines;
        ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

        ["frenchSidearms"] call _fnc_setHandgun;
        ["handgun", 2] call _fnc_addMagazines;

        ["items_medical_standard"] call _fnc_addItemSet;
        ["items_squadLeader_extras"] call _fnc_addItemSet;
        ["items_miscEssentials"] call _fnc_addItemSet;
        ["antiInfantryGrenades", 2] call _fnc_addItem;
        ["signalsmokeGrenades", 2] call _fnc_addItem;
        ["smokeGrenades", 2] call _fnc_addItem;

        ["maps"] call _fnc_addMap;
        ["watches"] call _fnc_addWatch;
        ["compasses"] call _fnc_addCompass;
        ["radios"] call _fnc_addRadio;
        ["gpses"] call _fnc_addGPS;
        ["binoculars"] call _fnc_addBinoculars;
        //["NVGs"] call _fnc_addNVGs;
    };
    case "germany": {
        ["germanHelmets"] call _fnc_setHelmet;
        [selectRandomWeighted [[], 1.5, "germanFacewear", 0.9]] call _fnc_setFacewear;
        ["germanSlVests"] call _fnc_setVest;
        ["germanUniforms"] call _fnc_setUniform;
        ["germanBackpacks"] call _fnc_setBackpack;

        ["germanSlRifles"] call _fnc_setPrimary;
        ["primary", 6] call _fnc_addMagazines;
        ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

        ["germanSidearms"] call _fnc_setHandgun;
        ["handgun", 2] call _fnc_addMagazines;

        ["items_medical_standard"] call _fnc_addItemSet;
        ["items_squadLeader_extras"] call _fnc_addItemSet;
        ["items_miscEssentials"] call _fnc_addItemSet;
        ["antiInfantryGrenades", 2] call _fnc_addItem;
        ["signalsmokeGrenades", 2] call _fnc_addItem;
        ["smokeGrenades", 2] call _fnc_addItem;

        ["maps"] call _fnc_addMap;
        ["watches"] call _fnc_addWatch;
        ["compasses"] call _fnc_addCompass;
        ["radios"] call _fnc_addRadio;
        ["gpses"] call _fnc_addGPS;
        ["binoculars"] call _fnc_addBinoculars;
        ["germanNVGs"] call _fnc_addNVGs;
    };
    case "uk": {
        if (random 1 < 0.7) then {
            ["britishHelmets"] call _fnc_setHelmet;
            ["britishNVGs"] call _fnc_addNVGs;
            [selectRandomWeighted ["frenchGlasses", 1, "frenchGoggles", 2]] call _fnc_setFacewear;
        } else {
            ["britishBerets"] call _fnc_setHelmet;
        };
        ["britishSlVests"] call _fnc_setVest;
        ["britishUniforms"] call _fnc_setUniform;
        ["britishSlBackpacks"] call _fnc_setBackpack;

        ["britishSlRifles"] call _fnc_setPrimary;
        ["primary", 6] call _fnc_addMagazines;
        ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

        ["britishSidearms"] call _fnc_setHandgun;
        ["handgun", 2] call _fnc_addMagazines;

        ["items_medical_standard"] call _fnc_addItemSet;
        ["items_squadLeader_extras"] call _fnc_addItemSet;
        ["items_miscEssentials"] call _fnc_addItemSet;
        ["antiInfantryGrenades", 2] call _fnc_addItem;
        ["signalsmokeGrenades", 2] call _fnc_addItem;
        ["smokeGrenades", 2] call _fnc_addItem;

        ["maps"] call _fnc_addMap;
        ["watches"] call _fnc_addWatch;
        ["compasses"] call _fnc_addCompass;
        ["radios"] call _fnc_addRadio;
        ["gpses"] call _fnc_addGPS;
        ["binoculars"] call _fnc_addBinoculars;
    };
    case "italy": {
        ["italianHelmets"] call _fnc_setHelmet;
        [selectRandomWeighted [[], 1.5, "italianFacewear", 0.9]] call _fnc_setFacewear;
        ["italianSlVests"] call _fnc_setVest;
        ["italianUniforms"] call _fnc_setUniform;
        ["italianBackpacks"] call _fnc_setBackpack;

        ["italianSlRifles"] call _fnc_setPrimary;
        ["primary", 6] call _fnc_addMagazines;
        ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

        ["italianSidearms"] call _fnc_setHandgun;
        ["handgun", 2] call _fnc_addMagazines;

        ["items_medical_standard"] call _fnc_addItemSet;
        ["items_squadLeader_extras"] call _fnc_addItemSet;
        ["items_miscEssentials"] call _fnc_addItemSet;
        ["antiInfantryGrenades", 2] call _fnc_addItem;
        ["signalsmokeGrenades", 2] call _fnc_addItem;
        ["smokeGrenades", 2] call _fnc_addItem;

        ["maps"] call _fnc_addMap;
        ["watches"] call _fnc_addWatch;
        ["compasses"] call _fnc_addCompass;
        ["radios"] call _fnc_addRadio;
        ["gpses"] call _fnc_addGPS;
        ["binoculars"] call _fnc_addBinoculars;
        ["italianNVGs"] call _fnc_addNVGs;
    };
};
};


/*
private _squadLeaderTemplate = {
    //[selectRandomWeighted ["helmets", 2, "slHat", 1]] call _fnc_setHelmet;
    if (random 1 < 0.7) then {
        ["frenchHelmets"] call _fnc_setHelmet;
        ["frenchNVGs"] call _fnc_addNVGs;
        [selectRandomWeighted ["frenchGlasses", 1, "frenchGoggles", 2]] call _fnc_setFacewear;
    } else {
        ["frenchBerets"] call _fnc_setHelmet;
    };

    //[selectRandomWeighted [[], 1.5, "frenchGlasses", 0.75, "frenchGoggles", 0.5]] call _fnc_setFacewear;
    ["frenchSlVests"] call _fnc_setVest;
    ["frenchUniforms"] call _fnc_setUniform;

    ["frenchBackpacks"] call _fnc_setBackpack;

    ["frenchSlRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["frenchSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    //["NVGs"] call _fnc_addNVGs;
};
*/

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;
    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1.25]] call _fnc_setFacewear;
    [["glVests"]] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [selectRandomWeighted ["helmets", 2, "sniHats", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["sniVests","vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 7] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};
private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakGlasses"] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [selectRandomWeighted ["cloakUniforms", 1, "ghillieSuits", 2]] call _fnc_setUniform;

    ["cloakRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    ["cloakGlasses"] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [selectRandomWeighted ["cloakUniforms", 1, "ghillieSuits", 2]] call _fnc_setUniform;

    ["cloakCarbines"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["cloakSidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    ["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    ["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]] 
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;