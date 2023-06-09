local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end
function onPlayerEndTrade(cid)              npcHandler:onPlayerEndTrade(cid)            end
function onPlayerCloseChannel(cid)          npcHandler:onPlayerCloseChannel(cid)        end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
	end
	return true
end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'empty potion flask'}, 7636, 100, 'empty potion flask')
shopModule:addBuyableItem({'flask of rust remover'}, 9930, 50, 'flask of rust remover')
shopModule:addBuyableItem({'closed trap'}, 2578, 280, 'closed trap')
shopModule:addBuyableItem({'empty flower pot'}, 7655, 250, 'empty flower pot')
shopModule:addBuyableItem({'fishing rod'}, 2580, 150, 'fishing rod')
shopModule:addBuyableItem({'backpack'}, 1988, 20, 'backpack')
shopModule:addBuyableItem({'bag'}, 1987, 5, 'bag')
shopModule:addBuyableItem({'machete'}, 2420, 35, 'machete')
shopModule:addBuyableItem({'pick'}, 2553, 100, 'pick')
shopModule:addBuyableItem({'rope'}, 2120, 50, 'rope')
shopModule:addBuyableItem({'scythe'}, 2550, 50, 'scythe')
shopModule:addBuyableItem({'shovel'}, 2554, 50, 'shovel')
shopModule:addBuyableItem({'vial of oil'}, 2006, 20, 11, 'vial of oil')
shopModule:addBuyableItem({'worm'}, 3976, 1, 'worm')
shopModule:addBuyableItem({'empty potion flask'}, 7636, 100, 'empty potion flask')
shopModule:addBuyableItem({'avalanche rune'}, 2274, 45, 'avalanche rune')
shopModule:addBuyableItem({'animate dead rune'}, 2316, 375, 'animate dead rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 'blank rune')
shopModule:addBuyableItem({'chameleon rune'}, 2291, 210, 'chameleon rune')
shopModule:addBuyableItem({'convince creature rune'}, 2290, 80, 'convince creature rune')
shopModule:addBuyableItem({'cure poison rune'}, 2266, 65, 'cure poison rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 15, 'destroy field rune')
shopModule:addBuyableItem({'disintegrate rune'}, 2310, 26, 'disintegrate rune')
shopModule:addBuyableItem({'energy bomb rune'}, 2262, 162, 'energy bomb rune')
shopModule:addBuyableItem({'energy field rune'}, 2277, 38, 'energy field rune')
shopModule:addBuyableItem({'energy wall rune'}, 2279, 85, 'energy wall rune')
shopModule:addBuyableItem({'explosion rune'}, 2313, 31, 'explosion rune')
shopModule:addBuyableItem({'fireball rune'}, 2302, 30, 'fireball rune')
shopModule:addBuyableItem({'fire bomb rune'}, 2305, 117, 'fire bomb rune')
shopModule:addBuyableItem({'fire field rune'}, 2301, 28, 'fire field rune')
shopModule:addBuyableItem({'fire wall rune'}, 2303, 61, 'fire wall rune')
shopModule:addBuyableItem({'great fireball rune'}, 2304, 45, 'great fireball rune')
shopModule:addBuyableItem({'great health potion'}, 7591, 190, 'great health potion')
shopModule:addBuyableItem({'great mana potion'}, 7590, 120, 'great mana potion')
shopModule:addBuyableItem({'great spirit potion'}, 8472, 190, 'great spirit potion')
shopModule:addBuyableItem({'health potion'}, 7618, 45, 'health potion')
shopModule:addBuyableItem({'heavy magic missile rune'}, 2311, 12, 'heavy magic missile rune')
shopModule:addBuyableItem({'holy missile rune'}, 2295, 16, 'holy missile rune')
shopModule:addBuyableItem({'great holy rune'}, 2297, 45, 'great holy rune')
shopModule:addBuyableItem({'icicle rune'}, 2271, 30, 'icicle rune')
shopModule:addBuyableItem({'intense healing rune'}, 2265, 95, 'intense healing rune')
shopModule:addBuyableItem({'light magic missile rune'}, 2287, 4, 'light magic missile rune')
shopModule:addBuyableItem({'magic wall rune'}, 2293, 116, 'magic wall rune')
-- shopModule:addBuyableItem({'mana rune'}, 2270, 210, 'mana rune')
shopModule:addBuyableItem({'paralyze rune'}, 2278, 700, 'paralyze rune')
shopModule:addBuyableItem({'mana potion'}, 7620, 50, 'mana potion')
shopModule:addBuyableItem({'moonlight rod'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'poison bomb rune'}, 2286, 85, 'poison bomb rune')
shopModule:addBuyableItem({'poison field rune'}, 2285, 21, 'poison field rune')
shopModule:addBuyableItem({'poison wall rune'}, 2289, 52, 'poison wall rune')
shopModule:addBuyableItem({'snakebite rod'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'spellbook'}, 2175, 150, 'spellbook')
shopModule:addBuyableItem({'stalagmite rune'}, 2292, 12, 'stalagmite rune')
shopModule:addBuyableItem({'soulfire rune'}, 2308, 46, 'soulfire rune')
shopModule:addBuyableItem({'stone shower rune'}, 2288, 37, 'stone shower rune')
shopModule:addBuyableItem({'strong health potion'}, 7588, 100, 'strong health potion')
shopModule:addBuyableItem({'strong mana potion'}, 7589, 80, 'strong mana potion')
shopModule:addBuyableItem({'sudden death rune'}, 2268, 108, 'sudden death rune')
shopModule:addBuyableItem({'terra rod'}, 2181, 10000, 'terra rod')
shopModule:addBuyableItem({'thunderstorm rune'}, 2315, 37, 'thunderstorm rune')
shopModule:addBuyableItem({'ultimate healing rune'}, 2273, 175, 'ultimate healing rune')
shopModule:addBuyableItem({'ultimate health potion'}, 8473, 310, 'ultimate health potion')
shopModule:addBuyableItem({'wand of cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of decay'}, 2188, 5000, 'wand of decay')
shopModule:addBuyableItem({'wand of dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wild growth rune'}, 2269, 160, 'wild growth rune')
shopModule:addBuyableItem({'wand of draconia'}, 8921, 7500, 'wand of draconia')
shopModule:addBuyableItem({'wand of inferno'}, 2187, 15000, 'wand of inferno')
shopModule:addBuyableItem({'wand of starstorm'}, 8920, 18000, 'wand of starstorm')
shopModule:addBuyableItem({'wand of voodoo'}, 8922, 22000, 'wand of voodoo')
shopModule:addBuyableItem({'northwind rod'}, 8911, 7500, 'northwind rod')
shopModule:addBuyableItem({'hailstorm rod'}, 2183, 15000, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod'}, 8912, 18000, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod'}, 8910, 22000, 'underworld rod')

shopModule:addSellableItem({'machete'}, 2420, 6, 'machete')
shopModule:addSellableItem({'pick'}, 2553, 15, 'pick')
shopModule:addSellableItem({'rope'}, 2120, 15, 'rope')
shopModule:addSellableItem({'shovel'}, 2554, 8, 'shovel')
shopModule:addSellableItem({'vial'}, 2006, 5, 'vial')
shopModule:addSellableItem({'empty potion flask small'}, 7636, 5, 'empty potion flask small')
shopModule:addSellableItem({'empty potion flask medium'}, 7634, 5, 'empty potion flask medium')
shopModule:addSellableItem({'empty potion flask large'}, 7635, 5, 'empty potion flask large')
shopModule:addSellableItem({'spellwand'}, 7735, 299, 'spellwand')
shopModule:addSellableItem({'wand of vortex'}, 2190, 100, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 200, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay'}, 2188, 1000, 'wand of decay')
shopModule:addSellableItem({'wand of draconia'}, 8921, 1500, 'wand of draconia')
shopModule:addSellableItem({'wand of cosmic energy'}, 2189, 2000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno'}, 2187, 3000, 'wand of inferno')
shopModule:addSellableItem({'wand of starstorm'}, 8920, 3600, 'wand of starstorm')
shopModule:addSellableItem({'wand of voodoo'}, 8922, 4400, 'wand of voodoo')
shopModule:addSellableItem({'snakebite rod'}, 2182, 100, 'snakebite rod')
shopModule:addSellableItem({'moonlight rod'}, 2186, 200, 'moonlight rod')
shopModule:addSellableItem({'necrotic rod'}, 2185, 1000, 'necrotic rod')
shopModule:addSellableItem({'northwind rod'}, 8911, 1500, 'northwind rod')
shopModule:addSellableItem({'terra rod'}, 2181, 2000, 'terra rod')
shopModule:addSellableItem({'hailstorm rod'}, 2183, 3000, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod'}, 8912, 3600, 'springsprout rod')
shopModule:addSellableItem({'underworld rod'}, 8910, 4400, 'underworld rod')

npcHandler:setMessage(MESSAGE_GREET, "Ol�, |PLAYERNAME|. Eu vendo equipamentos de todos os tipos.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Volte logo!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Volte logo!") 
npcHandler:setMessage(MESSAGE_SENDTRADE, "N�o, desculpe, oi? negociar? Ok!")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())