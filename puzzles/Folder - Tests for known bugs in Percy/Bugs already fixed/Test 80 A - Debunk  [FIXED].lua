--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(12580477,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Spell & Trap Zones
Debug.AddCard(65703851,0,0,LOCATION_SZONE,1,10)
--Main Deck
Debug.AddCard(83293307,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(51205763,1,1,LOCATION_DECK,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(88316955,1,1,LOCATION_MZONE,2,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()