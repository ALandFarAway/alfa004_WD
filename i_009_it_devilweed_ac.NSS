void main()
{
    object oPC      = GetItemActivator();
    object oItem    = GetItemActivated();

 	effect DevilweedDMG = EffectAbilityDecrease (ABILITY_WISDOM, 2);
	effect DevilweedSTR = EffectAbilityIncrease (ABILITY_STRENGTH, 2);
	
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, ExtraordinaryEffect(DevilweedDMG), oPC);
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ExtraordinaryEffect(DevilweedSTR), oPC, HoursToSeconds(d3()));
	 
}