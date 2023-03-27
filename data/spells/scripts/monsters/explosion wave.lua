local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONHIT)

local EXPLOSION_AREA = {
{1, 1, 1},
{1, 1, 1},
{0, 1, 0},
{0, 3, 0}
}

local area = createCombatArea(EXPLOSION_AREA)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
