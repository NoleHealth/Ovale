local __exports = LibStub:NewLibrary("ovale/scripts/ovale_druid_spells", 80300)
if not __exports then return end
__exports.registerDruidSpells = function(OvaleScripts)
    local name = "ovale_druid_spells"
    local desc = "[9.0] Ovale: Druid baseline spells"
    local code = [[Define(bear_form 5487)
# Shapeshift into Bear Form, increasing armor by m4 and Stamina by 1178s2, granting protection from Polymorph effects, and increasing threat generation.rnrnThe act of shapeshifting frees you from movement impairing effects.
# Rank 2: Bear Form gives an additional s1 Stamina.rn
  SpellInfo(bear_form)
  # Armor increased by w4.rnStamina increased by 1178s2.rnImmune to Polymorph effects.
  SpellAddBuff(bear_form bear_form=1)
  # Armor increased by w4.rnStamina increased by 1178s2.rnImmune to Polymorph effects.
  SpellAddTargetDebuff(bear_form bear_form=1)
Define(cat_form 768)
# Shapeshift into Cat Form, increasing auto-attack damage by (25 of Spell Power), movement speed by 113636s1, granting protection from Polymorph effects, and reducing falling damage.rnrnThe act of shapeshifting frees you from movement impairing effects.
  SpellInfo(cat_form)
  # Autoattack damage increased by w4.rnImmune to Polymorph effects.rnMovement speed increased by 113636s1 and falling damage reduced.
  SpellAddBuff(cat_form cat_form=1)
Define(incapacitating_roar 99)
# Shift into Bear Form and invoke the spirit of Ursol to let loose a deafening roar, incapacitating all enemies within A1 yards for 3 seconds. Damage will cancel the effect.
  SpellInfo(incapacitating_roar cd=30 duration=3)
  # Incapacitated.
  SpellAddTargetDebuff(incapacitating_roar incapacitating_roar=1)
Define(maim 22570)
# Finishing move that causes Physical damage and stuns the target. Damage and duration increased per combo point:rnrn   1 point  : s2*1 damage, 1 secrn   2 points: s2*2 damage, 2 secrn   3 points: s2*3 damage, 3 secrn   4 points: s2*4 damage, 4 secrn   5 points: s2*5 damage, 5 sec
  SpellInfo(maim energy=30 combopoints=1 cd=20 gcd=1)
  # Stunned.
  SpellAddBuff(maim maim=1)
Define(mangle 33917)
# Mangle the target for s2 Physical damage.?a231064[ Deals s3 additional damage against bleeding targets.][]rnrn|cFFFFFFFFGenerates m4/10 Rage.|r
# Rank 2: Mangle deals 33917s3 additional damage against bleeding targets.
  SpellInfo(mangle cd=6 rage=-10)
Define(mighty_bash 5211)
# Invokes the spirit of Ursoc to stun the target for 4 seconds. Usable in all shapeshift forms.
  SpellInfo(mighty_bash cd=60 duration=4 talent=mighty_bash_talent)
  # Stunned.
  SpellAddTargetDebuff(mighty_bash mighty_bash=1)
Define(moonkin_form 24858)
# Shapeshift into ?s114301[Astral Form][Moonkin Form], increasing the damage of your spells by s9 and your armor by m3, and granting protection from Polymorph effects.?a231042[rnrnWhile in this form, single-target attacks against you have a h chance to make your next Starfire instant.][]rnrnThe act of shapeshifting frees you from movement impairing effects.
# Rank 2: While in Moonkin Form, single-target attacks against you have a s1 chance make your next Starfire instant.rn
  SpellInfo(moonkin_form)
  # Spell damage increased by s9.rnImmune to Polymorph effects.?w3>0[rnArmor increased by w3.][]
  SpellAddBuff(moonkin_form moonkin_form=1)
Define(shred_0 231057)
# While stealthed, Shred deals 5221s3 increased damage, and has double the chance to critically strike.
  SpellInfo(shred_0 channel=0 gcd=0 offgcd=1)
  SpellAddBuff(shred_0 shred_0=1)
Define(shred_1 231063)
# Shred deals 5221s4 increased damage against bleeding targets.
  SpellInfo(shred_1 channel=0 gcd=0 offgcd=1)
  SpellAddBuff(shred_1 shred_1=1)
Define(shred_2 343232)
# While stealthed, Shred generates s1 additional combo lpoint:points;.
  SpellInfo(shred_2 channel=0 gcd=0 offgcd=1)
  SpellAddBuff(shred_2 shred_2=1)
Define(skull_bash 106839)
# You charge and bash the target's skull, interrupting spellcasting and preventing any spell in that school from being cast for 4 seconds.
  SpellInfo(skull_bash cd=15 gcd=0 offgcd=1)
Define(solar_beam 78675)
# Summons a beam of solar light over an enemy target's location, interrupting the target and silencing all enemies within the beam.  Lasts 8 seconds.
  SpellInfo(solar_beam cd=60 duration=8 gcd=0 offgcd=1)
  # Silenced.
  SpellAddBuff(solar_beam solar_beam=1)

Define(swipe 213764)
# Swipe nearby enemies, inflicting Physical damage. Damage varies by shapeshift form.
# Rank 2: Swipe deals 106785s2 increased damage against bleeding targets.
  SpellInfo(swipe gcd=1)
Define(typhoon 132469)
# Blasts targets within 61391a1 yards in front of you with a violent Typhoon, knocking them back and dazing them for 6 seconds. Usable in all shapeshift forms.
  SpellInfo(typhoon cd=30)

Define(war_stomp 20549)
# Stuns up to i enemies within A1 yds for 2 seconds.
  SpellInfo(war_stomp cd=90 duration=2 gcd=0 offgcd=1)
  # Stunned.
  SpellAddTargetDebuff(war_stomp war_stomp=1)
Define(wild_charge_0 16979)
# Charge to an enemy, immobilizing them for 4 seconds.
  SpellInfo(wild_charge_0 cd=15 gcd=0 offgcd=1)
  # Immobilized.
  SpellAddBuff(wild_charge_0 wild_charge_0=1)

Define(wild_charge_1 49376)
# Leap behind an enemy, dazing them for 3 seconds.
  SpellInfo(wild_charge_1 cd=15 channel=0 gcd=0 offgcd=1)
  # Dazed.
  SpellAddBuff(wild_charge_1 wild_charge_1=1)

Define(wild_charge_2 102383)
# Bound backward away from your enemies.
  SpellInfo(wild_charge_2 cd=15 gcd=0 offgcd=1)
Define(wild_charge_3 102417)
# Leap forward s2 yards.
  SpellInfo(wild_charge_3 cd=15 channel=0 gcd=0 offgcd=1)
Define(wrath 190984)
# Hurl a ball of energy at the target, dealing (60 of Spell Power) Nature damage.?a197911[rnrn|cFFFFFFFFGenerates m2/10 Astral Power.|r][]
  SpellInfo(wrath lunarpower=0)
SpellList(shred shred_0 shred_1 shred_2)
SpellList(wild_charge wild_charge_0 wild_charge_1 wild_charge_2 wild_charge_3)
Define(mighty_bash_talent 10) #21778
# Invokes the spirit of Ursoc to stun the target for 4 seconds. Usable in all shapeshift forms.
    ]]
    OvaleScripts:RegisterScript("DRUID", nil, name, desc, code, "include")
end
