local startSnowBalling = false

local blizzard = true
local chanceOfSnow = 25
local velocity_bliz = {0, -10000}

local existingCloud = 0
local allSnow = {}

function onUpdatePost(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)
    if startSnowBalling and getRandomBool(chanceOfSnow) then
        existingCloud = existingCloud + 1
        table.insert(allSnow, existingCloud)
        makeLuaSprite('cloudParticles' .. existingCloud, 'bgs/giggad/cloud1', -getProperty('camGame.width') / 2 * 1.2, getProperty('boyfriend.y') + 750)
        setProperty('cloudParticles' .. existingCloud .. '.x', getProperty('cloudParticles' .. existingCloud .. '.x') + getRandomInt(-100, 10000))
        setProperty('cloudParticles' .. existingCloud .. '.velocity.y', 500)
        setProperty('cloudParticles' .. existingCloud .. '.scale.x', 3)
        setProperty('cloudParticles' .. existingCloud .. '.scale.y', 3)
        setProperty('cloudParticles' .. existingCloud .. '.alpha', 0.5)
        setProperty('cloudParticles' .. existingCloud .. '.angle', 0 - 30 * math.cos((currentBeat2*0.2)*math.pi))
        playAnim('cloudParticles' .. existingCloud, 'snow' .. getRandomInt(1, 6))
        addLuaSprite('cloudParticles' .. existingCloud, true)

        if not blizzard then
            if getRandomBool(50) then
                setProperty('cloudParticles' .. existingCloud .. '.velocity.x', 100)
            else
                setProperty('cloudParticles' .. existingCloud .. '.velocity.x', -100)
            end
        else
            setProperty('cloudParticles' .. existingCloud .. '.x', getProperty('cloudParticles' .. existingCloud .. '.x') + getRandomInt(-10000, 10000))
            setProperty('cloudParticles' .. existingCloud .. '.velocity.x', velocity_bliz[1] * math.cos((currentBeat2*0.2)*math.pi))
            setProperty('cloudParticles' .. existingCloud .. '.velocity.y', velocity_bliz[2])
        end
    end

    for i = 1, #allSnow do
        if luaSpriteExists('cloudParticles' .. allSnow[i]) then
            if getProperty('cloudParticles' .. allSnow[i] .. '.y') < getProperty('boyfriend.y') - 1250 then
                removeLuaSprite('cloudParticles' .. allSnow[i], true) -- this method is insufficient! make existingCloud an array? (it probably is sufficient, i dont think so)
                --allSnow[i] = nil --breaks array
                table.remove(allSnow, 1)
                table.sort(allSnow)
            end
        end
    end
end

function onBeatHit()

    if curBeat == 108 then
        
        startSnowBalling = true

    end

    if curBeat == 172 then
        
        startSnowBalling = false

    end

    if curBeat == 480 then
        
        startSnowBalling = true

    end

    if curBeat == 548 then
        
        startSnowBalling = false

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