--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,3)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(7868571,0,0,LOCATION_EXTRA,0,5)
Debug.AddCard(7868571,0,0,LOCATION_EXTRA,0,5)
Debug.AddCard(7868571,0,0,LOCATION_EXTRA,0,5)
Debug.AddCard(7868571,0,0,LOCATION_EXTRA,0,5)
Debug.AddCard(7868571,0,0,LOCATION_EXTRA,0,5)
--Hand
Debug.AddCard(31531170,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69351984,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Spell & Trap Zones
Debug.AddCard(29724053,0,0,LOCATION_SZONE,2,10)
--Debug.AddCard(7868571,0,0,LOCATION_PZONE,1,5)
Debug.AddCard(69351984,0,0,LOCATION_PZONE,0,5)
--Spell & Trap Zones
Debug.AddCard(7868571,1,1,LOCATION_PZONE,0,5)
Debug.AddCard(69351984,1,1,LOCATION_PZONE,1,5)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()