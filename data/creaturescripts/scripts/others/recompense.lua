local table =
{
	[12] = {type = "bank", id = 2000, msg = "You have received 2k gold in your bank for advancing to Level 12."},
	[40] = {type = "bank", id = 10000, msg = "You have received 10k gold in your bank for advancing to Level 40."},
	[50] = {type = "bank", id = 10000, msg = "You have received 10k gold in your bank for advancing to Level 50."},
	[75] = {type = "bank", id = 10000, msg = "You have received 10k gold in your bank for advancing to Level 75."},
	[100] = {type = "bank", id = 40000, msg = "You have received 40k gold in your bank for advancing to Level 100."},
	[200] = {type = "bank", id = 40000, msg = "You have received 80k gold in your bank for advancing to Level 200."},
}

local storage = 99963

function onAdvance(player, skill, oldLevel, newLevel)

	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	for level, _ in pairs(table) do
		if newLevel >= level and player:getStorageValue(storage) < level then
			if table[level].type == "item" then
				player:addItem(table[level].id, 1)
			elseif table[level].type == "bank" then
				player:setBankBalance(player:getBankBalance() + table[level].id)
			elseif table[level].type == "coins" then
				player:addTibiaCoins(table[level].id)
			else
				return false
			end

			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table[level].msg)
			player:setStorageValue(storage, level)
		end
	end

	player:save()

	return true
end
