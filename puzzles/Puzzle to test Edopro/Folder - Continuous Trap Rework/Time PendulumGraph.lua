--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Monster Zones
Debug.AddCard(48461764,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(48461764,0,0,LOCATION_MZONE,1,1,true)
--Spell & Trap Zones
Debug.AddCard(1344018,0,0,LOCATION_SZONE,1,10)
Debug.AddCard(1344018,0,0,LOCATION_SZONE,2,5)
--Monster Zones
Debug.AddCard(75878039,1,1,LOCATION_MZONE,3,1,true)
Debug.AddCard(75878039,1,1,LOCATION_MZONE,1,1,true)
Debug.AddCard(75878039,1,1,LOCATION_MZONE,2,1,true)
Debug.ReloadFieldEnd()
