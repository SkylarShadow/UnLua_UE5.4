---@class UAbilitySystemTestAttributeSet : UAttributeSet
---@field public MaxHealth number @NOTE ON MUTABLE: This is only done so that UAbilitySystemTestAttributeSet can be initialized directly in GameplayEffectsTest.cpp without doing a const_cast in 100+ places. Mutable is not required and should never be used on normal attribute sets.    // You can't make a GameplayEffect modify Health Directly (go through)
---@field public Health number @You can't make a GameplayEffect modify Health Directly (go through)
---@field public Mana number
---@field public MaxMana number
---@field public Damage number @This Damage is just used for applying negative health mods. Its not a 'persistent' attribute. // You can't make a GameplayEffect 'powered' by Damage (Its transient)
---@field public SpellDamage number @This Attribute is the actual spell damage for this actor. It will power spell based GameplayEffects
---@field public PhysicalDamage number @This Attribute is the actual physical damage for this actor. It will power physical based GameplayEffects
---@field public CritChance number
---@field public CritMultiplier number
---@field public ArmorDamageReduction number
---@field public DodgeChance number
---@field public LifeSteal number
---@field public Strength number
---@field public StackingAttribute1 number
---@field public StackingAttribute2 number
---@field public NoStackAttribute number
local UAbilitySystemTestAttributeSet = {}

