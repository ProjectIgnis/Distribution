
Debug.SetAIName("Non Player Character - WCS 2006")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,600,0,0)
Debug.SetPlayerInfo(1,7000,0,0)


--[[message
Reproduces a Duel Puzzle from "Ultimate Masters: World Championship 2006", using Dark World monsters.
	
	
	Your Starting LP: 600
	Opponent's Starting LP: 7000
	Complexity: 2/10.
	Objective: Win this turn.
]]


Debug.AddCard(07459013,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(32619583,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(33731070,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(78004197,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(79126789,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(05498296,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(15150365,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK)

Debug.AddCard(41142615,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("Win this turn")
aux.BeginPuzzle()