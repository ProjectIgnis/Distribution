--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Monster Zones
Debug.AddCard(75878039,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(91718579,0,0,LOCATION_HAND,1,1)
--Spell & Trap Zones
Debug.AddCard(53334471,0,0,LOCATION_SZONE,1,5)
Debug.ReloadFieldEnd()
