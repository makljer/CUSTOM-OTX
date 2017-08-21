
function getAccountStorageValue(accid, key)
	local resultValue = db.storeQuery(string.format("SELECT `value` FROM `account_storage` WHERE `account_id` = %d AND `key` = %d LIMIT 1", accid, key))
	
	if resultValue == false then
		return nil
	end
	
	local value = result.getDataInt(resultValue, "value")
	result.free(resultValue)
	
	return value
end

function setAccountStorageValue(accid, key, value)
	
	local resultValue = db.storeQuery(string.format("SELECT `value` FROM `account_storage` WHERE `account_id` = %d AND `key` = %d LIMIT 1", accid, key))
	
	if resultValue == false then
		db.query(string.format("INSERT INTO `account_storage` (`account_id`, `key`, `value`) VALUES (%d, %d, %d)", accid, key, value))
	else
		db.query(string.format("UPDATE `account_storage` SET `key` = %d, `value` = %d WHERE `account_id` = %d", key, value, accid))
	end
	
	result.free(resultValue)
end

function Player.getAccountStorageValue(self, key)
	return getAccountStorageValue(self:getAccountId(), key)
end

function Player.setAccountStorageValue(self, key, value)
	setAccountStorageValue(self:getAccountId(), key, value)
end