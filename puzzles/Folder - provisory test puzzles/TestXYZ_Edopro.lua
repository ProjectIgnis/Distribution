--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(56910167,0,0,LOCATION_EXTRA,0,8)
--Monster Zones
Debug.AddCard(18940556,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(78202553,0,0,LOCATION_MZONE,3,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()