--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(41927278,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(13317419,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(29552709,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(336369,0,0,LOCATION_MZONE,3,1,true)
--Monster Zones
Debug.AddCard(69327790,1,1,LOCATION_MZONE,2,1,true)
Debug.ReloadFieldEnd()
