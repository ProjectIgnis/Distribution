Debug.ReloadFieldBegin(DUEL_TEST_MODE,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

Debug.AddCard(14558127,0,0,LOCATION_HAND,0,POS_FACEUP) --Ash

Debug.AddCard(14558127,0,0,LOCATION_MZONE,0,POS_FACEUP_DEFENSE) --Ash
Debug.AddCard(81210420,0,0,LOCATION_SZONE,0,POS_FACEDOWN) --Hats
Debug.AddCard(84749824,0,0,LOCATION_SZONE,1,POS_FACEDOWN) --Warning

Debug.AddCard(81210420,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Hats
Debug.AddCard(81210420,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Hats

Debug.ReloadFieldEnd()