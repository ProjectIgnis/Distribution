--Created using senpaizuri's Puzzle Maker (updated by Naim)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Monster Zones
Debug.AddCard(39185163,0,0,LOCATION_MZONE,2,1,true)
--Spell & Trap Zones
Debug.AddCard(4064256,0,0,LOCATION_SZONE,5,5)
--Main Deck
Debug.AddCard(21441617,1,1,LOCATION_DECK,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(57835716,1,1,LOCATION_GRAVE,2,1,true)
Debug.AddCard(90351981,1,1,LOCATION_SZONE,5,5)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()