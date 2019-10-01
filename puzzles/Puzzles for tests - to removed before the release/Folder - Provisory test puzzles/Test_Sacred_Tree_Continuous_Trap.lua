--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--[[message
Puzzle to test continuous traps and their changes due to how the core works now.
]]
--Monster Zones
Debug.AddCard(7304544,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(17285476,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(17285476,0,0,LOCATION_DECK,3,10)
Debug.AddCard(7304544,0,0,LOCATION_DECK,3,10)
--Spell & Trap Zones
Debug.AddCard(3734202,0,0,LOCATION_SZONE,1,10)
Debug.AddCard(19230407,0,0,LOCATION_HAND,1,10)
Debug.AddCard(19230407,0,0,LOCATION_HAND,1,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()