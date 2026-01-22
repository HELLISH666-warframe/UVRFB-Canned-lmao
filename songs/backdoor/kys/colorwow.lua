Chromacrap = 0;

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end
function math.lerp(from,to,i)return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader", "rOffset", chromeOffset * -1);
    setShaderFloat("temporaryShader", "gOffset", 0.0);
    setShaderFloat("temporaryShader", "bOffset", chromeOffset);
end

function onBeatHit()

    if curBeat == 192 then
        runTimer('bug2', 0.5)
    end

    if curBeat == 320 then
        runTimer('quickbug2', math.random(0.1, 0.25))
    end

end

function onCreatePost()
    luaDebugMode = true
    initLuaShader("vcr")
    
    makeLuaSprite("temporaryShader")
    makeGraphic("temporaryShader", screenWidth, screenHeight)
    
    setSpriteShader("temporaryShader", "vcr")
    
    addHaxeLibrary("ShaderFilter", "openfl.filters")
    runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
    ]])
end

function onUpdate(elapsed)
    if Chromacrap > 100000.0025 then
        Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed * 10, 0, 1))
    end
    setChrome(Chromacrap)
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'bug2' then

        if curBeat >= 192 and curBeat < 320 then
            runTimer('bug2', math.random(0.5, 3))
            runTimer('resetbug2', 0.05)
            Chromacrap = math.random(0.005, 0.01)
        end

    end

    if tag == 'quickbug2' then

        if curBeat >= 320 and curBeat < 448 then
            runTimer('quickbug2', math.random(0.1, 0.25))
            runTimer('resetbug2', 0.05)
            Chromacrap = math.random(0.01, 0.03)
        end

    end

    if tag == 'resetbug2' then

        Chromacrap = 0

    end

end