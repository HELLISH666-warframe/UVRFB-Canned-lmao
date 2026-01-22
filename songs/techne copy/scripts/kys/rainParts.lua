local startSnowBalling = false

local blizzard = true
local chanceOfSnow = 10000
local velocity_bliz = {3000, 5000}

local existingSnow = 0
local allSnow = {}

function onUpdatePost(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)
    if startSnowBalling and getRandomBool(chanceOfSnow) then
        existingSnow = existingSnow + 1
        table.insert(allSnow, existingSnow)
        makeAnimatedLuaSprite('snowParticles' .. existingSnow, 'bgs/bloodsheddside/rainParticles', -getProperty('camGame.width') / 2 * 1.2, getProperty('boyfriend.y') - 1250)
        for i = 1, 6 do
            addAnimationByPrefix('snowParticles' .. existingSnow, 'snow' .. i, 'snow' .. i, 24, true)
        end
        setProperty('snowParticles' .. existingSnow .. '.x', getProperty('snowParticles' .. existingSnow .. '.x') + getRandomInt(-100, 10000))
        scaleObject('snowParticles' .. existingSnow, 5 + getRandomInt(0, 2), 5 + getRandomInt(0, 2))
        setProperty('snowParticles' .. existingSnow .. '.velocity.y', 500)
        setProperty('snowParticles' .. existingSnow .. '.scale.x', 10)
        setProperty('snowParticles' .. existingSnow .. '.scale.y', 10)
        setProperty('snowParticles' .. existingSnow .. '.angle', 0 - 30 * math.cos((currentBeat2*0.2)*math.pi))
        setProperty('snowParticles' .. existingSnow .. '.antialiasing', false)
        playAnim('snowParticles' .. existingSnow, 'snow' .. getRandomInt(1, 6))
        addLuaSprite('snowParticles' .. existingSnow, true)

        if not blizzard then
            if getRandomBool(50) then
                setProperty('snowParticles' .. existingSnow .. '.velocity.x', 100)
            else
                setProperty('snowParticles' .. existingSnow .. '.velocity.x', -100)
            end
        else
            setProperty('snowParticles' .. existingSnow .. '.x', getProperty('snowParticles' .. existingSnow .. '.x') + getRandomInt(-10000, 10000))
            setProperty('snowParticles' .. existingSnow .. '.velocity.x', velocity_bliz[1] * math.cos((currentBeat2*0.2)*math.pi))
            setProperty('snowParticles' .. existingSnow .. '.velocity.y', velocity_bliz[2])
        end
    end

    for i = 1, #allSnow do
        if luaSpriteExists('snowParticles' .. allSnow[i]) then
            if getProperty('snowParticles' .. allSnow[i] .. '.y') > 700 then
                removeLuaSprite('snowParticles' .. allSnow[i], true) -- this method is insufficient! make existingSnow an array? (it probably is sufficient, i dont think so)
                --allSnow[i] = nil --breaks array
                table.remove(allSnow, 1)
                table.sort(allSnow)
            end
        end
    end

    if curBeat == 36 then
        
        startSnowBalling = true

    end

end

function onEvent(eventName, value1, value2)
    if eventName == 'Enable Snow' then
        if not value1 or not value2 then
            value1 = 'false'
            value2 = 50
        end

        if value1 == 'true' then
            startSnowBalling = true
        elseif value1 == 'false' then
            startSnowBalling = false
        end

        chanceOfSnow = tonumber(value2)
    end

    if eventName == 'Snow Blizzard' then
        if not value1 or not value2 then
            value1 = 'false'
            value2 = '500, 500'
        end

        if value1 == 'true' then
            blizzard = true
        elseif value1 == 'false' then
            blizzard = false
        end

        if value2 then
            local splitValue2 = stringSplit(value2, ', ')
            velocity_bliz = {tonumber(splitValue2[1]), tonumber(splitValue2[2])}
        end
    end
end