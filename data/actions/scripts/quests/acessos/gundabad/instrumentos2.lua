function onUse(cid, item, fromPosition, itemEx, toPosition)
        if(item.actionid == 58761 and getPlayerStorageValue(cid, 58750) == 8 and getPlayerStorageValue(cid, 58761) == 1) then
				setPlayerStorageValue(cid, 58761, 2)
				doCreatureSay(cid, "Um livro encontrado.", TALKTYPE_ORANGE_1)
				elseif getPlayerStorageValue(cid, 58761) >= 2 then
				doCreatureSay(cid, "Voc� j� encontrou esse livro.", TALKTYPE_ORANGE_1)
				elseif getPlayerStorageValue(cid, 58750) < 8 then
				doCreatureSay(cid, "Voc� precisa iniciar a miss�o com o monge Andry.", TALKTYPE_ORANGE_1)
		end
	return TRUE
end