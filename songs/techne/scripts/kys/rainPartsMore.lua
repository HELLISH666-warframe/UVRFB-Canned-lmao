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
        makeAnimatedLuaSprite('snowParticles2' .. existingSnow, 'bgs/bloodsheddside/rainParticles', -getProperty('camGame.width') / 2 * 1.2, getProperty('boyfriend.y') - 2000)
        for i = 1, 6 do
            addAnimationByPrefix('snowParticles2' .. existingSnow, 'snow' .. i, 'snow' .. i, 24, true)
        end
        setProperty('snowParticles2' .. existingSnow .. '.x', getProperty('snowParticles2' .. existingSnow .. '.x') + getRandomInt(-100, 10000))
        scaleObject('snowParticles2' .. existingSnow, 5 + getRandomInt(0, 2), 5 + getRandomInt(0, 2))
        setProperty('snowParticles2' .. existingSnow .. '.velocity.y', 500)
        setProperty('snowParticles2' .. existingSnow .. '.scale.x', 10)
        setProperty('snowParticles2' .. existingSnow .. '.scale.y', 10)
        setProperty('snowParticles2' .. existingSnow .. '.angle', 0 - 30 * math.cos((currentBeat2*0.2)*math.pi))
        setProperty('snowParticles2' .. existingSnow .. '.antialiasing', false)
        playAnim('snowParticles2' .. existingSnow, 'snow' .. getRandomInt(1, 6))
        addLuaSprite('snowParticles2' .. existingSnow, true)

        if not blizzard then
            if getRandomBool(50) then
                setProperty('snowParticles2' .. existingSnow .. '.velocity.x', 100)
            else
                setProperty('snowParticles2' .. existingSnow .. '.velocity.x', -100)
            end
        else
            setProperty('snowParticles2' .. existingSnow .. '.x', getProperty('snowParticles2' .. existingSnow .. '.x') + getRandomInt(-10000, 10000))
            setProperty('snowParticles2' .. existingSnow .. '.velocity.x', velocity_bliz[1] * math.cos((currentBeat2*0.2)*math.pi))
            setProperty('snowParticles2' .. existingSnow .. '.velocity.y', velocity_bliz[2])
        end
    end

    for i = 1, #allSnow do
        if luaSpriteExists('snowParticles2' .. allSnow[i]) then
            if getProperty('snowParticles2' .. allSnow[i] .. '.y') > 1000 then
                removeLuaSprite('snowParticles2' .. allSnow[i], true) -- this method is insufficient! make existingSnow an array? (it probably is sufficient, i dont think so)
                --allSnow[i] = nil --breaks array
                table.remove(allSnow, 1)
                table.sort(allSnow)
            end
        end
    end

    if curBeat == 104 then
        
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