
function onLogin(player)
	local coins = 5
	local lastCoins = getAccountStorageValue(player:getAccountId(), 1)
	
	if lastCoins == nil or lastCoins == 0 or os.difftime(lastCoins, os.time()) >= (24 * 60 * 60) then
		player:addTibiaCoins(coins)
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "You received" .. coins .. " coins. Next in 24 hours")
		setAccountStorageValue(player:getAccountId(), 1, now)		
	end
	
	local now = os.time()
	
	local nextCoins = os.difftime(lastCoins + 24 * 60 * 60, now) / (60 * 60)
	player:sendTextMessage(MESSAGE_EVENT_DEFAULT, string.format("Next tibia coins in %d hours", nextCoins))
	
	return true
end