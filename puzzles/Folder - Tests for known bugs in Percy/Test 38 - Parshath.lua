Debug.ReloadFieldBegin(DUEL_TEST_MODE,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--[[message

]]

Debug.AddCard(16261341,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK) --Parshath

Debug.AddCard(49010598,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Wrath
Debug.AddCard(98069388,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Horn

Debug.AddCard(16261341,0,0,LOCATION_HAND,0,POS_FACEUP) --Parshath

Debug.AddCard(87774234,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87774234,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87774234,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(87774234,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(63977008,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(9365703,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(41456841,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)

Debug.AddCard(60800381,1,1,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()