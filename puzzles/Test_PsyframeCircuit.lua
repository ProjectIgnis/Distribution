--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(74586817,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(74586817,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(74586817,0,0,LOCATION_EXTRA,0,8)
Debug.AddCard(74586817,0,0,LOCATION_EXTRA,0,8)
--GY
Debug.AddCard(49036338,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(49036338,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(49036338,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Monster Zones
Debug.AddCard(74997493,0,0,LOCATION_MZONE,5,1,true)
Debug.AddCard(38814750,0,0,LOCATION_MZONE,0,1,true)
Debug.AddCard(38814750,0,0,LOCATION_MZONE,1,1,true)
--Spell & Trap Zones
Debug.AddCard(575512,0,0,LOCATION_SZONE,5,5)

Debug.AddCard(59919307,0,0,LOCATION_SZONE,1,10)
Debug.AddCard(59919307,0,0,LOCATION_SZONE,4,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()