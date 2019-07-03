--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Monster Zones
Debug.AddCard(10443957,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(58069384,0,0,LOCATION_MZONE,1,1,true)
--Extra Deck
Debug.AddCard(1546123,0,0,LOCATION_EXTRA,0,8)
--Spell & Trap Zones
Debug.AddCard(69176131,1,1,LOCATION_SZONE,2,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()