_name = name player;
if ((_name find "[41" != -1) or (_name find "ARF" != -1)) then 
{
    _StealthTimer = player getVariable ["StealthTimer", 0];
    if (time > _StealthTimer) then
    {
        player setUnitTrait ["audibleCoef", 0.025];
        player setUnitTrait ["camouflageCoef", 0.025];
        _StealthTimer = time + 900;
        player setVariable ["StealthTimer", _StealthTimer];
        sleep 900;
        player setUnitTrait ["audibleCoef", 1];
        player setUnitTrait ["camouflageCoef", 1];
        player setVariable ["StealthTimer", time + 180];
    };
};