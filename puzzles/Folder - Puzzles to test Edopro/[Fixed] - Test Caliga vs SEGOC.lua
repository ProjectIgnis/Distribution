--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(56343672,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Extra Deck
Debug.AddCard(2857636,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(27551,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(13529466,0,0,LOCATION_MZONE,1,4,true)
Debug.AddCard(10158145,0,0,LOCATION_MZONE,3,1,true)
Debug.AddCard(12307878,0,0,LOCATION_MZONE,4,1,true)
--Spell & Trap Zones
Debug.AddCard(38120068,1,1,LOCATION_SZONE,2,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()