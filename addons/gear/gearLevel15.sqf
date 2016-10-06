//@file Version: 1.2
//@file Name: gearLevel10.sqf
//@file Author: Cael817, based of something i found
private ["_player"];
_player = _this;



_player setVariable ["cmoney", (_player getVariable "cmoney") + 1000, true];

_crate = "Box_East_Ammo_F";		
["Open",_crate] call BIS_fnc_arsenal;
[_crate,[true],true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,[true],true] call BIS_fnc_addVirtualBackpackCargo;

[_crate,[

// Handguns
"hgun_Pistol_heavy_01_F",
"hgun_ACPC2_F",
"hgun_P07_F",
"hgun_P07_khk_F",
"hgun_Pistol_01_F",
"hgun_Rook40_F",
"hgun_Pistol_Signal_F",
"hgun_Pistol_heavy_02_F",

// Rifles
"srifle_DMR_04_F",
"arifle_AK12_F",
"arifle_AK12_GL_F",
"arifle_AKM_F",
"arifle_AKM_FL_F",
"arifle_AKS_F",
"arifle_ARX_blk_F",
"arifle_ARX_ghex_F",
"arifle_ARX_hex_F",
"arifle_CTAR_blk_F",
"arifle_CTAR_GL_blk_F",
"arifle_CTARS_blk_F",
"arifle_MX_GL_khk_F",
"arifle_MX_khk_F",
"arifle_MX_SW_khk_F",
"arifle_MXC_khk_F",
"arifle_MXM_khk_F",
"arifle_SPAR_01_blk_F",
"arifle_SPAR_01_khk_F",
"arifle_SPAR_01_snd_F",
"arifle_SPAR_01_GL_blk_F",
"arifle_SPAR_01_GL_khk_F",
"arifle_SPAR_01_GL_snd_F",
"arifle_SPAR_02_blk_F",
"arifle_SPAR_02_khk_F",
"arifle_SPAR_02_snd_F",
"arifle_SPAR_03_blk_F",
"arifle_SPAR_03_khk_F",
"arifle_SPAR_03_snd_F",
"srifle_DMR_05_hex_F",
"srifle_GM6_F",
"arifle_Katiba_F",
"srifle_LRR_F",
"srifle_DMR_02_sniper_F",
"srifle_DMR_03_F",
"srifle_DMR_06_olive_F",
"srifle_EBR_F",
"srifle_DMR_07_blk_F",
"srifle_DMR_07_ghex_F",
"srifle_DMR_07_hex_F",
"srifle_GM6_ghex_F",
"srifle_LRR_tna_F",
"arifle_Mk20_plain_F",
"LMG_Mk200_F",
"arifle_Mk20C_plain_F",
"arifle_MX_GL_F",
"arifle_MX_F",
"arifle_MX_SW_F",
"arifle_MXC_F",
"arifle_MXM_F",
"MMG_01_tan_F",
"hgun_PDW2000_F",
"srifle_DMR_01_F",
"arifle_SDAR_F",
"MMG_02_sand_F",
"SMG_02_F",
"arifle_TRG20_F",
"arifle_TRG21_F",
"SMG_01_F",
"SMG_05_F",
"LMG_03_F",
"LMG_Zafir_F",

// Launchers
"launch_RPG32_F",
"launch_RPG7_F",

// Random
"Rangefinder",
//"Laserdesignator",
//"Laserdesignator_02",
//"Laserdesignator_03",
"Binocular"

],true] call BIS_fnc_addVirtualWeaponCargo;
					
[_crate,[
// Accessories
"optic_Holosight",
"optic_MRD",
"muzzle_snds_L",
"muzzle_snds_acp",
"optic_Hamr",
"optic_aco_smg",
"muzzle_snds_M",
"muzzle_snds_H",
"muzzle_snds_H_MG",
"muzzle_snds_B",
"muzzle_snds_338_black",
"muzzle_snds_93mmg",
"muzzle_snds_93mmg_tan",
"muzzle_snds_65_TI_blk_F",
"muzzle_snds_58_wdm_F",
"muzzle_snds_B_snd_F",
"muzzle_snds_B_khk_F",
"muzzle_snds_H_MG_khk_F",
"muzzle_snds_H_MG_blk_F",
"muzzle_snds_65_TI_ghex_F",
"muzzle_snds_65_TI_hex_F",
"bipod_01_F_blk",
"bipod_02_F_blk",
"bipod_03_F_blk",
"bipod_01_F_mtp",
"bipod_02_F_hex",
"bipod_03_F_oli",
"bipod_01_F_snd",
"bipod_02_F_tan",
"acc_flashlight",
"acc_pointer_IR",
"optic_Yorris",
"optic_Holosight_smg",
"optic_Aco",
"optic_Aco_grn",
"optic_MRCO",
"optic_Arco",
"optic_DMS",
"optic_SOS",
"optic_AMS",
"optic_KHS_blk",
"optic_LRPS",
"optic_NVS",
"optic_ERCO_blk_F",
"optic_ERCO_khk_F",
"optic_ERCO_snd_F",

// Vests
"V_RebreatherB",
"V_RebreatherIR",
"V_RebreatherIA",
"V_PlateCarrier1_blk",
"V_PlateCarrierGL_blk",
"V_PlateCarrierIA1_dgtl",
"V_PlateCarrierIA2_dgtl",
"V_PlateCarrierIAGL_oli",
"V_HarnessO_gry",
"V_HarnessOGL_gry",
"V_HarnessOSpec_gry",
"V_BandollierB_blk",
"V_Chestrig_blk",
"V_TacVest_blk",
"V_TacVestIR_blk",
"V_PlateCarrierSpec_blk",
"V_PlateCarrierIAGL_oli",
"V_PlateCarrierIAGL_dgtl",
"V_PlateCarrierIA2_dgtl",
"V_PlateCarrierIA1_dgtl",
"V_PlateCarrierSpec_mtp",
"V_PlateCarrierSpec_blk",
"V_PlateCarrierSpec_rgr",
"V_PlateCarrierSpec_tna_F",

// Items
"Medikit",
"ToolKit",
"MineDetector",
"GPS",


// Goggles
"G_Aviator",
"G_Diving",
"G_Balaclava_blk",
"G_Balaclava_oli",
"G_Balaclava_combat",
"G_Balaclava_lowprofile",
"G_Bandanna_aviator",
"G_Bandanna_beast",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_shades",
"G_Bandanna_sport",
"G_Bandanna_tan",
"G_Combat",
"G_Goggles_VR",
"G_Lady_Blue",
"G_Lady_Dark",
"G_Lady_Mirror",
"G_Lady_Red",
"G_Lowprofile",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Spectacles",
"G_Spectacles_Tinted",
"G_Sport_Blackred",
"G_Sport_BlackWhite",
"G_Sport_Blackyellow",
"G_Sport_Checkered",
"G_Sport_Greenblack",
"G_Sport_Red",
"G_Squares",
"G_Squares_Tinted",
"G_Tactical_Black",
"G_Tactical_Clear",

// All Clothing
"U_OrestesBody",
"U_I_G_resistanceLeader_F",
"U_B_GhillieSuit",
"U_O_GhillieSuit",
"U_I_GhillieSuit",
"U_B_FullGhillie_ard",
"U_O_FullGhillie_ard",
"U_I_FullGhillie_ard",
"U_B_FullGhillie_lsh",
"U_O_FullGhillie_lsh",
"U_I_FullGhillie_lsh",
"U_B_FullGhillie_sard",
"U_O_FullGhillie_sard",
"U_I_FullGhillie_sard",
"U_B_Wetsuit",
"U_O_Wetsuit",
"U_I_Wetsuit",
"U_B_CombatUniform_mcam",
"U_O_CombatUniform_ocamo",
"U_I_CombatUniform",
"U_B_CombatUniform_mcam_tshirt",
"U_B_CombatUniform_mcam_vest",
"U_B_SpecopsUniform_sgg",
"U_B_CTRG_1",
"U_B_CTRG_2",
"U_B_CTRG_3",
"U_O_SpecopsUniform_ocamo",
"U_O_CombatUniform_oucamo",
"U_I_CombatUniform_shortsleeve",
"U_I_CombatUniform_tshirt",
"U_O_OfficerUniform_ocamo",
"U_I_OfficerUniform",
"U_B_PilotCoveralls",
"U_O_PilotCoveralls",
"U_I_pilotCoveralls",
"U_B_HeliPilotCoveralls",
"U_I_HeliPilotCoveralls",
"U_BG_Guerilla1_1",
"U_BG_Guerilla2_1",
"U_BG_Guerilla2_2",
"U_BG_Guerilla2_3",
"U_BG_Guerilla3_1",
"U_BG_Guerilla3_2",
"U_BG_leader",
"U_OG_Guerilla1_1",
"U_OG_Guerilla2_1",
"U_OG_Guerilla2_2",
"U_OG_Guerilla2_3",
"U_OG_Guerilla3_1",
"U_OG_Guerilla3_2",
"U_OG_leader",
"U_IG_Guerilla1_1",
"U_IG_Guerilla2_1",
"U_IG_Guerilla2_2",
"U_IG_Guerilla2_3",
"U_IG_Guerilla3_1",
"U_IG_Guerilla3_2",
"U_IG_leader",
"U_Competitor",
"U_Rangemaster",
"U_B_Protagonist_VR",
"U_O_Protagonist_VR",
"U_I_Protagonist_VR",
"U_C_WorkerCoveralls",
"U_C_Poor_1",
"U_C_Poloshirt_redwhite",
"U_C_Poloshirt_salmon",
"U_C_Poloshirt_tricolour",
"U_C_Poloshirt_blue",
"U_C_Poloshirt_burgundy",
"U_C_Poloshirt_stripped",
"U_C_Driver_1_black",
"U_C_Driver_1_blue",
"U_C_Driver_1_green",
"U_C_Driver_1_yellow",
"U_C_Driver_1_orange",
"U_C_Driver_1_red",
"U_C_Driver_1_white",
"U_C_Driver_1",
"U_C_Driver_2",
"U_C_Driver_3",
"U_C_Driver_4",
"U_B_T_Soldier_F",
"U_B_T_Soldier_AR_F",
"U_B_T_Soldier_SL_F",
"U_B_T_Sniper_F",
"U_B_T_FullGhillie_tna_F",
"U_B_CTRG_Soldier_F",
"U_B_CTRG_Soldier_2_F",
"U_B_CTRG_Soldier_3_F",
"U_B_GEN_Soldier_F",
"U_B_GEN_Commander_F",
"U_O_T_Soldier_F",
"U_O_T_Officer_F",
"U_O_T_Sniper_F",
"U_O_T_FullGhillie_tna_F",
"U_O_V_Soldier_Viper_F",
"U_O_V_Soldier_Viper_hex_F",
"U_I_C_Soldier_Para_1_F",
"U_I_C_Soldier_Para_2_F",
"U_I_C_Soldier_Para_3_F",
"U_I_C_Soldier_Para_4_F",
"U_I_C_Soldier_Para_5_F",
"U_I_C_Soldier_Bandit_1_F",
"U_I_C_Soldier_Bandit_2_F",
"U_I_C_Soldier_Bandit_3_F",
"U_I_C_Soldier_Bandit_4_F",
"U_I_C_Soldier_Bandit_5_F",
"U_I_C_Soldier_Camo_F",
"U_C_man_sport_1_F",
"U_C_man_sport_2_F",
"U_C_man_sport_3_F",
"U_C_Man_casual_1_F",
"U_C_Man_casual_2_F",
"U_C_Man_casual_3_F",
"U_C_Man_casual_4_F",
"U_C_Man_casual_5_F",
"U_C_Man_casual_6_F",
"U_B_CTRG_Soldier_urb_1_F",
"U_B_CTRG_Soldier_urb_2_F",
"U_B_CTRG_Soldier_urb_3_F",

// All Headgear
"H_HelmetB",
"H_HelmetB_camo",
"H_HelmetB_light",
"H_HelmetB_paint",
"H_Helmet_Skate",
"H_HelmetB_TI_tna_F",
"H_HelmetB_tna_F",
"H_HelmetB_Enh_tna_F",
"H_HelmetB_Light_tna_F",
"H_HelmetSpecO_ghex_F",
"H_HelmetLeaderO_ghex_F",
"H_HelmetO_ghex_F",
"H_HelmetCrew_O_ghex_F",
"H_MilCap_tna_F",
"H_MilCap_ghex_F",
"H_Booniehat_tna_F",
"H_Beret_gen_F",
"H_MilCap_gen_F",
"H_HelmetSpecB",
"H_HelmetSpecB_blk",
"H_HelmetSpecB_paint1",
"H_HelmetSpecB_paint2",
"H_HelmetB_plain_blk",
"H_HelmetO_ocamo",
"H_HelmetO_oucamo",
"H_HelmetLeaderO_ocamo",
"H_HelmetLeaderO_oucamo",
"H_HelmetSpecO_blk",
"H_CrewHelmetHeli_B",
"H_CrewHelmetHeli_O",
"H_CrewHelmetHeli_I",
"H_PilotHelmetHeli_B",
"H_PilotHelmetHeli_O",
"H_PilotHelmetHeli_I",
"H_HelmetCrew_B",
"H_HelmetCrew_O",
"H_HelmetCrew_I",
"H_PilotHelmetFighter_B",
"H_PilotHelmetFighter_O",
"H_PilotHelmetFighter_I",
"H_MilCap_blue",
"H_MilCap_gry",
"H_MilCap_oucamo",
"H_MilCap_rucamo",
"H_MilCap_mcamo",
"H_MilCap_ocamo",
"H_MilCap_dgtl",
"H_Cap_headphones",
"H_Bandanna_cbr",
"H_Bandanna_camo",
"H_Bandanna_gry",
"H_Bandanna_khk",
"H_Bandanna_mcamo",
"H_Bandanna_sgg",
"H_Bandanna_surfer",
"H_Watchcap_blk",
"H_Watchcap_sgg",
"H_Watchcap_cbr",
"H_Watchcap_khk",
"H_Watchcap_camo",
"H_Beret_blk",
"H_Beret_Colonel",
"H_Beret_02",
"H_Booniehat_khk",
"H_Booniehat_tan",
"H_Booniehat_mcamo",
"H_Booniehat_dgtl",
"H_Hat_blue",
"H_Hat_brown",
"H_Hat_camo",
"H_Hat_checker",
"H_Hat_grey",
"H_Hat_tan",
"H_Cap_blk",
"H_Cap_blu",
"H_Cap_grn",
"H_Cap_oli",
"H_Cap_red",
"H_Cap_tan",
"H_Cap_grn_BI",
"H_Cap_blk_CMMG",
"H_Cap_blk_ION",
"H_Cap_blk_Raven",
"H_Cap_khaki_specops_UK",
"H_Cap_tan_specops_US",
"H_Cap_brn_SPECOPS",
"H_ShemagOpen_khk",
"H_ShemagOpen_tan",
"H_Shemag_khk",
"H_Shemag_olive",
"H_Shemag_tan",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_yellow_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_F",
"H_RacingHelmet_2_F",
"H_RacingHelmet_3_F",
"H_RacingHelmet_4_F",
"H_HelmetSpecO_ocamo",
"H_HelmetIA_net",
"H_HelmetIA_camo",
"H_BandMask_blk",
"H_BandMask_demon",
"H_BandMask_khk",
"H_BandMask_reaper",
"H_HelmetO_ViperSP_ghex_F",
"H_HelmetO_ViperSP_hex_F"
	  
],true] call BIS_fnc_addVirtualItemCargo;

systemChat format["Welcome %1, Enjoy your Virtual Arsenal!", name player];


waitUntil {isNull (uiNamespace getVariable ["RscDisplayArsenal", displayNull])};


