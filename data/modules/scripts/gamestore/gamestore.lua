-- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config
GameStore.Categories = {
	{
		name = "New Products",
		state = GameStore.States.STATE_NEW,
		icons = {"New_Products.png"},
		offers = {
			-- Addon Example : thingId = lookType, addon = ( 1 = addon 1, 2 = addon 2, 3 = both addons)
			{name = "Grove Keeper", thingId = {male=908,female=909}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f909.png", "f908.png"}},
			{name = "Festive Outfit", thingId = {male=931,female=929}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 800, icons = {"f931.png", "f929.png"}},
			{name = "Pharaoh", thingId = {male=955,female=956}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f955.png", "f956.png"}},

			-- Mount Example : thingId = mountId
			{name = "Jackalope", thingId = 103, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o905.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Dreadhare", thingId = 104, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o906.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Wolpertinger", thingId = 105, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o907.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Stone Rhino", thingId = 106, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1500, icons = {"o937.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Gold Sphinx", thingId = 107, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o950.png"}, description = "Here you can purchase the Mount for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Emerald Sphinx", thingId = 108, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o951.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shadow Sphinx", thingId = 109, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o952.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			--{name = "Elephant", thingId = 107, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1, icons = {"o937.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
		}
	},

	{
		name = "Overcharged items",
		state = GameStore.States.STATE_NEW,
		icons = {"New_Products.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Blade of Carving Overcharged", thingId = 26270, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 180, icons = {"25192.png"}, description = "Sword Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Blade of Mayhem Overcharged", thingId = 26235, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 180, icons = {"25193.png"}, description = "Sword Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Blade of Remedy Overcharged", thingId = 26256, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 180, icons = {"25191.png"}, description = "Sword Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Slayer of Carving Overcharged", thingId = 26277, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 180, icons = {"25190.png"}, description = "Sword Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Slayer of Mayhem Overcharged", thingId = 26238, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18390.png"}, description = "Sword Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Slayer of Remedy Overcharged", thingId = 26260, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"8918.png"}, description = "Sword Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Axe of Carving Overcharged", thingId = 26284, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Axe of Mayhem Overcharged", thingId = 26241, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Axe of Remedy Overcharged", thingId = 26267, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Chopper of Carving Overcharged", thingId = 26293, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Chopper of Mayhem Overcharged", thingId = 26244, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Chopper of Remedy Overcharged", thingId = 26273, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Axe Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Hammer of Carving Overcharged", thingId = 26305, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Hammer of Mayhem Overcharged", thingId = 26250, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Hammer of Remedy Overcharged", thingId = 26283, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Mace of Carving Overcharged", thingId = 26300, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Mace of Mayhem Overcharged", thingId = 26247, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Mace of Remedy Overcharged", thingId = 26278, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Club Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Rod of Carving Overcharged", thingId = 26317, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Magic Level +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Rod of Mayhem Overcharged", thingId = 26323, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "	Magic Level +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Rod of Remedy Overcharged", thingId = 26302, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Magic Level +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Wand of Carving Overcharged", thingId = 26314, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Magic Level +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Wand of Mayhem Overcharged", thingId = 26320, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "	Magic Level +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Wand of Remedy Overcharged", thingId = 26297, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Magic Level +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Bow of Carving Overcharged", thingId = 26308, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Bow of Mayhem Overcharged", thingId = 26254, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Bow of Remedy Overcharged", thingId = 26288, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Carving Overcharged", thingId = 26311, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Mayhem Overcharged", thingId = 26268, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Remedy Overcharged", thingId = 26292, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"18409.png"}, description = "Become rich!"},
			
		
		}
	},

	{
		name = "Mounts",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Mounts.png"},
		offers = {
			-- Mount Example : thingId = mountId
			{name = "Widow Queen", thingId = 1, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o368.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Racing Bird", thingId = 2, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o369.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "War Bear", thingId = 3, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o370.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Black Sheep", thingId = 4, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 700, icons = {"o371.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Midnight Panther", thingId = 5, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o372.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Draptor", thingId = 6, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o373.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Titanica", thingId = 7, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o374.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tin Lizzard", thingId = 8, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o375.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Blazebringer", thingId = 9, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o376.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Rapid Boar", thingId = 10, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o377.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Stampor", thingId = 11, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o378.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Undead Cavebear", thingId = 12, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o379.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Donkey", thingId = 13, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 400, icons = {"o387.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tiger Slug", thingId = 14, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o388.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Uniwheel", thingId = 15, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o389.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Crystal Wolf", thingId = 16, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o390.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "War Horse", thingId = 17, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o392.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Kingly Deer", thingId = 18, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o401.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tamed Panda", thingId = 19, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 400, icons = {"o402.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Dromedary", thingId = 20, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o405.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Scorpion King", thingId = 21, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o406.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Armoured War Horse", thingId = 23, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o426.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shadow Draptor", thingId = 24, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1200, icons = {"o427.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Ladybug", thingId = 27, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o447.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Manta Ray", thingId = 28, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o450.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Ironblight", thingId = 29, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o502.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Magma Crawler", thingId = 30, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1200, icons = {"o503.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Dragonling", thingId = 31, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1200, icons = {"o506.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Gnarlhound", thingId = 32, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 800, icons = {"o515.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Crimson Ray", thingId = 33, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o521.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Steelbeak", thingId = 34, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o522.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Water Buffalo", thingId = 35, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 500, icons = {"o526.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tombstinger", thingId = 36, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o546.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Platesaurian", thingId = 37, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o547.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Ursagrondon", thingId = 38, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o548.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "The Hellgrip", thingId = 39, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o559.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Noble Lion", thingId = 40, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 700, icons = {"o571.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Desert King", thingId = 41, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o572.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shock Head", thingId = 42, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o580.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Walker", thingId = 43, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o606.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Azudocus", thingId = 44, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o621.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Carpacosaurus", thingId = 45, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o622.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Death Crawler", thingId = 46, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o624.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Flamesteed", thingId = 47, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o626.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Jade Lion", thingId = 48, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o627.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Jade Pincer", thingId = 49, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o628.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Nethersteed", thingId = 50, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o629.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tempest", thingId = 51, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"Product_Mount_Tempest.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Winter King", thingId = 52, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o631.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Doombringer", thingId = 53, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o644.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Woodland Prince", thingId = 54, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o647.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Hailtorm Fury", thingId = 55, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o648.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Siegebreaker", thingId = 56, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o649.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Poisonbane", thingId = 57, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o650.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Blackpelt", thingId = 58, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o651.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Golden Dragonfly", thingId = 59, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o669.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Steel Bee", thingId = 60, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o670.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Copper Fly", thingId = 61, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o671.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Tundra Rambler", thingId = 62, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o672.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Highland Yak", thingId = 63, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o673.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Glacier Vagabond", thingId = 64, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o674.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Flying Divan", thingId = 65, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o688.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Magic Carpet", thingId = 66, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o689.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Floating Kashmir", thingId = 67, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1250, icons = {"o690.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Ringtail Waccoon", thingId = 68, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o691.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Night Waccoon", thingId = 69, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o692.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Emerald Waccoon", thingId = 70, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o693.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Glooth Glider", thingId = 71, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o682.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shadow Hart", thingId = 72, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o685.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Black Stag", thingId = 73, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o686.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Emperor Deer", thingId = 74, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o687.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Flitterkatzen", thingId = 75, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o726.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Venompaw", thingId = 76, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o727.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Batcat", thingId = 77, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o728.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Sea Devil", thingId = 78, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o734.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Coralripper", thingId = 79, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o735.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Plumfish", thingId = 80, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o736.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Gorongra", thingId = 81, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o738.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Noctungra", thingId = 82, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o739.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Silverneck", thingId = 83, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o740.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Slagsnare", thingId = 84, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o761.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Nightstinger", thingId = 85, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o762.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Razorcreep", thingId = 86, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o763.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Rift Runner", thingId = 87, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o848.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Nightdweller", thingId = 88, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o849.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Frostflare", thingId = 89, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o850.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Cinderhoof", thingId = 90, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o851.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Mouldpincer", thingId = 91, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o868.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Bloodcurl", thingId = 92, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o869.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Leafscuttler", thingId = 93, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o870.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Sparkion", thingId = 94, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o883.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Swamp Snapper", thingId = 95, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o886.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Mould Shell", thingId = 96, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o887.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Reed Lurker", thingId = 97, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o888.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Neon Sparkid", thingId = 98, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o889.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Vortexion", thingId = 99, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o890.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Ivory Fang", thingId = 100, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o901.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shadow Claw", thingId = 101, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o902.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Snow Pelt", thingId = 102, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1000, icons = {"o903.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
		}
	},

	{
		name = "Outfits",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Outfits.png"},
		offers = {
			{name = "Entrepreneur", thingId = {male=472,female=471}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f472.png", "f471.png"}},
			{name = "Jersey", thingId = {male=619,female=620}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 800, icons = {"f619.png", "f620.png"}},
			{name = "Champion", thingId = {male=633,female=632}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f633.png", "f632.png"}},
			{name = "Conjurer", thingId = {male=634,female=635}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f634.png", "f635.png"}},
			{name = "Beastmaster", thingId = {male=637,female=636}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f637.png", "f636.png"}},
			{name = "Chaos Acolyte", thingId = {male=665,female=664}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f665.png", "f664.png"}},
			{name = "Death Herald", thingId = {male=667,female=666}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f667.png", "f666.png"}},
			{name = "Ranger", thingId = {male=684,female=683}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f684.png", "f683.png"}},
			{name = "Ceremonial Garb", thingId = {male=695,female=694}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f695.png", "f694.png"}},
			{name = "Puppeteer", thingId = {male=697,female=696}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f697.png", "f696.png"}},
			{name = "Spirit Caller", thingId = {male=699,female=698}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f699.png", "f698.png"}},
			{name = "Evoker", thingId = {male=725,female=724}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f725.png", "f724.png"}},
			{name = "Seaweaver", thingId = {male=733,female=732}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f733.png", "f732.png"}},
			{name = "Recruiter", thingId = {male=746,female=745}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f746.png", "f745.png"}},
			{name = "Sea Dog", thingId = {male=750,female=749}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 800, icons = {"f750.png", "f749.png"}},
			{name = "Royal Pumpkin", thingId = {male=760,female=759}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f760.png", "f759.png"}},
			{name = "Rift Warrior", thingId = {male=846,female=845}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f846.png", "f845.png"}},
			{name = "Winter Warden", thingId = {male=853,female=852}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1200, icons = {"f853.png", "f852.png"}},
			{name = "Philosopher", thingId = {male=874,female=873}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f874.png", "f873.png"}},
			{name = "Arena Champion", thingId = {male=884,female=885}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 1000, icons = {"f884.png", "f885.png"}},
		}
	},

	{
		name = "Items",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Items.png"},
		offers = {
		    {name = "Crystal coin", thingId = 2160, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 140, icons = {"Crystal_Coin.png"}, description = "Become rich!"},
			--Armorid--
			{name = "Demon Armor", thingId = 2494, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"Demon_Armor.png"}, description = "You see a demon armor (Arm:16)."},
			--Legsid--
			{name = "Demon Legs", thingId = 2495, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Demon_Legs.png"}, description = "You see demon legs (Arm:9)."},
			{name = "Dwarven Legs", thingId = 2504, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 500, icons = {"Dwarven_Legs.png"}, description = "You see dwarven legs (Arm:7, protection physical +3%)."},
			--Bootsid--
			{name = "Boots of Haste", thingId = 2195, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 75, icons = {"Boots_of_Haste.png"}, description = "Be faster!"},
			{name = "Pair Soft Boots", thingId = 2640, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 500, icons = {"Pair_of_Soft_Boots.png"}, description = "Regenerate your health and mana!"},
		}
	},

	{
		name = "Items for Sorcerers",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Sorc.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Royal Scale Robe", thingId = 12643, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Royal_Scale_Robe.png"}, description = "You see a royal scale robe (Arm:12, magic level +2, protection fire +5%)."},
			{name = "Yalahari Mask", thingId = 9778, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Yalahari_Mask.png"}, description = "You see a yalahari mask (Arm:5, magic level +2)."},
			{name = "Wand of Defiance", thingId = 18390, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18390.png"}, description = "You see a wand of defiance (magic level +1).It reveals devastating energy arcs."},
			{name = "Spelbook of Dark Mysteries", thingId = 8918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 250, icons = {"8918.png"}, description = "You see a spellbook of dark mysteries (Def:16, magic level +3). It shows your spells and can also shield against attacks when worn."},
			{name = "Wand of Everblazing", thingId = 18409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "You see a wand of everblazing (magic level +1).It contains the everblazing fire."},
		}
	},

	{
		name = "Items for Knights",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Knight.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Royal Draken Mail", thingId = 12642, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Royal_Draken_Mail.png"}, description = "You see a royal draken mail (Arm:16, shielding +3, protection physical +5%)."},
			{name = "Prismatic Helmet", thingId = 18403, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Prismatic_Helmet.png"}, description = "You see a prismatic helmet (Arm:9, shielding +1, protection physical +5%)."},
			{name = "Solar Axe", thingId = 8925, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 550, icons = {"8925.png"}, description = "You see a solar axe (Atk:52, Def:29 +3)."},
			{name = "Shiny Blade", thingId = 18465, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 550, icons = {"18465.png"}, description = "You see a shiny blade (Atk:50, Def:35 +3, sword fighting +1)."},
			{name = "Dark Trinity Mace", thingId = 8927, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 550, icons = {"8927.png"}, description = "You see a dark trinity mace (Atk:51, Def:32 -1)."},
		
		}
	},

	{
		name = "Items for Paladins",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Pally.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Master Acher's Armor", thingId = 8888, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 250, icons = {"Master_Archer's_Armor.png"}, description = "You see a master archer's armor (Arm:15, distance fighting +3)."},
			{name = "Elite Draken Helmet", thingId = 12645, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Elite_Draken_Helmet.png"}, description = "You see an elite draken helmet (Arm:9, distance fighting +1, protection death +3%)."},
			{name = "Royal Crossbow", thingId = 8851, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 400, icons = {"8851.png"}, description = "You see a royal crossbow (Range: 6, Atk +5, Hit% +3)"},
		}
	},

	{
		name = "Items for Druids",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Druid.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Royal Scale Robe", thingId = 12643, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Royal_Scale_Robe.png"}, description = "You see a royal scale robe (Arm:12, magic level +2, protection fire +5%)."},
			{name = "Yalahari Mask", thingId = 9778, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 300, icons = {"Yalahari_Mask.png"}, description = "You see a yalahari mask (Arm:5, magic level +2)."},
			{name = "Glacial Rod", thingId = 18412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18412.png"}, description = "You see a glacial rod (magic level +1). Hurls the icy essence of the Svargrond glaciers."},
			{name = "Muck Rod", thingId = 18411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18411.png"}, description = "You see a muck rod (magic level +1). A true staff of old, spitting slimy orbs."},
			{name = "Spelbook of Dark Mysteries", thingId = 8918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 250, icons = {"8918.png"}, description = "You see a spellbook of dark mysteries (Def:16, magic level +3). It shows your spells and can also shield against attacks when worn."},
		}
	},

	{
		name = "Equipment",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Equipment.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Whacking driller of fate", thingId = 9598, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 200, icons = {"9598.png"}, description = "Rope, shovel, pick, machete - everything in one!"},
			{name = "Zaoan chess box", thingId = 20620, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 250, icons = {"20620.png"}, description = "The best cointainer in the game, it has 32 slots."},
			{name = "backpack of holding", thingId = 2365, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 200, icons = {"2365.png"}, description = "Everyone know this backpack, it has 24 slots."},
			{name = "pillow backpack", thingId = 27049, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 150, icons = {"27049.png"}, description = "Cool looking backpack but with 18 slots."},
		}
	},

	{
		name = "Extra Services",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_ExtraServices.png"},
		offers = {
			-- NameChange example
			{name = "Character Name Change", type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE, price = 200, icons = {"Product_CharacterNameChange.png"}},
			-- Sexchange example
			{name = "Character Sex Change", type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE, price = 200, icons = {"Product_CharacterSexChange.png"}},
		}
	},
}

-- For Explanation and information
-- view the readme.md file in github or via markdown viewer.

-- Non-Editable
local runningId = 1
for k, category in ipairs(GameStore.Categories) do
	if category.offers then
		for m, offer in ipairs(category.offers) do
			offer.id = runningId
			runningId = runningId + 1
			
			if not offer.type then
				offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
			end
		end
	end
end
