local __exports = LibStub:NewLibrary("ovale/scripts/ovale_warlock_spells", 80000)
if not __exports then return end
local __Scripts = LibStub:GetLibrary("ovale/Scripts")
local OvaleScripts = __Scripts.OvaleScripts
__exports.register = function()
    local name = "ovale_warlock_spells"
    local desc = "[8.0] Ovale: Warlock spells"
    local code = [[Define(agony 231792)
# Agony may now ramp up to s1+6 stacks.
  SpellInfo(agony channel=0 gcd=0 offgcd=1)
  SpellAddBuff(agony agony=1)
Define(battle_potion_of_intellect 279164)
# Chance to create multiple potions.
  SpellInfo(battle_potion_of_intellect gcd=0 offgcd=1)
Define(berserking 26297)
# Increases your haste by s1 for d.
  SpellInfo(berserking cd=180 duration=10 gcd=0 offgcd=1)
  # Haste increased by s1.
  SpellAddBuff(berserking berserking=1)
Define(bilescourge_bombers 267213)
# @spelldesc267211
  SpellInfo(bilescourge_bombers gcd=0 offgcd=1)
Define(call_dreadstalkers 104316)
# Summons s1 ferocious Dreadstalkers to attack the target for 193332d.
  SpellInfo(call_dreadstalkers soulshards=2 cd=20)
Define(cataclysm 152108)
# Calls forth a cataclysm at the target location, dealing s1 Shadowflame damage to all enemies within A1 yards and afflicting them with ?s980[Agony and Unstable Affliction][]?s104315[Corruption][]?s348[Immolate][]?!s980&!s104315&!s348[Agony, Unstable Affliction, Corruption, or Immolate][].
  SpellInfo(cataclysm cd=30 talent=cataclysm_talent)
Define(channel_demonfire 196449)
# @spelldesc196447
  SpellInfo(channel_demonfire gcd=0 offgcd=1)
Define(chaos_bolt 215279)
# Unleashes a devastating blast of chaos, causing s1 Chaos damage. Chaos Bolt always critically strikes and your critical strike chance increases its damage.
  SpellInfo(chaos_bolt gcd=0 offgcd=1)
Define(conflagrate 231793)
# Conflagrate has s1+1 charges.
  SpellInfo(conflagrate channel=0 gcd=0 offgcd=1)
  SpellAddBuff(conflagrate conflagrate=1)
Define(corruption 18656)
# Corrupts the target, causing o1 damage over d.
  SpellInfo(corruption duration=3 channel=3 tick=1)
  # Inflicts s1 Shadow damage every t1 sec.
  SpellAddTargetDebuff(corruption corruption=1)
Define(corruption_debuff 146739)
# @spelldesc172
  SpellInfo(corruption_debuff duration=14 channel=14 gcd=0 offgcd=1 tick=2)
  # Suffering w1 Shadow damage every t1 sec.
  SpellAddTargetDebuff(corruption_debuff corruption_debuff=1)
Define(dark_soul_instability 113858)
# Infuses your soul with unstable power, increasing your critical strike chance by 113858s1 for 113858d.?s56228[rnrn|cFFFFFFFFPassive:|rrnIncreases your critical strike chance by 113858m1/56228m1. This effect is disabled while on cooldown.][]
  SpellInfo(dark_soul_instability cd=120 cd=120 duration=20 talent=dark_soul_instability_talent)
  # Critical strike chance increased by w1.
  SpellAddBuff(dark_soul_instability dark_soul_instability=1)
Define(dark_soul_misery 113860)
# Infuses your soul with the misery of fallen foes, increasing haste by s1 for d.
  SpellInfo(dark_soul_misery cd=120 duration=20 talent=dark_soul_misery_talent)
  # Haste increased by s1.
  SpellAddBuff(dark_soul_misery dark_soul_misery=1)
Define(deathbolt 264106)
# Launches a bolt of death at the target, dealing s2 of the total remaining damage of your damage over time effects on the target.?s196103[rnrnCounts up to s3 sec of your Corruption's damage.][]
  SpellInfo(deathbolt cd=30 talent=deathbolt_talent)
Define(demonbolt 264178)
# Send the fiery soul of a fallen demon at the enemy, causing s1 Shadowflame damage.?c2[rnrn|cFFFFFFFFGenerates 2 Soul Shards.|r][]
  SpellInfo(demonbolt)
Define(demonic_calling_buff 205146)
# @spelldesc205145
  SpellInfo(demonic_calling_buff duration=20 gcd=0 offgcd=1)
  # Your next Call Dreadstalkers costs 205145s1 less Soul Shard and has no cast time.
  SpellAddBuff(demonic_calling_buff demonic_calling_buff=1)
Define(demonic_power 265273)
# @spelldesc265187
  SpellInfo(demonic_power duration=15 gcd=0 offgcd=1)
  # Damage dealt by your demons increased by s2.
  SpellAddBuff(demonic_power demonic_power=1)
Define(demonic_strength 267171)
# Infuse your Felguard with demonic strength and command it to charge your target and unleash a Felstorm that will deal s2 increased damage.
  SpellInfo(demonic_strength cd=60 duration=20 talent=demonic_strength_talent)
  # Your next Felstorm will deal s2 increased damage.
  SpellAddBuff(demonic_strength demonic_strength=1)
Define(doom 265469)
# @spelldesc265412
  SpellInfo(doom channel=0 gcd=0 offgcd=1)
Define(drain_life 234153)
# Drains life from the target, causing o1 Shadow damage over d, and healing you for e1*100 of the damage done.
  SpellInfo(drain_life duration=5 channel=5 tick=1)
  # Suffering s1 Shadow damage every t1 seconds.rnRestoring health to the Warlock.
  SpellAddTargetDebuff(drain_life drain_life=1)
Define(drain_soul 198590)
# Drains the target's soul, causing o1 Shadow damage over d.rnrnDamage is increased by s2 against enemies below s3 health.rnrn|cFFFFFFFFGenerates 1 Soul Shard if the target dies during this effect.|r
  SpellInfo(drain_soul duration=5 channel=5 talent=drain_soul_talent tick=1)
  # Suffering w1 Shadow damage every t1 seconds.
  SpellAddTargetDebuff(drain_soul drain_soul=1)
Define(fireblood 265226)
# Increases ?a162700[Agility]?a162702[Strength]?a162697[Agility]?a162698[Strength]?a162699[Intellect]?a162701[Intellect][primary stat] by s1.
  SpellInfo(fireblood duration=8 max_stacks=6 gcd=0 offgcd=1)
  # Increases ?a162700[Agility]?a162702[Strength]?a162697[Agility]?a162698[Strength]?a162699[Intellect]?a162701[Intellect][primary stat] by w1.
  SpellAddBuff(fireblood fireblood=1)
Define(forbidden_knowledge_buff 279665)
# @spelldesc278738
  SpellInfo(forbidden_knowledge_buff channel=-0.001 gcd=0 offgcd=1)
Define(grimoire_of_sacrifice 196100)
# @spelldesc108503
  SpellInfo(grimoire_of_sacrifice gcd=0 offgcd=1)
Define(grimoire_felguard 111898)
# Summons a Felguard who attacks the target for s1 sec that deals 216187s1 increased damage.rnrnThis Felguard will stun their target when summoned.
  SpellInfo(grimoire_felguard soulshards=1 cd=120 duration=17 talent=grimoire_felguard_talent)
Define(hand_of_guldan 105174)
# Calls down a demonic meteor full of Wild Imps which burst forth to attack the target.rnrnDeals up to m1*86040m1 Shadowflame damage on impact to all enemies within 86040A1 yds of the target?s196283[, applies Doom to each target,][] and summons up to m1*104317m2 Wild Imps, based on Soul Shards consumed.
  SpellInfo(hand_of_guldan soulshards=1)
Define(haunt 48181)
# A ghostly soul haunts the target, dealing s1 Shadow damage and increasing your damage dealt to the target by s2 for d.rnrnIf the target dies, Haunt's cooldown is reset.
  SpellInfo(haunt cd=15 duration=15 talent=haunt_talent)
  # Taking s2 increased damage from the Warlock. Haunt's cooldown will be reset on death.
  SpellAddTargetDebuff(haunt haunt=1)
Define(havoc 80240)
# Marks a target with Havoc for d, causing your single target spells to also strike the Havoc victim for s1 of normal initial damage.
  SpellInfo(havoc cd=30 duration=10 channel=10 max_stacks=1)
  # Spells cast by the Warlock also hit this target for s1 of normal initial damage.
  SpellAddTargetDebuff(havoc havoc=1)
Define(immolate 157736)
# @spelldesc348
  SpellInfo(immolate duration=18 gcd=0 offgcd=1 tick=3)
  # Suffering w1 Fire damage every t1 sec.
  SpellAddTargetDebuff(immolate immolate=1)
Define(implosion 196278)
# @spelldesc196277
  SpellInfo(implosion gcd=0 offgcd=1)
Define(incinerate 244670)
# @spelldesc29722
  SpellInfo(incinerate gcd=0 offgcd=1 soulshards=-0.2)
Define(inevitable_demise_buff 273522)
# @spelldesc273521
  SpellInfo(inevitable_demise_buff channel=-0.001 gcd=0 offgcd=1)
Define(inner_demons 267216)
# You passively summon a Wild Imp to fight for you every t1 sec, and have a s1 chance to also summon an additional Demon to fight for you for s2 sec.
  SpellInfo(inner_demons channel=0 talent=inner_demons_talent gcd=0 offgcd=1 tick=12)
  SpellAddBuff(inner_demons inner_demons=1)
Define(nether_portal 267217)
# Tear open a portal to the Twisting Nether for d. Every time you spend Soul Shards, you will also command demons from the Nether to come out and fight for you.
  SpellInfo(nether_portal soulshards=3 cd=180 duration=20 talent=nether_portal_talent)
Define(nightfall_buff 213784)
# @spelldesc213782
  SpellInfo(nightfall_buff channel=0 gcd=0 offgcd=1)
Define(phantom_singularity 205246)
# @spelldesc205179
  SpellInfo(phantom_singularity gcd=0 offgcd=1)
Define(power_siphon 264130)
# Instantly sacrifice up to s1 Wild Imps to generate s1 charges of Demonic Core.
  SpellInfo(power_siphon cd=30 channel=0 talent=power_siphon_talent)
Define(rain_of_fire 42223)
# @spelldesc5740
  SpellInfo(rain_of_fire channel=0 gcd=0 offgcd=1)
Define(seed_of_corruption 27285)
# @spelldesc27243
  SpellInfo(seed_of_corruption channel=0 gcd=0 offgcd=1)
Define(shadow_bolt 265269)
# Sends a shadowy bolt at the enemy causing s1 Shadow damage.
  SpellInfo(shadow_bolt channel=0 gcd=0 offgcd=1)
Define(shadowburn 17877)
# Blasts a target for s1 Shadowflame damage. rnrnIf the target dies within d and yields experience or honor, Shadowburn's cooldown is reset.rnrn|cFFFFFFFFGenerates 245731s1 Soul Shard Fragments.|r
  SpellInfo(shadowburn cd=12 duration=5 talent=shadowburn_talent)
  # If the target dies and yields experience or honor, Shadowburn's cooldown is reset.
  SpellAddTargetDebuff(shadowburn shadowburn=1)
Define(siphon_life 63106)
# Siphons the target's life essence, dealing o1 Shadow damage over d and healing you for e1*100 of the damage done.
  SpellInfo(siphon_life duration=15 talent=siphon_life_talent tick=3)
  # Suffering w1 Shadow damage every t1 sec and siphoning life to the casting Warlock.
  SpellAddTargetDebuff(siphon_life siphon_life=1)
Define(soul_fire 281490)
# @spelldesc6353
  SpellInfo(soul_fire gcd=0 offgcd=1 soulshards=-0.4)
Define(soul_strike 267964)
# @spelldesc264057
  SpellInfo(soul_strike gcd=0 offgcd=1)
Define(summon_darkglare 205180)
# Summons a Darkglare from the Twisting Nether that extends the duration of your damage over time effects on all enemies by s2 sec.rnrnThe Darkglare will serve you for d, blasting its target for 205231s1 Shadow damage, increased by s3 for every damage over time effect you have active on any target.
  SpellInfo(summon_darkglare cd=180 duration=20)
  # Summons a Darkglare from the Twisting Nether that blasts its target for Shadow damage, dealing increased damage for every damage over time effect you have active on any target.
  SpellAddBuff(summon_darkglare summon_darkglare=1)
Define(summon_demonic_tyrant 265187)
# Summon a Demonic Tyrant to increase the duration of all of your current demons by 265273m3/1000.1 sec, and increase the damage of all of your other demons by 265273s2, while damaging your target.
  SpellInfo(summon_demonic_tyrant cd=90 duration=15)
Define(summon_felguard 30146)
# Summons a Felguard under your command as a powerful melee combatant.
  SpellInfo(summon_felguard soulshards=1)
Define(summon_imp 688)
# Summons an Imp under your command that casts ranged Firebolts.
  SpellInfo(summon_imp soulshards=1)
Define(summon_infernal 1122)
# Summons an Infernal from the Twisting Nether, impacting for 22703s1 Fire damage and stunning all enemies in the area for 22703d.rnrnThe Infernal will serve you for 111685d, dealing 20153s1 damage to all nearby enemies every 19483t1 sec and generating 264365s1 Soul Shard Fragment every 264364t1 sec.
  SpellInfo(summon_infernal cd=180 duration=0.25 channel=0.25)
Define(summon_vilefiend 264119)
# Summon a Vilefiend to fight for you for the next d.
  SpellInfo(summon_vilefiend soulshards=1 cd=45 duration=15 talent=summon_vilefiend_talent)
Define(unstable_affliction 233499)
# @spelldesc30108
  SpellInfo(unstable_affliction duration=8 max_stacks=1 gcd=0 offgcd=1 tick=2)
  # Suffering w1 Shadow damage every t1 sec.rnTaking 30108s3 increased damage from the Warlock.
  SpellAddTargetDebuff(unstable_affliction unstable_affliction=1)
Define(vile_taint 278350)
# Unleashes a vile explosion at the target location, dealing o1 Shadow damage over d to all enemies within a1 yds and reducing their movement speed by s2.
  SpellInfo(vile_taint soulshards=1 cd=20 duration=10 talent=vile_taint_talent tick=2)
  # Suffering w1 Shadow damage every t1 sec.rnMovement slowed by s2.
  SpellAddTargetDebuff(vile_taint vile_taint=1)
Define(absolute_corruption_talent 5)
# Corruption is now permanent and deals s2 increased damage.rnrnDuration reduced to s1 sec against players.
Define(creeping_death_talent 20)
# Your Agony, Corruption, Siphon Life, and Unstable Affliction deal their full damage s1 faster.
Define(dark_soul_misery_talent 21)
# Infuses your soul with the misery of fallen foes, increasing haste by s1 for d.
Define(deathbolt_talent 3)
# Launches a bolt of death at the target, dealing s2 of the total remaining damage of your damage over time effects on the target.?s196103[rnrnCounts up to s3 sec of your Corruption's damage.][]
Define(grimoire_of_sacrifice_talent 18)
# Sacrifices your demon pet for power, gaining its command demon ability, and causing your spells to sometimes also deal 196100s1 additional Shadow damage.rnrnLasts 196099d or until you summon a demon pet.
Define(haunt_talent 17)
# A ghostly soul haunts the target, dealing s1 Shadow damage and increasing your damage dealt to the target by s2 for d.rnrnIf the target dies, Haunt's cooldown is reset.
Define(phantom_singularity_talent 11)
# Places a phantom singularity above the target, which consumes the life of all enemies within 205246A2 yards, dealing 8*205246s2 damage over d, healing you for 205246e2*100 of the damage done.
Define(shadow_embrace_talent 16)
# ?s198590[Drain Soul][Shadow Bolt] applies Shadow Embrace, increasing your damage dealt to the target by 32390s1 for 32390d. Stacks up to 32390u times.
Define(siphon_life_talent 6)
# Siphons the target's life essence, dealing o1 Shadow damage over d and healing you for e1*100 of the damage done.
Define(sow_the_seeds_talent 10)
# Seed of Corruption now @switch<s2>[][consumes a Soul Shard, if available, to ]embeds a demon seed into s1 additional nearby enemy.
Define(vile_taint_talent 12)
# Unleashes a vile explosion at the target location, dealing o1 Shadow damage over d to all enemies within a1 yds and reducing their movement speed by s2.
Define(writhe_in_agony_talent 4)
# Agony's damage may now ramp up to s2 stacks.
Define(bilescourge_bombers_talent 3)
# Tear open a portal to the nether above the target location, from which several Bilescourge will pour out of and crash into the ground over d, dealing 267213s1 Shadow damage to all enemies within 267213A1 yards.
Define(demonic_calling_talent 4)
# Shadow Bolt?s264178[ and Demonbolt have][ has] a h chance to make your next Call Dreadstalkers cost s1 less Soul Shard and have no cast time.
Define(doom_talent 6)
# Inflicts impending doom upon the target, causing 265469s1 Shadow damage after d. rnrnIf Doom kills the target, there is a s2 chance to summon a Doomguard to fight for you for 280365d.rnrn|cFFFFFFFFGenerates 1 Soul Shard when dealing damage.|r
Define(inner_demons_talent 17)
# You passively summon a Wild Imp to fight for you every t1 sec, and have a s1 chance to also summon an additional Demon to fight for you for s2 sec.
Define(nether_portal_talent 21)
# Tear open a portal to the Twisting Nether for d. Every time you spend Soul Shards, you will also command demons from the Nether to come out and fight for you.
Define(power_siphon_talent 5)
# Instantly sacrifice up to s1 Wild Imps to generate s1 charges of Demonic Core.
Define(summon_vilefiend_talent 12)
# Summon a Vilefiend to fight for you for the next d.
Define(cataclysm_talent 12)
# Calls forth a cataclysm at the target location, dealing s1 Shadowflame damage to all enemies within A1 yards and afflicting them with ?s980[Agony and Unstable Affliction][]?s104315[Corruption][]?s348[Immolate][]?!s980&!s104315&!s348[Agony, Unstable Affliction, Corruption, or Immolate][].
Define(channel_demonfire_talent 20)
# Launches s1 bolts of felfire over d at random targets afflicted by your Immolate within 196449A1 yds. Each bolt deals 196448s1 Fire damage to the target and 196448s2 Fire damage to nearby enemies.
Define(dark_soul_instability_talent 21)
# Infuses your soul with unstable power, increasing your critical strike chance by 113858s1 for 113858d.?s56228[rnrn|cFFFFFFFFPassive:|rrnIncreases your critical strike chance by 113858m1/56228m1. This effect is disabled while on cooldown.][]
Define(eradication_talent 2)
# Chaos Bolt increases the damage you deal to the target by 196414s1 for 196414d.
Define(fire_and_brimstone_talent 11)
# Incinerate now also hits all enemies near your target for s1 damage and generates s2 Soul Shard Fragment for each additional enemy hit.
Define(flashover_talent 1)
# Conflagrate deals s3 increased damage and grants an additional charge of Backdraft.
Define(grimoire_of_supremacy_talent 17)
# While you have an Infernal active, every Soul Shard you spend increases the damage of your Chaos Bolt by 266091s1.
Define(inferno_talent 10)
# Rain of Fire damage has a s1 chance to generate a Soul Shard Fragment.
Define(internal_combustion_talent 5)
# Chaos Bolt consumes up to s1 sec of Immolate's damage over time effect on your target, instantly dealing that much damage.
Define(roaring_blaze_talent 16)
# Conflagrate burns the target for an additional 265931o1 Fire damage over 265931d.
Define(soul_fire_talent 3)
# Burns the enemy's soul, dealing s1 Fire damage.rnrnCooldown is reduced by <cdr> sec for every Soul Shard you spend.rnrn|cFFFFFFFFGenerates 281490s1 Soul Shard Fragments.|r
Define(demonic_strength_talent 2)
# Infuse your Felguard with demonic strength and command it to charge your target and unleash a Felstorm that will deal s2 increased damage.
Define(drain_soul_talent 2)
# Drains the target's soul, causing o1 Shadow damage over d.rnrnDamage is increased by s2 against enemies below s3 health.rnrn|cFFFFFFFFGenerates 1 Soul Shard if the target dies during this effect.|r
Define(grimoire_felguard_talent 18)
# Summons a Felguard who attacks the target for s1 sec that deals 216187s1 increased damage.rnrnThis Felguard will stun their target when summoned.
Define(shadowburn_talent 6)
# Blasts a target for s1 Shadowflame damage. rnrnIf the target dies within d and yields experience or honor, Shadowburn's cooldown is reset.rnrn|cFFFFFFFFGenerates 245731s1 Soul Shard Fragments.|r
Define(wilfreds_sigil_of_superior_summoning_item 132369)
Define(cascading_calamity_trait 275372)
Define(forbidden_knowledge_trait 278738)
    ]]
    code = code .. [[
# Aliases
SpellList(unstable_affliction_debuff unstable_affliction_1_debuff unstable_affliction_2_debuff unstable_affliction_3_debuff unstable_affliction_4_debuff unstable_affliction_5_debuff)

# Dummy buff
# Warlock.ts
Define(active_havoc_buff -80240)
	SpellInfo(active_havoc_buff duration=10)

# Warlock spells and functions.
Define(agony 980)
	SpellAddTargetDebuff(agony agony_debuff=1)
Define(agony_debuff 980)
	SpellInfo(agony_debuff duration=18 haste=spell max_stacks=10 tick=2)
	SpellInfo(agony_debuff duration=15.3 tick=1.7 talent=creeping_death_talent)
	SpellInfo(agony_debuff max_stacks=15 talent=writhe_in_agony_talent)
Define(backdraft_buff 117828)
	SpellInfo(backdraft_buff duration=10 max_stacks=4)
Define(banish 710)
Define(bilescourge_bombers 267211)
	SpellInfo(bilescourge_bombers soulshards=2 cd=30)
Define(burning_rush 111400)
	SpellAddBuff(burning_rush burning_rush_buff=1)
Define(burning_rush_buff 111400)

	
	SpellRequire(call_dreadstalkers soulshards 1=buff,demonic_calling_buff)
	SpellAddTargetDebuff(call_dreadstalkers from_the_shadows_debuff talent=from_the_shadows_talent)

	SpellInfo(cataclysm cd=30)
	SpellAddTargetDebuff(cataclysm immolate_debuff=1)
Define(channel_demonfire 196447)
	SpellInfo(channel_demonfire cd=25 channel=3 unusable=1)
	SpellRequire(channel_demonfire unusable 0=target_debuff,immolate_debuff)
Define(chaos_bolt 116858)
	SpellInfo(chaos_bolt soulshards=2 travel_time=1)
	SpellAddBuff(chaos_bolt backdraft_buff=-1)
	SpellAddTargetDebuff(chaos_bolt eradication_debuff=1 talent=eradication_talent)
Define(command_demon 119898)
Define(conflagrate 17962)
	SpellInfo(conflagrate soulshards=-0.5)
	SpellAddBuff(conflagrate backdraft_buff=1)
	SpellAddBuff(conflagrate backdraft_buff=2 talent=flashover_talent)
Define(corruption 172)
	SpellAddTargetDebuff(corruption corruption_debuff=1)

	SpellInfo(corruption_debuff duration=14 haste=spell tick=2)
	SpellInfo(corruption_debuff duration=11.9 tick=1.7 talent=creeping_death_talent)
	#SpellInfo(corruption_debuff duration=3600 talent=absolute_corruption_talent)
Define(create_healthstone 6201)
Define(create_soulwell 29893)
Define(dark_pact 108416)

	SpellInfo(dark_soul_instability cd=120)
	SpellAddBuff(dark_soul_instability dark_soul_instability_buff=1)
Define(dark_soul_instability_buff 113858)
	SpellInfo(dark_soul_instability_buff duration=20)

	SpellInfo(dark_soul_misery cd=120)
	SpellAddBuff(dark_soul_misery dark_soul_misery_buff=1)
Define(dark_soul_misery_buff 113860)
	SpellInfo(dark_soul_misery_buff duration=20)

	SpellInfo(deathbolt cd=30)

	SpellInfo(demonbolt soulshards=-2)
	SpellAddBuff(demonbolt demonic_core_buff=-1)

	SpellInfo(demonic_calling_buff duration=20)
Define(demonic_circle 48018)
Define(demonic_circle_teleport 48020)
Define(demonic_core_buff 264173)
	SpellInfo(demonic_core_buff duration=20 max_stacks=4)
Define(demonic_gateway 111771)

	SpellInfo(demonic_power duration=15)

	SpellInfo(demonic_strength cd=60)
	SpellAddPetBuff(demonic_strength demonic_strength_buff=1)
Define(demonic_strength_buff 267171)
Define(doom 265412)
	#SpellInfo(doom soulshards=-1) #TODO generates 1 soulshard after 30s
	SpellAddTargetDebuff(doom doom_debuff=1)
Define(doom_debuff 603)
	SpellInfo(doom_debuff duration=30)


	SpellInfo(drain_soul channel=4 haste=spell)
	SpellInfo(drain_soul replace=shadow_bolt_affliction talent=!drain_soul_talent)
	SpellAddBuff(drain_soul shadow_embrace_debuff=1 talent=shadow_embrace_talent)
Define(enslave_demon 1098)
Define(eradication_debuff 196414)
	SpellInfo(eradication_debuff duration=7)
Define(eye_of_kilrogg 126)
Define(fear 5782)
Define(felguard_felstorm 89751)
	SpellInfo(felguard_felstorm cd=30 gcd=0 offgcd=1)
Define(from_the_shadows_debuff 270569)
	SpellInfo(from_the_shadows_debuff duration=12)

	SpellInfo(grimoire_felguard soulshards=1 cd=120)
Define(grimoire_of_sacrifice 108503)
	SpellInfo(grimoire_of_sacrifice cd=30 gcd=0)
	SpellAddBuff(grimoire_of_sacrifice grimoire_of_sacrifice_buff=1)
Define(grimoire_of_sacrifice_buff 196099)
	SpellInfo(grimoire_of_sacrifice_buff duration=3600)
Define(grimoire_of_supremacy_buff 266091)

	SpellInfo(hand_of_guldan max_travel_time=1.5 soulshards=1 max_soulshards=3) # maximum observed travel time with a bit of padding

	SpellInfo(haunt cd=15 travel_time=2.3) # maximum observed travel time with a bit of padding
	SpellAddTargetDebuff(haunt haunt_debuff=1)
Define(haunt_debuff 48181)
	SpellInfo(haunt_debuff duration=15)

	SpellInfo(havoc cd=30)
	SpellAddTargetDebuff(havoc havoc_debuff=1)
Define(havoc_debuff 80240)
	SpellInfo(havoc_debuff duration=10)
Define(health_funnel 755)
Define(immolate 348)
	SpellAddTargetDebuff(immolate immolate_debuff=1)
Define(immolate_debuff 157736)
	SpellInfo(immolate_debuff duration=18 haste=spell tick=3)
Define(implosion 196277)
Define(incinerate 29722)
	SpellInfo(incinerate travel_time=1 soulshards=-0.2)
	SpellAddBuff(incinerate backdraft_buff=-1)
Define(mortal_coil 6789)

	SpellInfo(nether_portal cd=180 soulshards=3)
	SpellAddBuff(nether_portal nether_portal_buff=1)
Define(nether_portal_buff 267218)
	SpellInfo(nether_portal_buff duration=20)
Define(nightfall_buff 264571)
	SpellInfo(nightfall_buff duration=1)
Define(phantom_singularity 205179)
	SpellInfo(phantom_singularity cd=45)
 # TODO usabe with 2+ wilds imps
	SpellAddBuff(power_siphon demonic_core_buff=2)
Define(rain_of_fire 5740)
	SpellInfo(rain_of_fire soulshards=3)
Define(reverse_entropy_buff 266030)
	SpellInfo(reverse_entropy_buff duration=8)
Define(ritual_of_summoning 698)
Define(roaring_blaze_debuff 265931)
	SpellInfo(roaring_blaze_debuff duration=6 tick=2 haste=spell)
Define(seed_of_corruption 27243)
	SpellInfo(seed_of_corruption soulshards=1)
	SpellAddTargetDebuff(seed_of_corruption seed_of_corruption_debuff=1)
Define(seed_of_corruption_debuff 27243)
	SpellInfo(seed_of_corruption_debuff duration=12)
Define(shadow_bolt 686)
	SpellInfo(shadow_bolt soulshards=-1 travel_time=2.2)
Define(shadow_bolt_affliction 232670)
	SpellInfo(shadow_bolt_affliction travel_time=2.2)
	SpellInfo(shadow_bolt_affliction replace=drain_soul talent=drain_soul_talent)
	SpellAddBuff(shadow_bolt_affliction nightfall_buff=-1)
	SpellAddBuff(shadow_bolt_affliction shadow_embrace_debuff=1 talent=shadow_embrace_talent)
Define(shadow_embrace_debuff 32390)
	SpellInfo(shadow_embrace_debuff duration=10 max_stacks=3)

	SpellInfo(shadowburn soulshards=-0.3 charges=2 cd=12)

	SpellAddTargetDebuff(siphon_life siphon_life_debuff=1)
Define(siphon_life_debuff 63106)
	SpellInfo(siphon_life_debuff duration=15 tick=3 haste=spell)
	SpellInfo(siphon_life_debuff duration=12.8 tick=2.5 haste=spell talent=creeping_death_talent)
Define(soul_fire 6353)
	SpellInfo(soul_fire soulshards=-0.4 cd=20 travel_time=1)
Define(soul_leech 108370)
Define(soul_link 108415)
Define(soul_shards 246985)
Define(soul_strike 264057)
	SpellInfo(soul_strike soulshards=-1 cd=10)
Define(soulstone 20707)

	SpellInfo(summon_darkglare cd=180)

	SpellInfo(summon_demonic_tyrant cd=90)

	
Define(summon_felhunter 691)
	SpellInfo(summon_felhunter soulshards=1)

	

	SpellInfo(summon_infernal cd=180)
Define(summon_succubus 712)
	SpellInfo(summon_succubus soulshards=1)

	SpellInfo(summon_vilefiend soulshards=1 cd=45)
Define(summon_voidwalker 697)
	SpellInfo(summon_voidwalker soulshards=1)
Define(unending_breath 5697)
Define(unending_resolve 104773)
	SpellInfo(unending_resolve cd=180)
	SpellAddBuff(unending_resolve unending_resolve_buff=1)
Define(unending_resolve_buff 104773)
	SpellInfo(unending_resolve_buff duration=8)
Define(unstable_affliction 30108)
	SpellInfo(unstable_affliction soulshards=1)
	# TODO apply affliction debuff
Define(unstable_affliction_1_debuff 233940)
	SpellInfo(unstable_affliction_1_debuff duration=8 tick=2)
	SpellInfo(unstable_affliction_1_debuff duration=6.8 tick=1.7 talent=creeping_death_talent)
Define(unstable_affliction_2_debuff 233946)
	SpellInfo(unstable_affliction_2_debuff duration=8 tick=2)
	SpellInfo(unstable_affliction_2_debuff duration=6.8 tick=1.7 talent=creeping_death_talent)
Define(unstable_affliction_3_debuff 233947)
	SpellInfo(unstable_affliction_3_debuff duration=8 tick=2)
	SpellInfo(unstable_affliction_3_debuff duration=6.8 tick=1.7 talent=creeping_death_talent)
Define(unstable_affliction_4_debuff 233948)
	SpellInfo(unstable_affliction_4_debuff duration=8 tick=2)
	SpellInfo(unstable_affliction_4_debuff duration=6.8 tick=1.7 talent=creeping_death_talent)
Define(unstable_affliction_5_debuff 233949)
	SpellInfo(unstable_affliction_5_debuff duration=8 tick=2)
	SpellInfo(unstable_affliction_5_debuff duration=6.8 tick=1.7 talent=creeping_death_talent)

	SpellInfo(vile_taint soulshards=1 cd=20)
Define(vile_taint_debuff 278350)
	SpellInfo(vile_taint_debuff duration=10)

# Azerite Traits
Define(cascading_calamity_trait 275376)
Define(cascading_calamity_buff 275376) #TODO verify buff id

Define(forbidden_knowledge_buff 278738) #TODO verify buff id
Define(inevitable_demise_trait 273521)
Define(inevitable_demise_buff 273521) #TODO verify buff id

# Talents


Define(burning_rush_talent 8)



Define(dark_pact_talent 9)


Define(darkfury_talent 13)

Define(demon_skin_talent 7)

Define(demonic_circle_talent 15)
Define(demonic_consumption_talent 20)



Define(dreadlash_talent 1)



Define(from_the_shadows_talent 10)







Define(mortal_coil_talent 14)

Define(nightfall_talent 1)


Define(reverse_entropy_talent 4)

Define(sacrificed_souls_talent 19)



Define(demo_soul_conduit_talent 16)
Define(soul_conduit_talent 19)

Define(soul_strike_talent 11)





# Legendary items
Define(deadwind_harvester_buff 216708)
Define(sindorei_spite_icd 208871) # TODO should be the internal cooldown of the spell
Define(tormented_souls_buff 216695)


# Pets
Define(demonic_tyrant 135002)
Define(wild_imp 55659)
Define(dreadstalker 98035)
Define(darkglare 103673)
Define(infernal 89)
Define(felguard 17252)

# Non-default tags for OvaleSimulationCraft.
	SpellInfo(dark_soul_instability tag=cd)
	SpellInfo(dark_soul_knowledge tag=cd)
	SpellInfo(dark_soul_misery tag=cd)
	SpellInfo(grimoire_of_sacrifice tag=main)
	SpellInfo(havoc tag=shortcd)
	SpellInfo(metamorphosis tag=main)
	SpellInfo(service_doomguard tag=shortcd)
	SpellInfo(service_felguard tag=shortcd)
	SpellInfo(service_felhunter tag=shortcd)
	SpellInfo(service_imp tag=shortcd)
	SpellInfo(service_infernal tag=shortcd)
	SpellInfo(service_succubus tag=shortcd)
	SpellInfo(service_voidwalker tag=shortcd)
	SpellInfo(summon_felguard tag=shortcd)
	SpellInfo(summon_felhunter tag=shortcd)
	SpellInfo(summon_imp tag=shortcd)
	SpellInfo(summon_succubus tag=shortcd)
	SpellInfo(summon_voidwalker tag=shortcd)
]]
    OvaleScripts:RegisterScript("WARLOCK", nil, name, desc, code, "include")
end