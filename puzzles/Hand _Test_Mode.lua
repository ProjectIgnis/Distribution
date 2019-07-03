Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN,4)
Debug.SetPlayerInfo(0,8000,0,1)
Debug.SetPlayerInfo(1,8000,0,0)
Debug.SetAIName("Test")
--[[message
	-Puzzle to test test hands.
	-Activate the banished Morinphen to reset and draw a new test hand.
	-You can pass turn safely to draw a 6th card or Normal Summon again.
]]

--[[
	Needs a way to allow deck selection first
--]]
local io = require "io"
local f = io.open("deck/Trickstars.ydk", "r")
local c
if f then
    for line in io.lines("deck/Trickstars.ydk") do
        if tonumber(line) then
            Debug.AddCard(line,0,0,LOCATION_DECK,0,POS_FACEDOWN_DEFENSE)
        end
    end
end


--The Morinphen Button
local morinphen = Debug.AddCard(55784832, 0, 0, LOCATION_REMOVED, 0, POS_FACEUP)
--Draw new hand
local e1 = Effect.CreateEffect(morinphen)
e1:SetType(EFFECT_TYPE_IGNITION)
e1:SetRange(LOCATION_REMOVED)
e1:SetOperation(
    function(e, tp)
        local g = Duel.GetMatchingGroup(nil, tp, 0xff, 0, e:GetHandler())
        Duel.SendtoDeck(g, nil, 0, REASON_COST)
        Duel.ShuffleDeck(tp)
        Duel.BreakEffect()
        Duel.Draw(tp, 5, REASON_RULE)
        Duel.SetLP(0, 8000)
        Duel.SetLP(1, 8000)
    end
)
morinphen:RegisterEffect(e1)
--Unaffected (to stay banished)
local e2 = Effect.CreateEffect(morinphen)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetProperty(EFFECT_FLAG_SINGLE_RANGE + EFFECT_FLAG_CANNOT_DISABLE)
e2:SetRange(LOCATION_REMOVED)
e2:SetCode(EFFECT_IMMUNE_EFFECT)
e2:SetValue(1)
morinphen:RegisterEffect(e2)
--Skip opponent's turn
local e3 = Effect.CreateEffect(morinphen)
e3:SetType(EFFECT_TYPE_FIELD)
e3:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
e3:SetCode(EFFECT_SKIP_TURN)
e3:SetTargetRange(0, 1)
Duel.RegisterEffect(e3, tp)

Debug.ReloadFieldEnd()
