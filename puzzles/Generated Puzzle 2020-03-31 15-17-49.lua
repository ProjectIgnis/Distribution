--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(2948263,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(39695323,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(39695323,0,0,LOCATION_MZONE,1,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()