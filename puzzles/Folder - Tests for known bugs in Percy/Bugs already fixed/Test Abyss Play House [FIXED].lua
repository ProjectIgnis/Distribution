--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
	--[[message
	Pendulum Summon an Abyss Actor, then pass turn and use Soul Charge
	]]
--Hand
Debug.AddCard(15308295,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24907044,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(9156135,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(77297908,0,0,LOCATION_SZONE,5,5)
Debug.AddCard(7279373,0,0,LOCATION_PZONE,1,5)
--Main Deck
Debug.AddCard(59975920,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59975920,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59975920,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59975920,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(59975920,1,1,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(54447022,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(30914564,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(9156135,1,1,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(7868571,1,1,LOCATION_PZONE,1,5)
Debug.AddCard(18716735,1,1,LOCATION_PZONE,0,5)


Debug.AddCard(41091257,1,1,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(9156135,1,1,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
