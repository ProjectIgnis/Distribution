--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)
--[[message
	Problems with cards with continuous effects to decrease the ammount of tributes
]]
--Hand
Debug.AddCard(18993198,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(45960523,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(20720928,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(44088292,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(86585274,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(50756327,0,0,LOCATION_MZONE,5,1,true)
Debug.AddCard(55100740,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(55100740,0,0,LOCATION_MZONE,2,1,true)
--Spell & Trap Zones
Debug.AddCard(65959844,0,0,LOCATION_SZONE,5,5)
--Spell & Trap Zones
Debug.AddCard(17626381,1,1,LOCATION_SZONE,2,5)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()