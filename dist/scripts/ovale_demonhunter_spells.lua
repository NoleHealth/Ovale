local __exports = LibStub:NewLibrary("ovale/scripts/ovale_demonhunter_spells", 80000)
if not __exports then return end
local __Scripts = LibStub:GetLibrary("ovale/Scripts")
local OvaleScripts = __Scripts.OvaleScripts
__exports.register = function()
    local name = "ovale_demonhunter_spells"
    local desc = "[8.0] Ovale: DemonHunter spells"
    local code = [[Define(annihilation 201427)
# Slice your target for 227518s1+201428s1 Chaos damage. Annihilation has a 197125h chance to refund 193840s1 Fury.
  SpellInfo(annihilation fury=40)
Define(battle_potion_of_agility 279161)
# Chance to create multiple potions.
  SpellInfo(battle_potion_of_agility gcd=0 offgcd=1)
Define(blade_dance 188499)
# Strike ?a206416[your primary target for <firstbloodDmg> Physical damage, ][]all nearby enemies for <baseDmg> Physical damage, and increase your chance to dodge by s2 for d.
  SpellInfo(blade_dance fury=35 cd=9 duration=1)
  # Dodge chance increased by s2.
  SpellAddBuff(blade_dance blade_dance=1)
Define(chaos_nova 179057)
# Unleash an eruption of fel energy, dealing s2 Chaos damage and stunning all nearby enemies for d.rnrnEach enemy stunned by Chaos Nova has a s3 chance to generate a Lesser Soul Fragment.
  SpellInfo(chaos_nova fury=30 cd=60 duration=2)
  # Stunned.
  SpellAddTargetDebuff(chaos_nova chaos_nova=1)
Define(chaos_strike 197125)
# @spelldesc162794
  SpellInfo(chaos_strike channel=0 gcd=0 offgcd=1)
  SpellAddBuff(chaos_strike chaos_strike=1)
Define(consume_magic 278326)
# Consume m1 beneficial Magic effect from the target, removing it and granting you ?c1[s2 Fury][s3/10 Pain].
  SpellInfo(consume_magic cd=10 fury=-20 pain=-20)
Define(dark_slash 258860)
# Slash an enemy for s2 Physical damage, and increase the damage your Chaos Strike deals to them by s3 for d.
  SpellInfo(dark_slash cd=20 duration=8 talent=dark_slash_talent)
  # The Demon Hunter's Chaos Strike deals s3 additional damage.
  SpellAddTargetDebuff(dark_slash dark_slash=1)
Define(death_sweep 210152)
# Strike all nearby enemies for 3*210153sw2+210155sw2 Physical damage, and increase your Dodge chance by s2 for d.
  SpellInfo(death_sweep fury=35 cd=9 duration=1)
  # Dodge chance increased by s3.
  SpellAddBuff(death_sweep death_sweep=1)
Define(demon_spikes 203819)
# @spelldesc203720
  SpellInfo(demon_spikes duration=6 gcd=0 offgcd=1)
  # Armor increased by W2*AGI/100.rnParry chance increased by w1.
  SpellAddBuff(demon_spikes demon_spikes=1)
Define(demons_bite 162243)
# Quickly attack for s2 Physical damage.rnrn|cFFFFFFFFGenerates m3 to ?a258876[M3+258876s1][M3] Fury.|r
  SpellInfo(demons_bite fury=-25)
Define(disrupt 183782)
  SpellInfo(disrupt channel=0 gcd=0 offgcd=1)
Define(eye_beam 205231)
# Fires an eye beam that deals s1 Shadow damage.
  SpellInfo(eye_beam gcd=0 offgcd=1)
Define(fel_barrage 258925)
# Unleash a torrent of Fel energy over d, inflicting ((d/t1)+1)*258926s1 Chaos damage to all enemies within 258926A1 yds.
  SpellInfo(fel_barrage cd=60 duration=3 channel=3 talent=fel_barrage_talent tick=0.25)
  # Unleashing Fel.
  SpellAddBuff(fel_barrage fel_barrage=1)
Define(fel_devastation 212106)
# @spelldesc212084
  SpellInfo(fel_devastation gcd=0 offgcd=1)
Define(fel_eruption 211881)
# Impales the target for s1 Chaos damage and stuns them for d.
  SpellInfo(fel_eruption fury=10 pain=10 cd=30 duration=4 talent=fel_eruption_talent)
  # Stunned.
  SpellAddTargetDebuff(fel_eruption fel_eruption=1)
Define(fel_rush 195072)
# Rush forward, incinerating anything in your path for 192611s1 Chaos damage.
  SpellInfo(fel_rush cd=1 cd=10 gcd=0.25)
Define(felblade 213243)
# @spelldesc232893
  SpellInfo(felblade gcd=0 offgcd=1 pain=-30 fury=-40)
Define(fiery_brand 204021)
# Brand an enemy with a demonic symbol, instantly dealing sw2 Fire damage and reducing the damage they deal to you by s1 for 207744d.
  SpellInfo(fiery_brand cd=60 replace=chaos_nova)
Define(fracture 263642)
# Rapidly slash your target for 225919sw1+225921sw1 Physical damage, and shatter s1 Lesser Soul Fragments from them.rnrn|cFFFFFFFFGenerates s4/10 Pain.|r
  SpellInfo(fracture cd=4.5 talent=fracture_talent pain=-25)
Define(immolation_aura 258920)
# Engulf yourself in flames, instantly causing 258921s1 Fire damage to enemies within 258921A1 yards and radiating 258922s1 Fire damage every sec.  Lasts d.rnrn|cFFFFFFFFGenerates s3+(258922s2*d) Fury over d.|r
  SpellInfo(immolation_aura cd=30 duration=10 talent=immolation_aura_talent fury=-10 tick=1)
Define(imprison 217832)
# Imprisons a demon, beast, or humanoid, incapacitating them for d. Damage will cancel the effect. Limit 1.
  SpellInfo(imprison cd=45 duration=60)
  # Incapacitated.
  SpellAddTargetDebuff(imprison imprison=1)
Define(infernal_strike 189112)
# @spelldesc189110
  SpellInfo(infernal_strike gcd=0 offgcd=1)
Define(nemesis 208605)
# Increases damage against Humanoids by s1.
  SpellInfo(nemesis duration=60 gcd=0 offgcd=1)
  # Damage against Humanoids increased by s1.
  SpellAddBuff(nemesis nemesis=1)
Define(prepared_buff 203650)
# @spelldesc203551
  SpellInfo(prepared_buff duration=10 gcd=0 offgcd=1)
  # Generating m1/5 Fury every sec.
  SpellAddBuff(prepared_buff prepared_buff=1)
Define(shear 203783)
# Shear shatters the target's soul, leaving a Lesser Soul Fragment behind for 204255d.rnrnConsuming a Lesser Soul Fragment heals you for s2 of all damage taken in the last s4 sec, minimum s3 of maximum health.
  SpellInfo(shear channel=0 gcd=0 offgcd=1)
  SpellAddBuff(shear shear=1)
Define(sigil_of_flame 204596)
# Place a Sigil of Flame at the target location that activates after d.rnrnDeals 204598s1 Fire damage, and an additional 204598o3 Fire damage over 204598d, to all enemies affected by the sigil.
  SpellInfo(sigil_of_flame cd=30 duration=2 replace=blade_dance)
Define(soul_cleave 228477)
# Viciously strike all enemies in front of you for 228478s1 Physical damage and heal yourself for s4.rnrnConsumes up to s3 Soul Fragments within s1 yds.
  SpellInfo(soul_cleave pain=30)
Define(spirit_bomb 247455)
# @spelldesc247454
  SpellInfo(spirit_bomb channel=0 gcd=0 offgcd=1)
Define(steelskin_potion 252336)
# Chance to create multiple potions.
  SpellInfo(steelskin_potion gcd=0 offgcd=1)
Define(vengeful_retreat 198793)
# Remove all snares and vault away. Nearby enemies take 198813s2 Physical damage and have their movement speed reduced by 198813s1 for 198813d.?a203551[rnrn|cFFFFFFFFGenerates (203650s1/5)*203650d Fury over 203650d if you damage an enemy.|r][]
  SpellInfo(vengeful_retreat cd=25 duration=1 channel=1 gcd=0.5)
  SpellAddBuff(vengeful_retreat vengeful_retreat=1)
Define(blind_fury_talent 1)
# Eye Beam generates s3/5 Fury every sec. and its duration is increased by s1.
Define(dark_slash_talent 15)
# Slash an enemy for s2 Physical damage, and increase the damage your Chaos Strike deals to them by s3 for d.
Define(demon_blades_talent 5)
# Your auto attacks have a s1 chance to deal additional Shadow damage and generate Fury.
Define(demonic_talent 19)
# Eye Beam causes you to enter demon form for 8 sec after it finishes dealing damage.
Define(fel_mastery_talent 8)
# Increases Fel Rush damage by s1.
Define(first_blood_talent 14)
# Reduces the Fury cost of Blade Dance by s2 and increases its damage to <firstbloodDmg> against the first target struck.
Define(momentum_talent 20)
# Fel Rush increases your damage done by 208628s1 for 208628d.rnrnVengeful Retreat's cooldown is reduced by s1/-1000 sec, and it generates (203650s1/5)*203650d Fury over 203650d if it damages at least one enemy.
Define(nemesis_talent 21)
# Increases damage you inflict against the target by s1 for d. rnrnWhen the target is slain, you will inflict s1 additional damage against all creature types matching the original target (Humanoid, Dragonkin, etc.) for the remaining duration.
Define(trail_of_ruin_talent 7)
# The final slash of Blade Dance inflicts an additional 258883o1 Chaos damage over 258883d.
Define(charred_flesh_talent 8)
# Fiery Brand increases the Fire damage your abilities deal to the target by s1.
Define(spirit_bomb_talent 17)
# Consume up to s2 Soul Fragments within s1 yds and then explode, afflicting nearby enemies with Frailty for 247456d and damaging them for 247455s1 Fire per fragment.rnrnYou heal for 247456s1 of all damage you deal to enemies with Frailty.
Define(fel_barrage_talent 9)
# Unleash a torrent of Fel energy over d, inflicting ((d/t1)+1)*258926s1 Chaos damage to all enemies within 258926A1 yds.
Define(fel_eruption_talent 18)
# Impales the target for s1 Chaos damage and stuns them for d.
Define(fracture_talent 12)
# Rapidly slash your target for 225919sw1+225921sw1 Physical damage, and shatter s1 Lesser Soul Fragments from them.rnrn|cFFFFFFFFGenerates s4/10 Pain.|r
Define(immolation_aura_talent 6)
# Engulf yourself in flames, instantly causing 258921s1 Fire damage to enemies within 258921A1 yards and radiating 258922s1 Fire damage every sec.  Lasts d.rnrn|cFFFFFFFFGenerates s3+(258922s2*d) Fury over d.|r
    ]]
    code = code .. [[

ItemRequire(shifting_cosmic_sliver unusable 1=oncooldown,!metamorphosis_veng,buff,!metamorphosis_veng_buff)	

Define(annihilation 201427)
	

	SpellInfo(blade_dance replace death_sweep=buff,metamorphosis_havoc_buff)
	SpellInfo(blade_dance fury=35 cd=9 cd_haste=melee)
	SpellInfo(blade_dance add_fury=-20 talent=first_blood_talent)
	SpellAddTargetDebuff(blade_dance blade_dance_debuff)
Define(blade_dance_debuff 258883)
	SpellInfo(blade_dance_debuff duration=4 tick=1)
Define(blur 198589)
	SpellInfo(blur cd=60 gcd=0 offgcd=1)
Define(chaos_brand_debuff 1490)

	SpellInfo(chaos_nova cd=60 fury=30)
	SpellInfo(chaos_nova cd=40 fury=0 talent=unleashed_power_talent)
	SpellAddBuff(chaos_nova chaos_nova_debuff=1)
Define(chaos_nova_debuff 179057)
	SpellInfo(chaos_nova_debuff duration=2)
Define(chaos_strike 162794)
	SpellInfo(chaos_strike replace annihilation=buff,metamorphosis_havoc_buff)
	SpellInfo(chaos_strike fury=40)

	SpellInfo(consume_magic cd=10)

	SpellInfo(dark_slash cd=20)
	SpellAddTargetDebuff(dark_slash dark_slash_debuff=1)
Define(dark_slash_debuff 258860)
	SpellInfo(dark_slash_debuff duration=8)
Define(darkness 196718)
	SpellInfo(darkness cd=180)

	SpellInfo(death_sweep fury=35 cd=9 cd_haste=melee)
	SpellInfo(death_sweep add_fury=-20 talent=first_blood_talent)
Define(demon_spikes 203720)
	SpellInfo(demon_spikes cd_haste=melee haste=melee specialization=vengeance cd=20 gcd=0 offgcd=1 charges=2)
	SpellAddBuff(demon_spikes demon_spikes_buff=1)
Define(demon_spikes_buff 203819)
	SpellInfo(demon_spikes_buff duration=6)

	SpellInfo(demons_bite fury=-20)
	SpellInfo(demons_bite unusable=1 talent=demon_blades_talent)
Define(disrupt 183752)
	SpellInfo(disrupt cd=15 gcd=0 interrupt=1 offgcd=1)
Define(eye_beam 198013)
	SpellInfo(eye_beam fury=30 cd=30 channel=1.8)
	SpellInfo(eye_beam channel=2.8 talent=blind_fury_talent)
Define(extended_by_demonic_buff -22547) # OvaleDemonHunterDemonic
Define(feast_of_souls_buff 207693)
	SpellInfo(feast_of_souls_buff duration=6)

	SpellInfo(fel_barrage cd=60 channel=3)
Define(fel_devastation 212084)
	SpellInfo(fel_devastation cd=60 channel=2)

	SpellInfo(fel_eruption cd=30 interrupt=1)
	SpellInfo(fel_eruption fury=10 specialization=havoc)

	SpellInfo(fel_rush cd=10 charges=2)
	SpellAddBuff(fel_rush momentum_buff=1 talent=momentum_talent specialization=havoc)
Define(felblade 232893)
	SpellInfo(felblade cd=15 cd_haste=melee fury=-40 pain=-30)

	SpellInfo(fiery_brand cd=60 gcd=0)
	SpellAddTargetDebuff(fiery_brand fiery_brand_debuff=1)
Define(fiery_brand_debuff 207771)
	SpellInfo(fiery_brand_debuff duration=8)
	
	SpellInfo(fracture pain=25 charges=2 cd=4.5 cd_haste=melee)
Define(frailty_debuff 247456)
	SpellInfo(frailty_debuff duration=20)
Define(immolation_aura 178740)
	SpellInfo(immolation_aura cd=15 cd_haste=melee)
	SpellAddBuff(immolation_aura immolation_aura_buff=1)
Define(immolation_aura_buff 178740)
	SpellInfo(immolation_aura_buff duration=6)
Define(immolation_aura_havoc 258920)
	SpellInfo(immolation_aura_havoc cd=30 cd_haste=melee)
	SpellAddBuff(immolation_aura_havoc immolation_aura_havoc_buff=1)
Define(immolation_aura_havoc_buff 258920)
	SpellInfo(immolation_aura_buff duration=10)

	SpellInfo(imprison cd=45 interrupt=1)
Define(infernal_strike 189110)
	SpellInfo(infernal_strike cd=20 charges=2 offgcd=1)
	SpellInfo(infernal_strike add_cd=8 talent=abyssal_strike_talent)
Define(metamorphosis_havoc 191427)
	SpellInfo(metamorphosis_havoc cd=240)
	SpellAddBuff(metamorphosis_havoc metamorphosis_havoc_buff=1)
Define(metamorphosis_havoc_buff 162264)
	SpellInfo(metamorphosis_havoc_buff duration=30)
Define(metamorphosis_veng 187827)
	SpellInfo(metamorphosis_veng cd=180 gcd=0 offgcd=1)
	SpellAddBuff(metamorphosis_veng metamorphosis_veng_buff=1)
Define(metamorphosis_veng_buff 187827)
	SpellInfo(metamorphosis_veng_buff duration=15)
Define(momentum_buff 208628)
	SpellInfo(momentum_buff duration=6)
Define(nemesis 206491)
	SpellInfo(nemesis cd=120)
	SpellAddTargetDebuff(nemesis nemesis_debuff=1)
Define(nemesis_debuff 206491)
	SpellInfo(nemesis_debuff duration=60)
Define(netherwalk 196555)
	SpellInfo(netherwalk cd=120)
	SpellAddBuff(netherwalk netherwalk_buff=1)
Define(netherwalk_buff 196555)
	SpellInfo(netherwalk_buff duration=5)
Define(pick_up_fragment 210788)

	SpellInfo(prepared_buff duration=10)
Define(razor_spikes_debuff 210003)
	SpellInfo(razor_spikes_debuff duration=6)
Define(shear 203782)
	SpellInfo(shear pain=-10)
	SpellInfo(shear replace=fracture talent=fracture_talent)
Define(sigil_of_chains 202138)
	SpellInfo(sigil_of_chains cd=90)

	SpellInfo(sigil_of_flame cd=30)
	SpellInfo(sigil_of_flame cd=24 talent=quickened_sigils_talent)
Define(sigil_of_flame_debuff 204598)
	SpellInfo(sigil_of_flame_debuff duration=6)
	SpellInfo(sigil_of_flame_debuff duration=8 talent=concentrated_sigils_talent)
Define(sigil_of_misery 207684)
	SpellInfo(sigil_of_misery cd=90)
	SpellInfo(sigil_of_misery cd=72 talent=quickened_sigils_talent)
Define(sigil_of_misery_debuff 207685)
	SpellInfo(sigil_of_misery_debuff duration=20)
	SpellInfo(sigil_of_misery_debuff duration=22 talent=concentrated_sigils_talent)
Define(sigil_of_silence 202137)
	SpellInfo(sigil_of_silence cd=60)
	SpellInfo(sigil_of_silence cd=48 talent=quickened_sigils_talent)
Define(sigil_of_silence_debuff 204490)
	SpellInfo(sigil_of_silence_debuff duration=6)
	SpellInfo(sigil_of_silence_debuff duration=8 talent=concentrated_sigils_talent)
Define(soul_barrier 263648)
	SpellInfo(soul_barrier cd=30)
	SpellAddBuff(soul_barrier soul_fragments=0)
Define(soul_barrier_buff 263648)
	SpellInfo(soul_barrier_buff duration=12)

	
	SpellAddBuff(soul_cleave soul_fragments=-2)
	SpellAddBuff(soul_cleave feast_of_souls_buff=1 talent=feast_of_souls_talent)
Define(soul_fragments 203981)
	SpellInfo(soul_fragments duration=20)		
Define(spectral_sight 188501)
	SpellInfo(spectral_sight cd=30)
Define(spirit_bomb 247454)
	SpellRequire(spirit_bomb unusable 1=buff,!soul_fragments)
	SpellAddBuff(spirit_bomb soul_fragments=-5)
	SpellAddTargetDebuff(spirit_bomb frailty_debuff=1)
Define(throw_glaive_veng 204157)
	SpellInfo(throw_glaive_veng cd=3 cd_haste=melee)
Define(throw_glaive_havoc 185123)
	SpellInfo(throw_glaive_havoc charges=1 cd=9 cd_haste=melee)
	SpellInfo(throw_glaive_havoc charges=2 talent=master_of_the_glaive_talent)
	SpellAddTargetDebuff(throw_glaive_havoc throw_glaive_havoc_debuff=1)
Define(throw_glaive_havoc_debuff 213405)
	SpellInfo(throw_glaive_havoc_debuff duration=6)

	SpellInfo(vengeful_retreat cd=20)
	
	SpellAddTargetDebuff(vengeful_retreat vengeful_retreat_debuff=1)
Define(vengeful_retreat_debuff 198813)
	SpellInfo(vengeful_retreat_debuff duration=3)

#items
Define(oblivions_embrace 151799)
	SpellInfo(demon_spikes charges=3 if_equipped=oblivions_embrace)

# Tier set
SpellInfo(demons_bite fury_percent=110 itemset=T19 itemcount=2)
SpellInfo(felblade fury_percent=110 itemset=T19 itemcount=2)

#Talents
Define(abyssal_strike_talent 1)
Define(agonizing_flames_talent 2)

Define(burning_alive_talent 6)

Define(concentrated_sigils_talent 13)
Define(cycle_of_hatred_talent 13)


Define(demonic_appetite_talent 2)

Define(desperate_instincts_talent 11)
Define(fallout_talent 5)
Define(feast_of_souls_talent 4)
Define(feed_the_demon_talent 11)

Define(fel_devastation_talent 18)


Define(felblade_talent_havoc 3)
Define(felblade_talent 9)

Define(flame_crash_talent 7)

Define(gluttony_talent 16)

Define(insatiable_hunger_talent 4)
Define(last_resort_talent 19)
Define(master_of_the_glaive_talent 17)


Define(netherwalk_talent 12)
Define(quickened_sigils_talent 14)
Define(razor_spikes_talent 3)
Define(sigil_of_chains_talent 15)
Define(soul_barrier_talent 21)
Define(soul_rending_talent 10)


Define(unleashed_power_talent 16)
Define(void_reaver_talent 20)

# Tags
SpellInfo(dark_slash tag=main)
SpellInfo(demon_spikes tag=shortcd)
SpellInfo(fel_barrage tag=main)
SpellInfo(fel_eruption tag=main)
SpellInfo(fel_rush tag=main)
SpellInfo(felblade tag=main)
SpellInfo(sigil_of_flame tag=main)
SpellInfo(vengeful_retreat tag=main)

]]
    OvaleScripts:RegisterScript("DEMONHUNTER", nil, name, desc, code, "include")
end