

function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if player:getAccountType() < ACCOUNT_TYPE_GOD then
		return false
	end
	
	local split = param:split(",")
	if split[1] == nil then
		player:sendCancelMessage("Insufficient parameters.")
		return false
	end
	
	local target = Player(split[1])
	if target == nil then
		player:sendCancelMessage("A player with that name is not online.")
		
		return false
	end
	
	if split[2] == nil then
		targetname = target:getDescription():split(".")[1]
		player:sendTextMessage(MESSAGE_EVENT_DEFAULT, string.format("%s has %d tibia coins", targetname, target:getTibiaCoins()))
		
		return true
	end
	
	split[2] = split[2]:gsub("^%s*(.-)$", "%1")
	count = tonumber(split[2])
	
	if split[3] == nil then
		target:addTibiaCoins(count)
	else
		actionName = split[3]:gsub("^%s*(.-)$", "%1")
		
		if actionName == "add" then
			target:addTibiaCoins(count)
		elseif actionName == "remove" then
			target:removeTibiaCoins(count)
		elseif actionName == "set" then
			target:removeTibiaCoins(target:getTibiaCoins())
			target:addTibiaCoins(count)
		else
			target:sendCancelMessage("Wrong action type.")
			return false
		end
	end
	
	return true
end
 