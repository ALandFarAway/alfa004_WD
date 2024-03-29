////////////////////////////////////////////////////////////////////////////////
//
//  System Name : ACR Configuration File
//     Filename : acf_cre_onspawnin
//    $Revision:: 280        $ current version of the file
//        $Date:: 2007-03-20#$ date the file was created or modified
//       Author : Cipher
//
//    Var Prefix:
//  Dependencies:
//
//  Description
//  This script calls the ACR's OnSpawnIn event handler for creatures
//  and any custom code a server may need. It is not updated in ACR updates.
//
//  Revision History
////////////////////////////////////////////////////////////////////////////////

/*
This is a template for custom on spawn scripts utilising
the advanced AI system.

You can enter random equipment and scale vaules in the relevant sections
The NPC will then utilise this information to equip itself from your palette.

The advanced AI system will adjust the creatures AI to match its random loadout.
To ensure correct loadout for the creature ensure that any weapons are equipped to it.
*/


////////////////////////////////////////////////////////////////////////////////
// Includes ////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
#include "acr_creature_i_advanced"

////////////////////////////////////////////////////////////////////////////////
// Constants ///////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//what is the percentage chance the creature will use a spell, special ability or active feat
//in any given round. Note setting this at 100 does not mean the creature will definately
//use such an ability, just that the chance of it being considered as an option in each round
//is 100%.
int USE_SPECIAL_ABILITY=75;

////////////////////////////////////////////////////////////////////////////////
// Structures //////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Global Variables ////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Function Prototypes /////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Function Definitions ////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

void main()
{
	if (!GetLocalInt(OBJECT_SELF,"X2_L_BEH_MAGIC"))	
		{SetLocalInt(OBJECT_SELF,"X2_L_BEH_MAGIC",USE_SPECIAL_ABILITY);}
				
	ACR_CreatureOnSpawnIn();
}