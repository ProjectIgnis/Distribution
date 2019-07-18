--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(42589641,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(62517849,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(2857636,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(63504681,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(10443957,0,0,LOCATION_EXTRA,0,8)
--Monster Zones
Debug.AddCard(75878039,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(38667773,0,0,LOCATION_MZONE,3,1,true)
Debug.AddCard(2273734,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(58069384,0,0,LOCATION_MZONE,4,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()